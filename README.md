# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#include <stdio.h>
extern "C"
{
#include <libavformat/avformat.h>
}

int main()
{
printf("Proceeding to encode");
AVFormatContext* fmt_ctx = NULL;
int ret;
char* filename = "D:\\Youtube Videos\\Needs Edtiting\\2021-10-11_15-52-00.mp4";


	if ((ret = avformat_open_input(&fmt_ctx, filename, NULL, NULL)))
		return ret;

	if (ret = avformat_find_stream_info(fmt_ctx, NULL) < 0)
		return ret;
	
	for (int i = 0; i < fmt_ctx->nb_streams; i++)
	{
		av_dump_format(fmt_ctx, i, filename, false);
	}
	avformat_close_input(&fmt_ctx);
	system("Pause");
	return 0;
}
