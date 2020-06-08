Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F27121F2118
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 23:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60F76E598;
	Mon,  8 Jun 2020 21:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 442FB6E598
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 21:01:19 +0000 (UTC)
IronPort-SDR: ic4Zijm1HtBrfg3jSEDHDcdrvySfUk2TsXGC97oXqYCbMLVVKHKr8/Kliaq3iTTSSMpfHTIs2y
 JabPKaWOvxwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 14:01:18 -0700
IronPort-SDR: 7ei2J3d/5dnTqHSSx68yUXaNzCy16Mbbq7YnpVheW4IGPsUbNnfw8k8nYsZGuMM1jd5fBOjZad
 S5ytH/NiShtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="305958123"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2020 14:01:17 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D18FA5C2C42; Mon,  8 Jun 2020 23:58:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200607222108.14401-2-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <20200607222108.14401-2-chris@chris-wilson.co.uk>
Date: Mon, 08 Jun 2020 23:58:43 +0300
Message-ID: <87d0699svw.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/28] drm/i915/selftests: Make the hanging
 request non-preemptible
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> In some of our hangtests, we try to reset an active engine while it is
> spinning inside the recursive spinner. However, we also try to flood the
> engine with requests that preempt the hang, and so should disable the
> preemption to be sure that we reset the right request.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 36 ++++++++++++++------
>  1 file changed, 26 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 4aa4cc917d8b..035f363fb0f8 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -203,12 +203,12 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  		*batch++ = lower_32_bits(hws_address(hws, rq));
>  		*batch++ = upper_32_bits(hws_address(hws, rq));
>  		*batch++ = rq->fence.seqno;
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  
>  		memset(batch, 0, 1024);
>  		batch += 1024 / sizeof(*batch);
>  
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
>  		*batch++ = lower_32_bits(vma->node.start);
>  		*batch++ = upper_32_bits(vma->node.start);
> @@ -217,12 +217,12 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  		*batch++ = 0;
>  		*batch++ = lower_32_bits(hws_address(hws, rq));
>  		*batch++ = rq->fence.seqno;
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  
>  		memset(batch, 0, 1024);
>  		batch += 1024 / sizeof(*batch);
>  
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 1 << 8;
>  		*batch++ = lower_32_bits(vma->node.start);
>  	} else if (INTEL_GEN(gt->i915) >= 4) {
> @@ -230,24 +230,24 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  		*batch++ = 0;
>  		*batch++ = lower_32_bits(hws_address(hws, rq));
>  		*batch++ = rq->fence.seqno;
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  
>  		memset(batch, 0, 1024);
>  		batch += 1024 / sizeof(*batch);
>  
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
>  		*batch++ = lower_32_bits(vma->node.start);
>  	} else {
>  		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
>  		*batch++ = lower_32_bits(hws_address(hws, rq));
>  		*batch++ = rq->fence.seqno;
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  
>  		memset(batch, 0, 1024);
>  		batch += 1024 / sizeof(*batch);
>  
> -		*batch++ = MI_ARB_CHECK;
> +		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
>  		*batch++ = lower_32_bits(vma->node.start);
>  	}
> @@ -866,13 +866,29 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  			count++;
>  
>  			if (rq) {
> +				if (rq->fence.error != -EIO) {
> +					pr_err("i915_reset_engine(%s:%s):"
> +					       " failed to reset request %llx:%lld\n",
> +					       engine->name, test_name,
> +					       rq->fence.context,
> +					       rq->fence.seqno);
> +					i915_request_put(rq);
> +
> +					GEM_TRACE_DUMP();
> +					intel_gt_set_wedged(gt);
> +					err = -EIO;
> +					break;
> +				}
> +
>  				if (i915_request_wait(rq, 0, HZ / 5) < 0) {
>  					struct drm_printer p =
>  						drm_info_printer(gt->i915->drm.dev);
>  
>  					pr_err("i915_reset_engine(%s:%s):"
> -					       " failed to complete request after reset\n",
> -					       engine->name, test_name);
> +					       " failed to complete request %llx:%lld after reset\n",
> +					       engine->name, test_name,
> +					       rq->fence.context,
> +					       rq->fence.seqno);
>  					intel_engine_dump(engine, &p,
>  							  "%s\n", engine->name);
>  					i915_request_put(rq);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
