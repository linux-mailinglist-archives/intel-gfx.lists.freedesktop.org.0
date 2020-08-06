Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDEA23DB55
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 17:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E1F76E8CF;
	Thu,  6 Aug 2020 15:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF686E8CA;
 Thu,  6 Aug 2020 15:25:23 +0000 (UTC)
IronPort-SDR: w+7I38GaE+SDYab/Vhgx3g0TUa/QCYUHwD9Dx/fg4mGQ1q/XrBzOEH+cZErq45QQNvJOxWAybZ
 UpXkOcItfeYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="152788365"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="152788365"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 08:25:22 -0700
IronPort-SDR: scoR/mBxbhcnLeVlQF4kFsccuY8FsPFF6mDRfBkYyzc8/6nQNJvGo5bL51da5kGnigareBkkq1
 qhDqz/9keZaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="323462156"
Received: from salerno-mobl2.ger.corp.intel.com (HELO [10.252.62.160])
 ([10.252.62.160])
 by orsmga008.jf.intel.com with ESMTP; 06 Aug 2020 08:25:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200806151938.198105-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <cb0af5ae-3b90-8057-2b11-d787b6f2a3fe@intel.com>
Date: Thu, 6 Aug 2020 18:25:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200806151938.198105-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] syncobj_timeline: Tell the compiler
 to read from the thread
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 06/08/2020 18:19, Chris Wilson wrote:
> 32bits-limit waits for the thread to indicate it has started by busy
> spinning on a common variable. The compiler is clever and knows that the
> variable cannot change within the thread, and turns it into an infinite
> loop!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

> ---
>   tests/syncobj_timeline.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/tests/syncobj_timeline.c b/tests/syncobj_timeline.c
> index be7dd2d1c..20375cdd3 100644
> --- a/tests/syncobj_timeline.c
> +++ b/tests/syncobj_timeline.c
> @@ -1245,9 +1245,11 @@ test_32bits_limit(int fd)
>   	uint64_t value, last_value;
>   	int i;
>   
> -	igt_assert_eq(pthread_create(&thread, NULL, checker_thread_func, &thread_data), 0);
> +	igt_assert_eq(pthread_create(&thread, NULL,
> +				     checker_thread_func, &thread_data), 0);
>   
> -	while (!thread_data.started);
> +	while (!READ_ONCE(thread_data.started))
> +		;
>   
>   	for (i = 0; i < ARRAY_SIZE(points); i++) {
>   		int fence = sw_sync_timeline_create_fence(timeline, i + 1);


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
