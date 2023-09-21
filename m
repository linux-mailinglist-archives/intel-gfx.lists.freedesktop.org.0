Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B407A94E5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C028510E111;
	Thu, 21 Sep 2023 13:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CD010E111
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 13:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695303898; x=1726839898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cO4Dh16mth+Pmkoumf289vvzFf3HoVGUb5ABUyH4u9c=;
 b=j1HHA0pWvp9izajQ0rO2XoWMYxBf9tzq0DjQDLDRSCON8HyOrxiG9wzv
 LhiMKN40I5rCaBG/pdl4/TjUU3OnbscpXn1SPHsS8F9bpEVuEk2QMfeth
 Q/2269pM/M1JoNafw2GyYhon4/NFFPVJuJAGHppmozEYiFxCBvoKBmwsX
 8AER2WQz8VSdkmlHtNKWz7+0oCO5CSA/GCchpB0tZU58/CuGGqt9OEdiR
 7HFVwQZIdXe4320uuG310k50FQVtE+38QcZinoZlSpuVZZX8Miq0gpv8X
 rv+Ug1jirV2ZR0yeKXqM1S7U8RcFreTSpn4NB8bkscutXmkZesdbw+M3K g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="444635682"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="444635682"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:23:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="812644551"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="812644551"
Received: from skalitha-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.215.150.18])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:23:48 -0700
Date: Thu, 21 Sep 2023 15:23:42 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZQxD3tOG2QEuRTIY@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-7-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918170257.8586-7-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Toggle binder context ready
 status
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

[...]

> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index e5d693904123..07e95e9ab504 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -817,6 +817,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	i915_welcome_messages(i915);
>  
>  	i915->do_release = true;
> +	intel_gt_bind_context_set_ready(to_gt(i915), true);
>  
>  	return 0;
>  
> @@ -857,6 +858,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> +	intel_gt_bind_context_set_ready(to_gt(i915), false);
>  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
>  	i915_driver_unregister(i915);
> @@ -1079,6 +1081,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	pci_power_t opregion_target_state;
>  
> +	intel_gt_bind_context_set_ready(to_gt(dev_priv), false);
> +
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	/* We do a lot of poking in a lot of registers, make sure they work
> @@ -1266,6 +1270,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	intel_gvt_resume(dev_priv);
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> +	intel_gt_bind_context_set_ready(to_gt(dev_priv), true);

would be nice if there were inline wrappers like:

static inline void intel_gt_bind_context_set_ready(struct intel_gt *gt)
{
	__intel_gt_bind_context_set_ready(gt, true);
}

static inline void intel_gt_bind_context_set_unready(struct intel_gt *gt)
{
	__intel_gt_bind_context_set_ready(gt, gt);
}

I always had a personal dislike of booleans in arguments as they
mean very little to whoever reads them. On the other hand, set
ready to "false" is more meaningful than set unready. Your
choice.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
