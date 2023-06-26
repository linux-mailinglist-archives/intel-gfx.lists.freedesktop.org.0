Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2EB73DEEB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 14:22:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A76110E04B;
	Mon, 26 Jun 2023 12:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4CAF10E04B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 12:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687782124; x=1719318124;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SeTwuq4x7Ne3ONEoQPEnny1/g8ysNM2oFzoG8k0KaCg=;
 b=eUdJ3eBjWNxTqkKCFd4zdldl6uH24pPWnp52+xgzAjLpeuid7ZR3FbXK
 rVIpu/BHeA9eLg99a1KKYWTivvtVj3SAYwyKRYDsBRd+4vHHmTzG3i1mU
 mQ2rgmexAcRoHA7FlHPBTtR1RXHPU7RhmR4Q1dxlMUIvf+63FcpOPMRzZ
 +2LEBbfRfe5bTO1N21nPC/oMK17gN0w8chAixiYUt7817yXDKt8JYgagu
 O14jeiHeBWkfWnJF+lLiUAs06bivGbxOUCKC2XoiAxQFdMc3M/1wRre2I
 xv/gChWXmzijjWKTKZW8YlVXz4v6g5n9ZWFnER7Lkr+wKVWODbYzY1Ppw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="447639103"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="447639103"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:22:03 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="751058496"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="751058496"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.41.186])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:21:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230626055444.1113796-2-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
 <20230626055444.1113796-2-chaitanya.kumar.borah@intel.com>
Date: Mon, 26 Jun 2023 15:21:37 +0300
Message-ID: <87mt0mv2ge.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/color: Add function to load
 degamma LUT in MTL
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

On Mon, 26 Jun 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
> 16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
> bit precision. Until a new uapi comes along to support higher bitdepth,
> upscale the values sent from userland to 24 bit before writing into the
> HW to continue supporting degamma on MTL.
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 42 ++++++++++++++++++++--
>  1 file changed, 40 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 8966e6560516..25c73e2e6fa3 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1498,6 +1498,38 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
>  	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe), 0);
>  }
>  
> +static void mtl_load_degamma_lut(const struct intel_crtc_state *crtc_state,
> +				 const struct drm_property_blob *blob)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct drm_color_lut *degamma_lut = blob->data;
> +	enum pipe pipe = crtc->pipe;
> +	int i, lut_size = drm_color_lut_size(blob);
> +
> +	/*
> +	 * When setting the auto-increment bit, the hardware seems to
> +	 * ignore the index bits, so we need to reset it to index 0
> +	 * separately.
> +	 */
> +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
> +			  PRE_CSC_GAMC_AUTO_INCREMENT);
> +
> +	for (i = 0; i < lut_size; i++) {
> +		u64 word = mul_u32_u32(degamma_lut[i].green, (1 << 24)) / (1 << 16);
> +		u32 lut_val = (word & 0xffffff);
> +
> +		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe),
> +				  lut_val);
> +	}
> +	/* Clamp values > 1.0. */
> +	while (i++ < glk_degamma_lut_size(i915))
> +		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe), 1 << 24);
> +
> +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
> +}

Please adjust glk_load_degamma_lut() instead of copy-pasting the entire
thing with small modifications. One of which is breaking dsb use.

You'll probably also want to add small conversion helpers between 16 and
24 bits instead of doing them inline.

BR,
Jani.


> +
>  static void glk_load_luts(const struct intel_crtc_state *crtc_state)
>  {
>  	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
> @@ -1635,11 +1667,17 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>  
>  static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
>  	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
>  
> -	if (pre_csc_lut)
> -		glk_load_degamma_lut(crtc_state, pre_csc_lut);
> +	if (pre_csc_lut) {
> +		if (DISPLAY_VER(i915) >= 14)
> +			mtl_load_degamma_lut(crtc_state, pre_csc_lut);
> +		else
> +			glk_load_degamma_lut(crtc_state, pre_csc_lut);
> +	}
>  
>  	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
>  	case GAMMA_MODE_MODE_8BIT:

-- 
Jani Nikula, Intel Open Source Graphics Center
