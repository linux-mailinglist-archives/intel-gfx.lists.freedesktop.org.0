Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D49706AC093
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 14:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D2810E0AC;
	Mon,  6 Mar 2023 13:17:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561C910E0AC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 13:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678108648; x=1709644648;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KK//83qJ5ujBC4aXYWwac1BXA5Qr510zD+Y13/HxUnk=;
 b=VXVKFcZI4YhEWykrJTwSCQ3S2sh3CMfruO0Dmt71mCsZHsFQotY6qKKO
 PnhcZEUIYIVB3yxtfy3YCpDqn3grqoDtp5JOiBM45mmVbvkORB1+ZwXfq
 OKI4CyL5Ds4KpRH3Rnx19t3i2Np/fWZhEnYb83vgPPj+dwi/QuTTBgnWS
 3AniPbJQf2uUOoteAGoAYyaDrhj26Qd9L+nalspNGYVfVoXv6uq3m/o5i
 qGnnI65hDxmXZ8jQZse3b4igAN5B56u5eULCLs6oyrg25XSpQfftty8Je
 HFl4krSh2diyiZnh/F2yYO2shKamXijlEQG2WfIUS2580a2EtuAPC5K9r g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="337866604"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="337866604"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 05:17:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="708647969"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="708647969"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.213.86.193])
 ([10.213.86.193])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 05:17:25 -0800
Message-ID: <40c41c96-b373-876a-b421-94264428ca4d@intel.com>
Date: Mon, 6 Mar 2023 18:47:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230306080401.22552-1-stanislav.lisovskiy@intel.com>
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <20230306080401.22552-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure DSC has enough BW and
 stays within HW limits
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 06-Mar-23 1:34 PM, Stanislav Lisovskiy wrote:
> We have currently the issue with some BPPs when using DSC
 >> Nitpick: We currently have an issue with some BPPs when using DSC.

> According the HW team the reason is that single VDSC engine instance,
 >> Nitpick: According "to" the ..

> has some BW limitations which have to be accounted, so whenever
> we approach around 90% of the CDCLK, second VDSC engine have to be
> used. Also that always means using 2 slices, however in our current code
> amount of slices is calculated for some reason independently of
> whether we need to enable 2nd VDSC engine or not, thus leading to
> some logical issues, when according to pixel clock needs we need to enable
> 2nd VDSC engine, however as we calculated previously that we can use
> only single slice, we can't do that and fail.
> So we need to fix that, so that amount of VDSC engines enabled should depend
> on amount of slices and amount of slices should also depend on BW requirements.
> Lastly we didn't have BPP limitation for ADLP/MTL/DG2 implemented which says
> that DSC output BPP's can only be chosen within range of 8 to 27(BSpec 49259).
> This all applied together allows to fix existing FIFO underruns, which we
> have in many DSC tests.
> 
> BSpec: 49259
> HSDES: 18027167222

Also, please add closes 
https://gitlab.freedesktop.org/drm/intel/-/issues/8231
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
>   1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index aee93b0d810e..e3680ae95b83 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -687,6 +687,12 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>   	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
>   	if (DISPLAY_VER(i915) >= 13) {
>   		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
> +
> +		/* According to BSpec, 27 is the max DSC output bpp */
> +		bits_per_pixel = min(bits_per_pixel, (u32)27);
> +
> +		/* According to BSpec, 8 is the min DSC output bpp */
> +		bits_per_pixel = max(bits_per_pixel, (u32)8);
>   	} else {
>   		/* Find the nearest match in the array of known BPPs from VESA */
>   		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
> @@ -771,6 +777,9 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>   		min_slice_count = DIV_ROUND_UP(mode_clock,
>   					       DP_DSC_MAX_ENC_THROUGHPUT_1);
>   
> +	if (mode_clock >= ((i915->display.cdclk.max_cdclk_freq * 85) / 100))
> +		min_slice_count = max(min_slice_count, (u8)2);
> +
>   	max_slice_width = drm_dp_dsc_sink_max_slice_width(intel_dp->dsc_dpcd);
>   	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
>   		drm_dbg_kms(&i915->drm,
> @@ -1597,16 +1606,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   	 * is greater than the maximum Cdclock and if slice count is even
>   	 * then we need to use 2 VDSC instances.
>   	 */
> -	if (adjusted_mode->crtc_clock > dev_priv->display.cdclk.max_cdclk_freq ||
> -	    pipe_config->bigjoiner_pipes) {
> -		if (pipe_config->dsc.slice_count > 1) {
> -			pipe_config->dsc.dsc_split = true;
> -		} else {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Cannot split stream to use 2 VDSC instances\n");
> -			return -EINVAL;
> -		}
> -	}
> +	if (pipe_config->bigjoiner_pipes || pipe_config->dsc.slice_count > 1)
> +		pipe_config->dsc.dsc_split = true;
>   
>   	ret = intel_dp_dsc_compute_params(&dig_port->base, pipe_config);
>   	if (ret < 0) {

-- 
~Swati Sharma
