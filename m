Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D3F679BE2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753BA10E692;
	Tue, 24 Jan 2023 14:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACFA10E6B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674570730; x=1706106730;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OMl5Fy3IwYuctAmslxG7ZRFoQmFxlY35mSBLGZt9O7g=;
 b=bpWc64ZTQQRVPI+aZNAGKtq+s1bVpyn62sdU454s5MPvAvqoXoxsvJzK
 otlmG4XjZAKj+ylvjIsVlSN6uIiV25m3EYsgI55/55TI7YvUsLau/eXZt
 MF7Exk/HXEzCXv7y9eMqWXQv2Vg7musjgkOsujX2Xs7l+lFHndTFONC3u
 sdwmUXgLzFEDIZdLjm8dikamR1iAUQ5AVFtiTlbgRh7wJCKgBOFHckwf8
 MpFZrUzbQIs0xn0Jt08OqvEs7MFX3w3XDqgbGXy0XXVRbYq0i3UbZzhOx
 h3fY/akZcDJgUc6MrlZTov2Sbax0riJaJUNOurAIUESAPWbAVsoyB3p0r w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="324981076"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="324981076"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:32:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="725492516"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="725492516"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.57.197])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:32:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230117074211.952125-2-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
 <20230117074211.952125-2-chaitanya.kumar.borah@intel.com>
Date: Tue, 24 Jan 2023 16:32:03 +0200
Message-ID: <87mt686m1o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U sub platform
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Separate out RPLU device ids and add them to both RPL and
> newly created RPL-U subplatforms.
>
> v2: (Matt)
>     - Sort PCI-IDs numerically
>     - Name the sub-platform to accurately depict what it is for
>     - Make RPL-U part of RPL subplatform
>
> v3: revert to RPL-U subplatform (Jani)
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
>  drivers/gpu/drm/i915/i915_pci.c          |  1 +
>  drivers/gpu/drm/i915/intel_device_info.c |  8 ++++++++
>  drivers/gpu/drm/i915/intel_device_info.h |  2 ++
>  include/drm/i915_pciids.h                | 11 +++++++----
>  5 files changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 48fd82722f12..c88e514728a0 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
>  #define IS_ADLP_RPLP(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
> +#define IS_ADLP_RPLU(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 6cc65079b18d..e9f3b99b3e00 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_DG1_IDS(&dg1_info),
>  	INTEL_RPLS_IDS(&adl_s_info),
>  	INTEL_RPLP_IDS(&adl_p_info),
> +	INTEL_RPLU_IDS(&adl_p_info),

You may want to drop this change, see later comment on how and why.

>  	INTEL_DG2_IDS(&dg2_info),
>  	INTEL_ATS_M_IDS(&ats_m_info),
>  	INTEL_MTL_IDS(&mtl_info),
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 849baf6c3b3c..fec8bd116436 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] = {
>  static const u16 subplatform_rpl_ids[] = {
>  	INTEL_RPLS_IDS(0),
>  	INTEL_RPLP_IDS(0),
> +	INTEL_RPLU_IDS(0)

Please always include the trailing , at the end to make future changes
easier. (However, you may want to drop this change altogether, see later
comment.)

> +};
> +
> +static const u16 subplatform_rplu_ids[] = {
> +	INTEL_RPLU_IDS(0),
>  };
>  
>  static const u16 subplatform_g10_ids[] = {
> @@ -268,6 +273,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_rpl_ids,
>  			      ARRAY_SIZE(subplatform_rpl_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_RPL);
> +		if (find_devid(devid, subplatform_rplu_ids,
> +			       ARRAY_SIZE(subplatform_rplu_ids)))
> +			mask |= BIT(INTEL_SUBPLATFORM_RPLU);
>  	} else if (find_devid(devid, subplatform_g10_ids,
>  			      ARRAY_SIZE(subplatform_g10_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_G10);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d588e5fd2eea..4a5cd337e4b5 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -127,6 +127,8 @@ enum intel_platform {
>   * bit set
>   */
>  #define INTEL_SUBPLATFORM_N    1
> +/* Sub Platform for RPL-U */

This comment really adds nothing, it's exactly the same as the macro
name.

> +#define INTEL_SUBPLATFORM_RPLU  2
>  
>  /* MTL */
>  #define INTEL_SUBPLATFORM_M	0
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 4a4c190f7698..758be5fb09a2 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -684,14 +684,17 @@
>  	INTEL_VGA_DEVICE(0xA78A, info), \
>  	INTEL_VGA_DEVICE(0xA78B, info)
>  
> +/* RPL-U */
> +#define INTEL_RPLU_IDS(info) \
> +	INTEL_VGA_DEVICE(0xA721, info), \
> +	INTEL_VGA_DEVICE(0xA7A1, info), \
> +	INTEL_VGA_DEVICE(0xA7A9, info)
> +
>  /* RPL-P */
>  #define INTEL_RPLP_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA720, info), \
> -	INTEL_VGA_DEVICE(0xA721, info), \
>  	INTEL_VGA_DEVICE(0xA7A0, info), \
> -	INTEL_VGA_DEVICE(0xA7A1, info), \
> -	INTEL_VGA_DEVICE(0xA7A8, info), \
> -	INTEL_VGA_DEVICE(0xA7A9, info)
> +	INTEL_VGA_DEVICE(0xA7A8, info)

Changing the INTEL_RPLP_IDS impacts arch/x86/kernel/early-quirks.c
too. As is, this drops the early quirks from RPL-U.

Your options are 1) modify early-quirks.c too, or 2) include RPL-U ids
in RPL-P:

  #define INTEL_RPLP_IDS(info) \
+	INTEL_RPLU_IDS(info), \
-	INTEL_VGA_DEVICE(0xA721, info), \
 	INTEL_VGA_DEVICE(0xA7A0, info), \
-	INTEL_VGA_DEVICE(0xA7A1, info), \
-	INTEL_VGA_DEVICE(0xA7A8, info), \
-	INTEL_VGA_DEVICE(0xA7A9, info)
+	INTEL_VGA_DEVICE(0xA7A8, info)

With option 2, you also don't need to add INTEL_RPLU_IDS separately to
subplatform_rpl_ids[] or pciidlist[].

I might lean towards option 2, but no strong opinions.


BR,
Jani.


>  
>  /* DG2 */
>  #define INTEL_DG2_G10_IDS(info) \

-- 
Jani Nikula, Intel Open Source Graphics Center
