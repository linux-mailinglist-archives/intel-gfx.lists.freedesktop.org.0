Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B55D2E1A39
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 09:59:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C43DC895E7;
	Wed, 23 Dec 2020 08:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C284895E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 08:59:41 +0000 (UTC)
IronPort-SDR: bvMPDPtMWGe7ypyHFWyClyhLTxKTUoepGJFXkr3XkdbTiCku3scQFhyb/5zwTt/kZF0YdoLOec
 GWRaE/YYbuNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="176132777"
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="176132777"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 00:59:40 -0800
IronPort-SDR: 66ckd+4dgt2zE2yhNmrfAWyKfOKZBTQDnNgJeqU6zfru2Fqb3zmFfS+Hv/ZI4Xvty45Ca34EP7
 ucsihWS7EUCg==
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="373893802"
Received: from odonov3x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.250.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 00:59:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Xiong Zhang <xiong.y.zhang@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201218090531.23241-1-xiong.y.zhang@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
 <20201218090531.23241-1-xiong.y.zhang@intel.com>
Date: Wed, 23 Dec 2020 10:59:35 +0200
Message-ID: <87im8soq2w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 18 Dec 2020, Xiong Zhang <xiong.y.zhang@intel.com> wrote:
> From: Zhenyu Wang <zhenyuw@linux.intel.com>
>
> Some vmm like hyperv and crosvm don't supply any ISA bridge to their guest,
> when igd passthrough is equipped on these vmm, guest i915 display may
> couldn't work as guest i915 detects PCH_NONE pch type.
>
> When i915 runs as guest, this patch guess pch type through gpu type even
> without ISA bridge.
>
> v2: Fix CI warning
>
> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
>  drivers/gpu/drm/i915/intel_pch.c | 38 ++++++++++++++++++++++----------
>  2 files changed, 32 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 5a7df5621aa3..df0b8f9268b2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1758,6 +1758,11 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
>  
> +static inline bool run_as_guest(void)
> +{
> +	return !hypervisor_is_type(X86_HYPER_NATIVE);
> +}
> +
>  static inline bool intel_vtd_active(void)
>  {
>  #ifdef CONFIG_INTEL_IOMMU
> @@ -1766,7 +1771,7 @@ static inline bool intel_vtd_active(void)
>  #endif
>  
>  	/* Running as a guest, we assume the host is enforcing VT'd */
> -	return !hypervisor_is_type(X86_HYPER_NATIVE);
> +	return run_as_guest();
>  }
>  
>  static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> index f31c0dabd0cc..a73c60bf349e 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -184,6 +184,23 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
>  	return id;
>  }
>  
> +static void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
> +{
> +	unsigned short id;
> +	enum intel_pch pch_type;
> +
> +	id = intel_virt_detect_pch(dev_priv);

intel_detect_pch_virt() calls intel_virt_detect_pch()... the naming
should be clarified to make some difference.

> +	pch_type = intel_pch_type(dev_priv, id);
> +
> +	/* Sanity check virtual PCH id */
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			id && pch_type == PCH_NONE))
> +		id = 0;
> +
> +	dev_priv->pch_type = pch_type;
> +	dev_priv->pch_id = id;

Previously the pch type and id assignments were all done in
intel_detect_pch(), so moving this to a separate function in *some* but
not all cases reduces clarity too.

BR,
Jani.

> +}
> +
>  void intel_detect_pch(struct drm_i915_private *dev_priv)
>  {
>  	struct pci_dev *pch = NULL;
> @@ -221,16 +238,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  			break;
>  		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
>  					     pch->subsystem_device)) {
> -			id = intel_virt_detect_pch(dev_priv);
> -			pch_type = intel_pch_type(dev_priv, id);
> -
> -			/* Sanity check virtual PCH id */
> -			if (drm_WARN_ON(&dev_priv->drm,
> -					id && pch_type == PCH_NONE))
> -				id = 0;
> -
> -			dev_priv->pch_type = pch_type;
> -			dev_priv->pch_id = id;
> +			intel_detect_pch_virt(dev_priv);
>  			break;
>  		}
>  	}
> @@ -246,8 +254,14 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  		dev_priv->pch_id = 0;
>  	}
>  
> -	if (!pch)
> -		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> +	if (!pch) {
> +		if (run_as_guest()) {
> +			drm_dbg_kms(&dev_priv->drm, "No PCH found in vm, try guess..\n");
> +			intel_detect_pch_virt(dev_priv);
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> +		}
> +	}
>  
>  	pci_dev_put(pch);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
