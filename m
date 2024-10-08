Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F29D9953D9
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 17:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29CA210E188;
	Tue,  8 Oct 2024 15:57:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N10shJPi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0599A10E188;
 Tue,  8 Oct 2024 15:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728403038; x=1759939038;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=srzuIaZht5fonmsy7SA5mLQ1bp2uerDCsI3n+4fce5o=;
 b=N10shJPinNtoUO93jLqH7twaoXfveCbuKueuibL9qrGWgGyAVLTMfC7G
 BZk7lPNKmfFvEcNafLRdYttG7JdsxTECkewiOsxpkZQhuXsvHJbhtzz3n
 XKRkFfTKsTcfTdckQ6LP1+BaJkag9vANZ5mYZqrc7LcqiopJduYmDRcoy
 oNlpoXmpXWey/w7JCjLBc6wJbYMojDQrx6ud0a2PJafYelv9L0zcggczA
 Ge7Jp49SBDfpDaC9F94wveBY/h79KlQxcFzuEkOqKIFR6l8VsJ8/A3xhb
 fpathlb66FM8qvZKrOENHe9maGWiSb09MDDrVbTljQNAiYPxGkW5AkpNT A==;
X-CSE-ConnectionGUID: mQOdqNt2T2GP+t3yzffpKQ==
X-CSE-MsgGUID: CQ+gutxwTHmPRUI4+9OJoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="50146547"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="50146547"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 08:57:18 -0700
X-CSE-ConnectionGUID: ES9kL7BMQBuJVmBZGiPW7A==
X-CSE-MsgGUID: GYOSc3J/R6CrsbrynSDhTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75885662"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 08:57:16 -0700
Date: Tue, 8 Oct 2024 18:57:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/31] drm/i915/display: Move shutdown sequences under
 display driver
Message-ID: <ZwVWebPv34TyHMgt@ideak-desk.fi.intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-5-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240924204222.246862-5-rodrigo.vivi@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 24, 2024 at 04:35:25PM -0400, Rodrigo Vivi wrote:
> Move display related shutdown sequences from i915_driver to
> intel_display_driver.
> 
> No functional change. Just taking the right ownership and
> start some reconciliation of them between i915 and Xe.
> 
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 40 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  3 ++
>  drivers/gpu/drm/i915/i915_driver.c            | 29 ++------------
>  3 files changed, 47 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index c106fb2dd20b..e40b1105168e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -39,6 +39,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
> +#include "intel_encoder.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbdev.h"
> @@ -755,3 +756,42 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
>  	if (state)
>  		drm_atomic_state_put(state);
>  }
> +
> +void intel_display_driver_shutdown(struct drm_i915_private *i915)
> +{
> +	intel_power_domains_disable(i915);
> +
> +	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
> +	if (HAS_DISPLAY(i915)) {
> +		drm_kms_helper_poll_disable(&i915->drm);
> +		intel_display_driver_disable_user_access(i915);
> +
> +		drm_atomic_helper_shutdown(&i915->drm);
> +	}
> +
> +	intel_dp_mst_suspend(i915);
> +}
> +
> +void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915)
> +{
> +	intel_hpd_cancel_work(i915);
> +
> +	if (HAS_DISPLAY(i915))
> +		intel_display_driver_suspend_access(i915);
> +
> +	intel_encoder_suspend_all(&i915->display);
> +	intel_encoder_shutdown_all(&i915->display);
> +
> +	intel_dmc_suspend(&i915->display);
> +}
> +
> +void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * The only requirement is to reboot with display DC states disabled,
> +	 * for now leaving all display power wells in the INIT power domain
> +	 * enabled.
> +	 */
> +
> +	intel_power_domains_driver_remove(i915);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index 42cc4af6d3fd..1ee37fb58d38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -26,6 +26,9 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
>  int intel_display_driver_suspend(struct drm_i915_private *i915);
>  void intel_display_driver_resume(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
>  
>  /* interface for intel_display_reset.c */
>  int __intel_display_driver_resume(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index ae5906885359..38c845ad86e5 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -939,43 +939,22 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  {
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	intel_runtime_pm_disable(&i915->runtime_pm);
> -	intel_power_domains_disable(i915);
>  
> -	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
> -	if (HAS_DISPLAY(i915)) {
> -		drm_kms_helper_poll_disable(&i915->drm);
> -		intel_display_driver_disable_user_access(i915);
> -
> -		drm_atomic_helper_shutdown(&i915->drm);
> -	}
> -
> -	intel_dp_mst_suspend(i915);
> +	intel_display_driver_shutdown(i915);
>  
>  	intel_irq_suspend(i915);
> -	intel_hpd_cancel_work(i915);
> -
> -	if (HAS_DISPLAY(i915))
> -		intel_display_driver_suspend_access(i915);
>  
> -	intel_encoder_suspend_all(&i915->display);
> -	intel_encoder_shutdown_all(&i915->display);
> -
> -	intel_dmc_suspend(&i915->display);
> +	intel_display_driver_shutdown_noirq(i915);
>  
>  	i915_gem_suspend(i915);
>  
> -	/*
> -	 * The only requirement is to reboot with display DC states disabled,
> -	 * for now leaving all display power wells in the INIT power domain
> -	 * enabled.
> -	 *
> -	 * TODO:
> +	/* TODO:
>  	 * - unify the pci_driver::shutdown sequence here with the
>  	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
>  	 * - unify the driver remove and system/runtime suspend sequences with
>  	 *   the above unified shutdown/poweroff sequence.
>  	 */
> -	intel_power_domains_driver_remove(i915);
> +

Should intel_display_driver_shutdown_nogem() be called here?

>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> -- 
> 2.46.0
> 
