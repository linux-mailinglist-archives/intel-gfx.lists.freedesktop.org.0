Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943D1458AFE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 10:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E011B6E113;
	Mon, 22 Nov 2021 09:03:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED29F6E0FC;
 Mon, 22 Nov 2021 09:03:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="221632792"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="221632792"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 01:03:40 -0800
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="508455611"
Received: from aalazizi-mobl1.amr.corp.intel.com (HELO [10.213.249.159])
 ([10.213.249.159])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 01:03:39 -0800
Message-ID: <88dca452-9cbb-b99f-0567-519c665736b1@linux.intel.com>
Date: Mon, 22 Nov 2021 09:03:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Petri Latvala <petri.latvala@intel.com>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
 <20211119125945.55056-3-tvrtko.ursulin@linux.intel.com>
 <YZesawet06wfQ1SG@platvala-desk.ger.corp.intel.com>
 <8b1bdb41-fe31-8482-655d-724a6937d2c7@linux.intel.com>
 <YZfFlI/cB2OyXZeE@platvala-desk.ger.corp.intel.com>
 <YZfIwtCEqbqs1dIz@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YZfIwtCEqbqs1dIz@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/6] igt/core: Fix build
 warning
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/11/2021 15:54, Petri Latvala wrote:
> On Fri, Nov 19, 2021 at 05:41:08PM +0200, Petri Latvala wrote:
>> On Fri, Nov 19, 2021 at 03:34:54PM +0000, Tvrtko Ursulin wrote:
>>> On 19/11/2021 13:53, Petri Latvala wrote:
>>>> On Fri, Nov 19, 2021 at 12:59:42PM +0000, Tvrtko Ursulin wrote:
>>> Okay I wasn't sufficiently focused while trying to fix this. No idea then
>>> apart for playing with pragmas.
> 
> 
> How's this:
> 
> diff --git a/lib/igt_core.c b/lib/igt_core.c
> index ec05535c..6a4d0270 100644
> --- a/lib/igt_core.c
> +++ b/lib/igt_core.c
> @@ -2727,6 +2727,8 @@ void igt_log(const char *domain, enum igt_log_level level, const char *format, .
>   }
>   
>   static pthread_key_t __vlog_line_continuation;
> +static const bool __dummy_true = true;
> +static const bool __dummy_false = false;
>   
>   igt_constructor {
>   	pthread_key_create(&__vlog_line_continuation, NULL);
> @@ -2751,6 +2753,7 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
>   	FILE *file;
>   	char *line, *formatted_line;
>   	char *thread_id;
> +	void *line_continuation;
>   	const char *program_name;
>   	const char *igt_log_level_str[] = {
>   		"DEBUG",
> @@ -2785,7 +2788,8 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
>   	if (vasprintf(&line, format, args) == -1)
>   		return;
>   
> -	if (pthread_getspecific(__vlog_line_continuation)) {
> +	line_continuation = pthread_getspecific(__vlog_line_continuation);
> +	if (line_continuation != NULL && *(bool *)line_continuation) {
>   		formatted_line = strdup(line);
>   		if (!formatted_line)
>   			goto out;
> @@ -2796,9 +2800,9 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
>   	}
>   
>   	if (line[strlen(line) - 1] == '\n')
> -		pthread_setspecific(__vlog_line_continuation, (void*) false);
> +		pthread_setspecific(__vlog_line_continuation, &__dummy_false);
>   	else
> -		pthread_setspecific(__vlog_line_continuation, (void*) true);
> +		pthread_setspecific(__vlog_line_continuation, &__dummy_true);
>   
>   	/* append log buffer */
>   	_igt_log_buffer_append(formatted_line);
> diff --git a/lib/igt_thread.c b/lib/igt_thread.c
> index 5bdda410..0d7bce80 100644
> --- a/lib/igt_thread.c
> +++ b/lib/igt_thread.c
> @@ -29,6 +29,7 @@
>   #include "igt_thread.h"
>   
>   static pthread_key_t __igt_is_main_thread;
> +static const bool __dummy_true = true;
>   
>   static _Atomic(bool) __thread_failed = false;
>   
> @@ -65,5 +66,5 @@ bool igt_thread_is_main(void)
>   
>   igt_constructor {
>   	pthread_key_create(&__igt_is_main_thread, NULL);
> -	pthread_setspecific(__igt_is_main_thread, (void*) 0x1);
> +	pthread_setspecific(__igt_is_main_thread, &__dummy_true);

LGTM.

Regards,

Tvrtko
