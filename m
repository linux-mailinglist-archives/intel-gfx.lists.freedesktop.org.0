Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B759A64330
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 08:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBEF10E329;
	Mon, 17 Mar 2025 07:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3zcbQar";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E13410E329
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Mar 2025 07:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742195852; x=1773731852;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0NfLvn2j8hSeot7rbjydCnjaje1Bb0JcJgnaMtfPH5I=;
 b=R3zcbQarx+uAl3wA7Z3XRak0LqhLb435MEa6fUt85+Q8BCPoHJ0TeTEe
 lVmwWYFFN/afOcUx7cLqDXc8Xw2IBaIpoREjDV5YKHCDiK8DdoTpDqFpw
 YxrlHWIz+1xUXAvA1j9Bc6KHFb+dWdiUyFutC89jiTOwrnxQ1tPlgNrPJ
 d28rGrx0wpCHFfowV1rnm66ARS5q0EciLEWZlz4A1+G0aWPNlxaI3UL0f
 8jwzBmjHncsHD8RD1Nh93qqpRXVjhCFCE35XmLcOehPVXqWZ2/3cyFejX
 IHcDDHxqmJhpx4FM3va3KXccc4S4apvbzQPE6nrny4Nplti0oBeckATgr g==;
X-CSE-ConnectionGUID: tcIsD+NSTRqjRSUS8b0xMA==
X-CSE-MsgGUID: 6FQ/krmQRo2NvGNS59NACQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54648221"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54648221"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 00:17:32 -0700
X-CSE-ConnectionGUID: fVFs6D/JRM6I4Thh9p7+fA==
X-CSE-MsgGUID: vUkNc9MFSTu1RBUzSy5Jjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="122035193"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 00:17:31 -0700
Date: Mon, 17 Mar 2025 09:17:27 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 anshuman.gupta@intel.com
Subject: Re: [PATCH v2 2/6] drm/i915/pm: Hoist
 pci_save_state()+pci_set_power_state() to the end of pm _late() hook
Message-ID: <Z9fMh-TVLGzTG4xw@black.fi.intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250311195624.22420-3-ville.syrjala@linux.intel.com>
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

On Tue, Mar 11, 2025 at 09:56:20PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> drivers/pci does the pci_save_state()+pci_set_power_state() from
> the _noirq() pm hooks. Move our manual calls (needed for the
> hibernate vs. D3 workaround with buggy BIOSes) towards that same
> point. We currently have no _noirq() hooks, so end of _late()
> hooks is the best we can do right now.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index be232caef9df..e06f2956382c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1045,7 +1045,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_display *display = &dev_priv->display;
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	pci_power_t opregion_target_state;
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> @@ -1059,8 +1058,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  		intel_display_driver_disable_user_access(display);
>  	}
>  
> -	pci_save_state(pdev);
> -
>  	intel_display_driver_suspend(display);
>  
>  	intel_irq_suspend(dev_priv);
> @@ -1117,10 +1114,16 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
>  		intel_display_power_resume_early(display);
>  
> -		goto out;
> +		goto fail;
>  	}
>  
> +	enable_rpm_wakeref_asserts(rpm);
> +
> +	if (!dev_priv->uncore.user_forcewake_count)
> +		intel_runtime_pm_driver_release(rpm);
> +
>  	pci_disable_device(pdev);
> +
>  	/*
>  	 * During hibernation on some platforms the BIOS may try to access
>  	 * the device even though it's already in D3 and hang the machine. So
> @@ -1132,11 +1135,17 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
>  	 * Fujitsu FSC S7110
>  	 * Acer Aspire 1830T
> +	 *
> +	 * pci_save_state() prevents drivers/pci from
> +	 * automagically putting the device into D3.
>  	 */
> +	pci_save_state(pdev);

I might be missing something, but looking at the comment it seems like
the problem is with certain gens and their BIOS? Not sure why we need
to do it for all gens.

Shouldn't we let PCI PM take care of it, atleast for devices that don't
have this problem?

>  	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
>  		pci_set_power_state(pdev, PCI_D3hot);

Raag
