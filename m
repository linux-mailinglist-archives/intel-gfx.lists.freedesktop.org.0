Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C05C30A971
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 15:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C8B6E5CA;
	Mon,  1 Feb 2021 14:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F236E5BD
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 14:15:40 +0000 (UTC)
IronPort-SDR: zT0zDTqHsM1gMWNBNxSDdA98devogHhpORP/T6K3JMNNJPFySexV3MCLA7zA2hKzYxJ2PGlGvk
 cKhodt9sUZeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="242208908"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="242208908"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 06:15:40 -0800
IronPort-SDR: Nkm9lOhVUI9HOVTLhrE/pWtDrIID39KNcQJjTfoSIwr0Rz7ju4yhjLbXS0HvKZo/XezhxwhLW1
 ZoJxQsU09c9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="358596770"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 01 Feb 2021 06:15:39 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8B7F25C1F81; Mon,  1 Feb 2021 16:15:34 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
Date: Mon, 01 Feb 2021 16:15:34 +0200
Message-ID: <87im7b27sp.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/57] drm/i915/gt: Restrict the GT clock
 override to just Icelake
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

> It appears that Elkhart Lake uses the same clock for CTX_TIMESTAMP as
> CS_TIMESTAMP, leaving Icelake as the odd one out.

I am repeating myself: weird.
...but true.

>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3024
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> index f8c79efb1a87..09b290fe0867 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> @@ -160,7 +160,7 @@ void intel_gt_init_clock_frequency(struct intel_gt *gt)
>  		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
>  
>  	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
> -	if (IS_GEN(gt->i915, 11))
> +	if (IS_ICELAKE(gt->i915))
>  		gt->clock_period_ns = NSEC_PER_SEC / 13750000;
>  
>  	GT_TRACE(gt,
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
