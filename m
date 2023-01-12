Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6F3667074
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 12:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF7110E1A4;
	Thu, 12 Jan 2023 11:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFEE610E19B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 11:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673521553; x=1705057553;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VwSIxLYaVwZFJIGTblOsWr7lkcSXFy2GOaZTRYBNukw=;
 b=jwQCo+M/2q7eE9kx6FeGnmiqUEyCaWuv24Kt5yIH+p7mBlECD0pCEmD0
 JKnOO5JGTHvHK795drqq0FRLU7cn0dpuCArqOrY5JeYN6zC3EN84RfHo/
 0Oa0NrNLI4lyQeUtG1TXlx8zOQdzssCaj4nj+9uFP3UYdFudSbjLj23ga
 HXV4KHkuNS3wRcwhnkmq+icSZ/4EqnA2PIuY5fgmlTSoY7FiJnj2YL7AV
 qPsGMHx+moxNMmD2/MOKfORGf5R2ictAiypRTnpM91/wkr/7LW8EJ9R+a
 +8aun33j5ESgU2M0X6d59sowpzHlRIroJbg2LFXqyLDSHSQz+9YK9tptG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="323734119"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="323734119"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 03:03:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="721073600"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="721073600"
Received: from tarynrox-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.27.83])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 03:03:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230112092758.539070-2-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
 <20230112092758.539070-2-chaitanya.kumar.borah@intel.com>
Date: Thu, 12 Jan 2023 13:03:44 +0200
Message-ID: <87zgaof20f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC v2 1/2] drm/i915: Add sub platform for 480MHz
 CDCLK step
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

On Thu, 12 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Add a new sub platform INTEL_SUBPLATFORM_480CDCLK to identify
> device ids that need the 480MHz CDCLK step. Separate out RPLU
> device ids and add them to both RPL and 480CDCLK subplatforms.
>
> v2: (Matt)
>   - Sort PCI-IDs numerically
>   - Name the sub-platform to accurately depict what it is for

Did Matt actually ask you to call it INTEL_SUBPLATFORM_480CDCLK?

Personally, I don't like it, because RPL-U has its own PCI IDs and
that's what it's called in the specs. I'd prefer what it was.

(The one outlier is INTEL_SUBPLATFORM_PORTF and I don't like that one
either.)

BR,
Jani.


>   - Make RPL-U part of RPL subplatform
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
> index 48fd82722f12..fc5518314598 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
>  #define IS_ADLP_RPLP(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
> +#define IS_ADLP_WITH_480CDCLK(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_480CDCLK)
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
>  	INTEL_DG2_IDS(&dg2_info),
>  	INTEL_ATS_M_IDS(&ats_m_info),
>  	INTEL_MTL_IDS(&mtl_info),
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 849baf6c3b3c..a1732ad519fb 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] = {
>  static const u16 subplatform_rpl_ids[] = {
>  	INTEL_RPLS_IDS(0),
>  	INTEL_RPLP_IDS(0),
> +	INTEL_RPLU_IDS(0)
> +};
> +
> +static const u16 subplatform_480cdclk_ids[] = {
> +	INTEL_RPLU_IDS(0),
>  };
>  
>  static const u16 subplatform_g10_ids[] = {
> @@ -268,6 +273,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_rpl_ids,
>  			      ARRAY_SIZE(subplatform_rpl_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_RPL);
> +		if (find_devid(devid, subplatform_480cdclk_ids,
> +			       ARRAY_SIZE(subplatform_480cdclk_ids)))
> +			mask |= BIT(INTEL_SUBPLATFORM_480CDCLK);
>  	} else if (find_devid(devid, subplatform_g10_ids,
>  			      ARRAY_SIZE(subplatform_g10_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_G10);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d588e5fd2eea..4f488c900273 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -127,6 +127,8 @@ enum intel_platform {
>   * bit set
>   */
>  #define INTEL_SUBPLATFORM_N    1
> +/* Sub Platform with 480MHz CDCLK step */
> +#define INTEL_SUBPLATFORM_480CDCLK  2
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
>  
>  /* DG2 */
>  #define INTEL_DG2_G10_IDS(info) \

-- 
Jani Nikula, Intel Open Source Graphics Center
