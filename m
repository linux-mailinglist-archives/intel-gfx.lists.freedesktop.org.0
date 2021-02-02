Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4769A30C688
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 17:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9DF6E1C0;
	Tue,  2 Feb 2021 16:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEC0B6E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 16:52:26 +0000 (UTC)
IronPort-SDR: Dk1V+L5gnImPcpl6pUQ50hxBRpoaCxPfCqDfidPgoWBKERXSTtyxvHGKeumAiJnqFEoOm+qbVf
 PN4coQx9TwGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="160054191"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="160054191"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 08:52:24 -0800
IronPort-SDR: LxM9bWH8QaBP/kU1HTO4Izp9BXHJ8+GTKicocIkQbzj0v6HCQuQ8ytbLzKACtpE7Llt97JZ7qF
 VfUdHQrK5QNA==
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="433001875"
Received: from irisshal-mobl1.ger.corp.intel.com (HELO [10.214.210.18])
 ([10.214.210.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 08:52:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210202151445.20002-1-chris@chris-wilson.co.uk>
 <20210202151445.20002-8-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2097da50-efe4-1b23-67b5-9a43a70198c9@linux.intel.com>
Date: Tue, 2 Feb 2021 16:52:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210202151445.20002-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 08/14] drm/i915/selftests: Force a rewind if at
 first we don't succeed
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/02/2021 15:14, Chris Wilson wrote:
> live_timeslice_rewind assumes a particular traversal and reordering
> after the first timeslice yield. However, the outcome can be either
> (A1, A2, B1) or (A1, B2, A2) depending on the path taken through the
> dependency graph. So if we do not get the outcome we need at first, give
> it a priority kick to force a rewind.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/selftest_execlists.c | 21 +++++++++++++++++++-
>   1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 951e2bf867e1..68e1398704a4 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -1107,6 +1107,7 @@ static int live_timeslice_rewind(void *arg)
>   		struct i915_request *rq[3] = {};
>   		struct intel_context *ce;
>   		unsigned long timeslice;
> +		unsigned long timeout;
>   		int i, err = 0;
>   		u32 *slot;
>   
> @@ -1173,11 +1174,29 @@ static int live_timeslice_rewind(void *arg)
>   
>   		/* ELSP[] = { { A:rq1, A:rq2 }, { B:rq1 } } */
>   		ENGINE_TRACE(engine, "forcing tasklet for rewind\n");
> -		while (i915_request_is_active(rq[A2])) { /* semaphore yield! */
> +		i = 0;
> +		timeout = jiffies + HZ;
> +		while (i915_request_is_active(rq[A2]) &&
> +		       time_before(jiffies, timeout)) { /* semaphore yield! */
>   			/* Wait for the timeslice to kick in */
>   			del_timer(&engine->execlists.timer);
>   			tasklet_hi_schedule(&engine->execlists.tasklet);
>   			intel_engine_flush_submission(engine);
> +
> +			/*
> +			 * Unfortunately this assumes that during the
> +			 * search of the wait tree it sees the requests
> +			 * in a particular order. That order is not
> +			 * strictly determined and it may pick either
> +			 * A2 or B1 to immediately follow A1.
> +			 *
> +			 * Break the tie with a set-priority. This defeats
> +			 * the goal of trying to cause a rewind with a
> +			 * timeslice, but alas, a rewind is better than
> +			 * none.
> +			 */
> +			if (i++)
> +				i915_request_set_priority(rq[B1], 1);
>   		}
>   		/* -> ELSP[] = { { A:rq1 }, { B:rq1 } } */
>   		GEM_BUG_ON(!i915_request_is_active(rq[A1]));
> 

Didn't fully get the intricacies of the test, but, how about not messing 
with priorities but just kicking it for longer until it eventually 
re-orders to the desired sequence? Surely if it keeps insisting of the 
same order which is making no progress there is a flaw in timeslicing 
anyway? Or if it fails skip the test.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
