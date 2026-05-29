Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CIHBmjjGWpmzggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:05:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BF1607ABA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82759112424;
	Fri, 29 May 2026 19:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJDzbsbu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C7C112430;
 Fri, 29 May 2026 19:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780081507; x=1811617507;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OmF0JxQ7f1KMNFwEfvuviALa5VSpJ3mKJBv1rW2Cbbs=;
 b=nJDzbsbum9lbeooXoWmGWGZGQEduHFxZx6OVBclv8SG68G6EuGIQ2FUt
 YUaj46G5AKp/ugZCZJlApZA5GmFH8zvNYEGAsnZPXhki5Vohr7x9zDg5p
 zKmOvLzddVgXiztXfV2N41N91jqt3+HXCo06SnaPhMMhO4fRBBYbeo4Bw
 r7ZFn6zMQw58B1xIB8BEiYvIzVfkeox/eG1bIoNhR3rj9H0sKQjNTE3jP
 IYcMoKoFu+CsruSdYqEVrJ4RQqGSWJ+NXmxtu4Bu6d3Botzhh82kNq8jI
 NsjiAonS/wc+bGA1mpyA7HZRZ/XfHfIhVY6LvVYv/YCvmjGkXiNvsQ6ls A==;
X-CSE-ConnectionGUID: AuA8Ei3KRiK826QlJmvAIQ==
X-CSE-MsgGUID: IALALBtaR3SLE9DOOCSMCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="106390821"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="106390821"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:05:06 -0700
X-CSE-ConnectionGUID: cS6fzkvqSfSjEHPdLWKuuQ==
X-CSE-MsgGUID: Uk6YTbb1RCWw3WG/doKlQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="247863830"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:05:05 -0700
Date: Fri, 29 May 2026 22:05:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 22/24] drm/i915: add intel_display_driver_pm_runtime*()
 functions
