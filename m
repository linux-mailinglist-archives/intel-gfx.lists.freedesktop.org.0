Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B62167026
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 08:24:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662D26EEB1;
	Fri, 21 Feb 2020 07:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A62F6EEB1;
 Fri, 21 Feb 2020 07:24:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 23:24:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,467,1574150400"; d="scan'208";a="283636671"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2020 23:24:25 -0800
Received: from [10.237.72.173] (mperes-desk.fi.intel.com [10.237.72.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 2635258056A;
 Thu, 20 Feb 2020 23:24:23 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200220165721.2056191-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <d0d76a0d-d9f6-93fe-0149-6c755a33715a@linux.intel.com>
Date: Fri, 21 Feb 2020 09:24:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200220165721.2056191-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] sw_sync: Use fixed runtime for
 sync_expired_merge
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-20 18:57, Chris Wilson wrote:
> Convert from using a fixed number of iterations (1 million), to using a
> fixed runtime so that we have predictable (and shorter!) run times across
> a wide variety of machines.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Martin Peres <martin.peres@linux.intel.com>

Thanks for making this test more reasonable :) Strength is in execution
count, not execution time :)

Reviewed-by: Martin Peres <martin.peres@linux.intel.com>

> ---
>  tests/sw_sync.c | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/tests/sw_sync.c b/tests/sw_sync.c
> index 626b6d39f..6e439496d 100644
> --- a/tests/sw_sync.c
> +++ b/tests/sw_sync.c
> @@ -747,30 +747,27 @@ static void test_sync_multi_producer_single_consumer(void)
>  
>  static void test_sync_expired_merge(void)
>  {
> -	int iterations = 1 << 20;
>  	int timeline;
> -	int i;
> -	int fence_expired, fence_merged;
> +	int expired;
>  
>  	timeline = sw_sync_timeline_create();
>  
>  	sw_sync_timeline_inc(timeline, 100);
> -	fence_expired = sw_sync_timeline_create_fence(timeline, 1);
> -	igt_assert_f(sync_fence_wait(fence_expired, 0) == 0,
> +	expired = sw_sync_timeline_create_fence(timeline, 1);
> +	igt_assert_f(sync_fence_wait(expired, 0) == 0,
>  	             "Failure waiting for expired fence\n");
>  
> -	fence_merged = sync_fence_merge(fence_expired, fence_expired);
> -	close(fence_merged);
> +	close(sync_fence_merge(expired, expired));
>  
> -	for (i = 0; i < iterations; i++) {
> -		int fence = sync_fence_merge(fence_expired, fence_expired);
> +	igt_until_timeout(2) {
> +		int fence = sync_fence_merge(expired, expired);
>  
>  		igt_assert_f(sync_fence_wait(fence, -1) == 0,
>  			     "Failure waiting on fence\n");
>  		close(fence);
>  	}
>  
> -	close(fence_expired);
> +	close(expired);
>  }
>  
>  static void test_sync_random_merge(void)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
