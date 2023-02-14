Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB58695E2C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 10:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D32010E820;
	Tue, 14 Feb 2023 09:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8286C10E82E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 09:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676365652; x=1707901652;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=z1J9ELmG1LPVEvZ4J0vGphxQGNzFao41PdOdQmqOzIk=;
 b=nh+47qsJpZFOv38cQx24Ft5s07E7Pd5+nlpJE/n049zBtlW/0WguZaFv
 Fg8cyjGoTx2q/ndslRFSRZbDH2aRV/6vypd/93IPBGyI/JydYKPEN/48H
 doyI2iSFpc5dzE1ztAqybMQOn4J7ukDs3tfozn3obaQ5sRJk2q+lERSDb
 /g+zVJ5mgY4Zr6XrE9q9cezDAqiOboh2ZZJqAwarXyInEOjJtuI0UmV9Z
 dBMsS51FGpKem9dvDMB8H4s19FAZLhGDa8KCzRZzxo0+opoIHARAuHoe9
 Y+4sStoaFjZ/zECwI2NETMegPOiwv8Wp0T3gzbCgEqpUyFI0nIep1RxcZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="329743180"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="329743180"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:07:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="671157732"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="671157732"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:07:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230214052017.3312044-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230202182012.3197674-1-suraj.kandpal@intel.com>
 <20230214052017.3312044-1-suraj.kandpal@intel.com>
Date: Tue, 14 Feb 2023 11:07:28 +0200
Message-ID: <87ttzoty27.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dp: Increase slice_height for DP
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

On Tue, 14 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> According VDSC spec 1.2a Section 3.8 Options for Slice
> implies that 108 lines is an optimal slice height, but any
> size can be used as long as vertical active
> integer multiple and maximum vertical slice count requirements are met.
>
> Bspec: 49259
>
> --v3
> -remove previous fallback code and return slice_height as 2 [Jani]
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 62cbab7402e9..fe98c7dec193 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1415,6 +1415,27 @@ static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
>  		DP_DSC_MINOR_SHIFT;
>  }
>  
> +static int intel_dp_get_slice_height(int vactive)
> +{
> +	int slice_height;
> +
> +	/*
> +	 * VDSC1.2a spec in Section 3.8 Options for Slices implies that
> +	 * 108 lines is an optimal slice height,
> +	 * but any size can be used as long as vertical active integer
> +	 * multiple and maximum vertical slice count requirements are met.
> +	 */
> +	for (slice_height = 108; slice_height <= vactive; slice_height += 2)
> +		if (vactive % slice_height == 0)
> +			return slice_height;
> +
> +	/* Highly unlikely we reach here as most of the resloutions will end up
> +	 * finding appropriate slice_height in above loop but returning slice_height as 2
> +	 * here as it should work with all resolutions.
> +	 */

Thanks for the patch, pushed to drm-intel-next with the comment typo
fixed.

BR,
Jani.

> +	return 2;
> +}
> +
>  static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *crtc_state)
>  {
> @@ -1433,17 +1454,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>  	vdsc_cfg->pic_height = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  
> -	/*
> -	 * Slice Height of 8 works for all currently available panels. So start
> -	 * with that if pic_height is an integral multiple of 8. Eventually add
> -	 * logic to try multiple slice heights.
> -	 */
> -	if (vdsc_cfg->pic_height % 8 == 0)
> -		vdsc_cfg->slice_height = 8;
> -	else if (vdsc_cfg->pic_height % 4 == 0)
> -		vdsc_cfg->slice_height = 4;
> -	else
> -		vdsc_cfg->slice_height = 2;
> +	vdsc_cfg->slice_height = intel_dp_get_slice_height(vdsc_cfg->pic_height);
>  
>  	ret = intel_dsc_compute_params(crtc_state);
>  	if (ret)

-- 
Jani Nikula, Intel Open Source Graphics Center
