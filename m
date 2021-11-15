Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DD945041A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 13:09:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B4A6E9CD;
	Mon, 15 Nov 2021 12:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74056E9CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 12:08:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="230887909"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="230887909"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 04:08:58 -0800
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="493998266"
Received: from csrini4x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.218.37])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 04:08:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211112210825.1489596-3-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
 <20211112210825.1489596-3-anusha.srivatsa@intel.com>
Date: Mon, 15 Nov 2021 14:08:54 +0200
Message-ID: <87r1bh1uzt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/rpl-s: Add PCH ID
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

On Fri, 12 Nov 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Add the PCH ID for the same.

The same as what? Please use use commit messages that are
self-contained.

>
> Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pch.c | 1 +
>  drivers/gpu/drm/i915/intel_pch.h | 1 +
>  include/drm/i915_pciids.h        | 5 ++++-

Were the new PCI IDs supposed to be in the previous patch? If here, why
are they not mentioned in the commit message?

BR,
Jani.

>  3 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> index d1d4b97b86f5..da8f82c2342f 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -129,6 +129,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>  		return PCH_JSP;
>  	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
>  	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
> +	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
>  		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
>  			    !IS_ALDERLAKE_P(dev_priv));
> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
> index 7c0d83d292dc..6bff77521094 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -57,6 +57,7 @@ enum intel_pch {
>  #define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
>  #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
>  #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
> +#define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
>  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 00deb011b74c..0e112f56a9a8 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -675,6 +675,9 @@
>  	INTEL_VGA_DEVICE(0xA788, info), \
>  	INTEL_VGA_DEVICE(0xA789, info), \
>  	INTEL_VGA_DEVICE(0xA78A, info), \
> -	INTEL_VGA_DEVICE(0xA78B, info)
> +	INTEL_VGA_DEVICE(0xA78B, info), \
> +	INTEL_VGA_DEVICE(0x4690, info), \
> +	INTEL_VGA_DEVICE(0x4692, info), \
> +	INTEL_VGA_DEVICE(0x4693, info)
>  
>  #endif /* _I915_PCIIDS_H */

-- 
Jani Nikula, Intel Open Source Graphics Center
