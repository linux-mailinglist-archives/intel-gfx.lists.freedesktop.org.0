Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAC52AF2C3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 14:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E1389E98;
	Wed, 11 Nov 2020 13:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3097889E98
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 13:58:58 +0000 (UTC)
IronPort-SDR: QVmmtvlGFAfn7RUHlDhHq9ptTC/av/bO4CrMSOCdMdPOlRIOGr1aodkziNXMA7hCbO0gZMAnTY
 GhOLCNyYWFbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="169363888"
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; d="scan'208";a="169363888"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 05:58:55 -0800
IronPort-SDR: pFHfDGXKbjV9D5+ZBdAPSix55OYsa+x4tAWEnXpSuoRMzRBp5fnon87V8v1HVHg0fOrzBmvGHo
 1VbzlH+NNmdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; d="scan'208";a="365935542"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2020 05:58:54 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0C40F5C0D57; Wed, 11 Nov 2020 15:57:00 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201111123726.4158-1-chris@chris-wilson.co.uk>
References: <20201111123726.4158-1-chris@chris-wilson.co.uk>
Date: Wed, 11 Nov 2020 15:57:00 +0200
Message-ID: <87imacdmj7.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Include semaphore status in
 print_request()
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

> When pretty-printing the requests for debug, also so the status of any
s/so/show
> semaphore waits as part of its runnable status.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 0b31670343f5..1ed84ee8ce41 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1321,6 +1321,7 @@ static void print_request(struct drm_printer *m,
>  		   rq->fence.context, rq->fence.seqno,
>  		   i915_request_completed(rq) ? "!" :
>  		   i915_request_started(rq) ? "*" :
> +		   !i915_sw_fence_signaled(&rq->semaphore) ? "&" :

major demon it is then.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  		   "",
>  		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
>  			    &rq->fence.flags) ? "+" :
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
