Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F44589DE0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 16:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05BF9A79F;
	Thu,  4 Aug 2022 14:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D5D99585
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 14:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659624610; x=1691160610;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=uT7HX+bl0ZdSaDTwDaY71JKmFJndDoj162XizADkitA=;
 b=V9zOiOjSZPoCxikCn8jgelPqN5YQy8jmOzifcNbb7v2knEFIdlyBis8P
 6gQeVl0Jk4IbBgAyOUKDxxzOAyguAvsyk33eO80T9SaFoRrAp5vtusbej
 19RUXD41fQgHIabAn537+fckrwVk7jDQ76aKQUmoZUrWzXgkeDAjJfUnd
 RHfxWaA2bs8NolPk5rpy+0dGunS0KTGZ+toUrLJYazhwzOTuDUjgTZogO
 jnjmWD3T0O+2UgIiuCDHMO62BEn9PMlkEWtZMqKyWzIpJpQjUj1WInHe5
 WKsMllsDj3ZbzTZcV0c4E4HrTtcGbvr1RNn5XWucX5NZPwYl/A6Aihk2j Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="289961703"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="289961703"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 07:50:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="631613063"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 07:50:05 -0700
Date: Thu, 4 Aug 2022 17:50:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: tilak.tangudu@intel.com
Message-ID: <YuvcmThh8AEBJ+/b@ideak-desk.fi.intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-9-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220721095955.3986943-9-tilak.tangudu@intel.com>
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915 : Add D3COLD OFF support
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, chris.p.wilson@intel.com, saurabhg.gupta@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 21, 2022 at 03:29:55PM +0530, tilak.tangudu@intel.com wrote:
> [...]
> @@ -1706,6 +1716,12 @@ static int intel_runtime_suspend(struct device *kdev)
>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
>  		intel_hpd_poll_enable(dev_priv);
>  
> +	if (rpm->d3_state == INTEL_D3COLD_OFF) {
> +		i915_save_pci_state(pdev);
> +		pci_disable_device(pdev);
> +		pci_set_power_state(pdev, PCI_D3cold);
> +	}

Could you add a code comment describing why the above is required? For
standard PCI devices pci_pm_runtime_suspend() should do this except for
calling pci_disable_device().

> +
>  	drm_dbg(&dev_priv->drm, "Device suspended\n");
>  	return 0;
>  }
> @@ -1713,6 +1729,7 @@ static int intel_runtime_suspend(struct device *kdev)
>  static int intel_runtime_resume(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
> +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
>  	int ret;
>  
> @@ -1724,7 +1741,25 @@ static int intel_runtime_resume(struct device *kdev)
>  	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
>  	disable_rpm_wakeref_asserts(rpm);
>  
> -	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> +	if (rpm->d3_state == INTEL_D3COLD_OFF) {
> +		ret = pci_set_power_state(pdev, PCI_D0);
> +		if (ret) {
> +			drm_err(&dev_priv->drm,
> +				"failed to set PCI D0 power state (%d)\n", ret);
> +			goto out;
> +		}
> +
> +		i915_load_pci_state(pdev);
> +
> +		ret = pci_enable_device(pdev);
> +		if (ret)
> +			goto out;
> +		pci_set_master(pdev);
> +		intel_opregion_resume(dev_priv);
> +	} else {
> +		intel_opregion_notify_adapter(dev_priv, PCI_D0);
> +	}
> +
>  	rpm->suspended = false;
>  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
>  		drm_dbg(&dev_priv->drm,
> @@ -1742,8 +1777,20 @@ static int intel_runtime_resume(struct device *kdev)
>  	 * No point of rolling back things in case of an error, as the best
>  	 * we can do is to hope that things will still work (and disable RPM).
>  	 */
> -	intel_gt_runtime_resume(to_gt(dev_priv));
> +	if (rpm->d3_state == INTEL_D3COLD_OFF) {
> +		ret = i915_pcode_init(dev_priv);
> +		if (ret)
> +			goto out;
>  
> +		sanitize_gpu(dev_priv);
> +		ret = i915_ggtt_enable_hw(dev_priv);
> +		if (ret)
> +			drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
> +		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
> +		i915_gem_resume(dev_priv);
> +	} else {
> +		intel_gt_runtime_resume(to_gt(dev_priv));
> +	}
>  	/*
>  	 * On VLV/CHV display interrupts are part of the display
>  	 * power well, so hpd is reinitialized from there. For
> @@ -1756,6 +1803,7 @@ static int intel_runtime_resume(struct device *kdev)
>  
>  	intel_enable_ipc(dev_priv);
>  
> +out:
>  	enable_rpm_wakeref_asserts(rpm);
>  
>  	if (ret)
> -- 
> 2.25.1
> 
