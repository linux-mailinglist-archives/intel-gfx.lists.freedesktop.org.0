Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6705FAD64
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 09:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB6110E7D2;
	Tue, 11 Oct 2022 07:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3C010E7D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 07:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665472959; x=1697008959;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=j8BSvLASBNpxAvxP4TENg3boCensxT18wVTxL4WCqmg=;
 b=bflB6V2Sp56surauNRgrOsOEiAwGtf+0MuAfDB5fKv4lFszra/vCZ0Do
 mgg0uAgx+JqjFuWAabuPMmMqDDhLaIyS3puRp7hF40PTyCSnqH173CDQw
 3G5DROmbPNj+Q+uq+R+BnDe5emmbV34u4YdkW8E4K+Ov8c2Udbfdmcb8T
 0mYiVT0Wm8pX4WdsmeUQRtQxZvGyrE6xHhV27Q9OkT79SIkEaTc28BkTf
 pJktDgnb1z7WCz2UoyH3bP+B3QyFKjCrNqkQyOoMg3pgQrluCboC2fgMY
 DR+11NenaZoOm4l/sPxWXJbY4AryK/7WfRGAVsFkxPYSqLEv8C+IxjMr9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="291746172"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="291746172"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 00:22:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="801361675"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="801361675"
Received: from milawils-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 00:22:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <e59e680be0d56fdb4c116f45fac94350832752ec.1665458639.git.ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
 <e59e680be0d56fdb4c116f45fac94350832752ec.1665458639.git.ashutosh.dixit@intel.com>
Date: Tue, 11 Oct 2022 10:22:34 +0300
Message-ID: <87tu4aygcl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Don't do display work on
 platforms without display
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 10 Oct 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> Do display work only on platforms with display. This avoids holding the
> runtime PM wakeref for an additional 100+ ms after GT has been parked.
>
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7025
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c | 36 +++++++++++++++------------
>  1 file changed, 20 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index f553e2173bdad..26aa2e979a148 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -70,19 +70,21 @@ static int __gt_unpark(struct intel_wakeref *wf)
>  
>  	GT_TRACE(gt, "\n");
>  
> -	/*
> -	 * It seems that the DMC likes to transition between the DC states a lot
> -	 * when there are no connected displays (no active power domains) during
> -	 * command submission.
> -	 *
> -	 * This activity has negative impact on the performance of the chip with
> -	 * huge latencies observed in the interrupt handler and elsewhere.
> -	 *
> -	 * Work around it by grabbing a GT IRQ power domain whilst there is any
> -	 * GT activity, preventing any DC state transitions.
> -	 */
> -	gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
> -	GEM_BUG_ON(!gt->awake);
> +	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {

Feels like something's wrong if you need both of those.

BR,
Jani.

> +		/*
> +		 * It seems that the DMC likes to transition between the DC states a lot
> +		 * when there are no connected displays (no active power domains) during
> +		 * command submission.
> +		 *
> +		 * This activity has negative impact on the performance of the chip with
> +		 * huge latencies observed in the interrupt handler and elsewhere.
> +		 *
> +		 * Work around it by grabbing a GT IRQ power domain whilst there is any
> +		 * GT activity, preventing any DC state transitions.
> +		 */
> +		gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
> +		GEM_BUG_ON(!gt->awake);
> +	}
>  
>  	intel_rc6_unpark(&gt->rc6);
>  	intel_rps_unpark(&gt->rps);
> @@ -115,9 +117,11 @@ static int __gt_park(struct intel_wakeref *wf)
>  	/* Everything switched off, flush any residual interrupt just in case */
>  	intel_synchronize_irq(i915);
>  
> -	/* Defer dropping the display power well for 100ms, it's slow! */
> -	GEM_BUG_ON(!wakeref);
> -	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
> +	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
> +		/* Defer dropping the display power well for 100ms, it's slow! */
> +		GEM_BUG_ON(!wakeref);
> +		intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
> +	}
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