Message-ID: <ahnjXXO-h7NYocBy@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <9417d53a338b5a14b9bf50cb8585b13b7379a6d3.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9417d53a338b5a14b9bf50cb8585b13b7379a6d3.1780051905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.52 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.83)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 44BF1607ABA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:04:06PM +0300, Jani Nikula wrote:
> Add new functions intel_display_driver_pm_runtime_suspend(),
> intel_display_driver_pm_runtime_suspend_late(),
> intel_display_driver_pm_runtime_resume_early(), and
> intel_display_driver_pm_runtime_resume(). Initially, only migrate i915,
> as there are some differences with xe that will be addressed later.
> 
> There are a few functional changes, which should be benign:
> 
> - i915_pm_runtime_suspend() moves assert_forcewakes_inactive() call
>   before opregion calls.
> 
> - i915_pm_runtime_resume() moves intel_opregion_notify_adapter() call
>   slightly later.
> 
> In the interest of not introducing more severe functional changes, the
> calls become slightly asymmetric. We might want to address this later.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c   | 56 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  5 ++
>  drivers/gpu/drm/i915/i915_driver.c            | 44 ++-------------
>  3 files changed, 65 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 84807a9bff2b..a27ddf21b08b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -884,3 +884,59 @@ void intel_display_driver_pm_resume(struct intel_display *display)
>  
>  	intel_display_power_enable(display);
>  }
> +
> +void intel_display_driver_pm_runtime_suspend(struct intel_display *display)
> +{
> +	intel_display_power_runtime_suspend(display);
> +}
> +
> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display)
> +{
> +	/*
> +	 * FIXME: We really should find a document that references the arguments
> +	 * used below!
> +	 */
> +	if (display->platform.broadwell) {
> +		/*
> +		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> +		 * being detected, and the call we do at i915_pm_runtime_resume()
> +		 * won't be able to restore them. Since PCI_D3hot matches the
> +		 * actual specification and appears to be working, use it.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D3hot);
> +	} else {
> +		/*
> +		 * current versions of firmware which depend on this opregion
> +		 * notification have repurposed the D1 definition to mean
> +		 * "runtime suspended" vs. what you would normally expect (D3)
> +		 * to distinguish it from notifications that might be sent via
> +		 * the suspend path.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D1);
> +	}
> +
> +	if (!display->platform.valleyview && !display->platform.cherryview)
> +		intel_hpd_poll_enable(display);
> +}
> +
> +void intel_display_driver_pm_runtime_resume_early(struct intel_display *display)
> +{
> +	intel_opregion_notify_adapter(display, PCI_D0);
> +
> +	intel_display_power_runtime_resume(display);
> +}
> +
> +void intel_display_driver_pm_runtime_resume(struct intel_display *display)
> +{
> +	/*
> +	 * On VLV/CHV display interrupts are part of the display
> +	 * power well, so hpd is reinitialized from there. For
> +	 * everyone else do it here.
> +	 */
> +	if (!display->platform.valleyview && !display->platform.cherryview) {
> +		intel_hpd_init(display);
> +		intel_hpd_poll_disable(display);
> +	}
> +
> +	skl_watermark_ipc_update(display);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index 7eca3d17dd82..1b494337d629 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -43,5 +43,10 @@ void intel_display_driver_suspend_access(struct intel_display *display);
>  void intel_display_driver_resume_access(struct intel_display *display);
>  bool intel_display_driver_check_access(struct intel_display *display);
>  
> +void intel_display_driver_pm_runtime_suspend(struct intel_display *display);
> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display);
> +void intel_display_driver_pm_runtime_resume_early(struct intel_display *display);
> +void intel_display_driver_pm_runtime_resume(struct intel_display *display);
> +
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 6b9e1b268a89..519a519d2d96 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1521,7 +1521,7 @@ static int i915_pm_runtime_suspend(struct device *kdev)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
>  
> -	intel_display_power_runtime_suspend(display);
> +	intel_display_driver_pm_runtime_suspend(display);
>  
>  	ret = vlv_suspend_complete(dev_priv);
>  	if (ret) {
> @@ -1555,33 +1555,9 @@ static int i915_pm_runtime_suspend(struct device *kdev)
>  	if (root_pdev)
>  		pci_d3cold_disable(root_pdev);
>  
> -	/*
> -	 * FIXME: We really should find a document that references the arguments
> -	 * used below!
> -	 */
> -	if (IS_BROADWELL(dev_priv)) {
> -		/*
> -		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> -		 * being detected, and the call we do at i915_pm_runtime_resume()
> -		 * won't be able to restore them. Since PCI_D3hot matches the
> -		 * actual specification and appears to be working, use it.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D3hot);
> -	} else {
> -		/*
> -		 * current versions of firmware which depend on this opregion
> -		 * notification have repurposed the D1 definition to mean
> -		 * "runtime suspended" vs. what you would normally expect (D3)
> -		 * to distinguish it from notifications that might be sent via
> -		 * the suspend path.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D1);
> -	}
> -
>  	assert_forcewakes_inactive(&dev_priv->uncore);
>  
> -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> -		intel_hpd_poll_enable(display);
> +	intel_display_driver_pm_runtime_suspend_late(display);
>  
>  	drm_dbg(&dev_priv->drm, "Device suspended\n");
>  	return 0;
> @@ -1605,8 +1581,6 @@ static int i915_pm_runtime_resume(struct device *kdev)
>  	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
>  	disable_rpm_wakeref_asserts(rpm);
>  
> -	intel_opregion_notify_adapter(display, PCI_D0);
> -
>  	root_pdev = pcie_find_root_port(pdev);
>  	if (root_pdev)
>  		pci_d3cold_enable(root_pdev);
> @@ -1615,7 +1589,7 @@ static int i915_pm_runtime_resume(struct device *kdev)
>  		drm_dbg(&dev_priv->drm,
>  			"Unclaimed access during suspend, bios?\n");
>  
> -	intel_display_power_runtime_resume(display);
> +	intel_display_driver_pm_runtime_resume_early(display);
>  
>  	ret = vlv_resume_prepare(dev_priv, true);
>  
> @@ -1633,17 +1607,7 @@ static int i915_pm_runtime_resume(struct device *kdev)
>  
>  	intel_pxp_runtime_resume(dev_priv->pxp);
>  
> -	/*
> -	 * On VLV/CHV display interrupts are part of the display
> -	 * power well, so hpd is reinitialized from there. For
> -	 * everyone else do it here.
> -	 */
> -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
> -		intel_hpd_init(display);
> -		intel_hpd_poll_disable(display);
> -	}
> -
> -	skl_watermark_ipc_update(display);
> +	intel_display_driver_pm_runtime_resume(display);
>  
>  	enable_rpm_wakeref_asserts(rpm);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
