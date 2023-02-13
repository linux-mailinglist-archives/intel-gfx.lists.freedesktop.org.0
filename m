Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06286694F59
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 19:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5126F10E690;
	Mon, 13 Feb 2023 18:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83F710E689
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 18:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676312879; x=1707848879;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BovHgAo/QxZqdcoSveBM3zUacbeDRIO6ygXKLhepJkI=;
 b=Y459dO59p5t3aWY2RPazltcGgdrynZwNM3mLOEcDGPM/ffj1fJ9vvaxo
 BKrQlX7AEEfPW42yzxthG98kQp/xUd0DECz4HGvmG9fo0l8mRy4dA5y8G
 Nehyl0KNRcsKnTsu3NtkP6FIDRXZLLmekYKyKvlN6/v+OjbPyFjU+xCCL
 YWuu5v3PaANvWsEmORxFUd2bl5CUexuqNRyINK5/XI0COqHQnW8lMyxT2
 581Z2LcSmElnk1AdpKOEoUzOlGKyLp5lXj+J79nrq8JJsWrNLNIb/pC/S
 8imvuWbIdSVyJnvL+dOkFBU5qd1SqPjL0P3kN5cAo9IhW7ibRMCOcJ3bh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="395572436"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="395572436"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 10:27:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="737606356"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="737606356"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 10:27:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230202182012.3197674-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230202114613.3177235-2-suraj.kandpal@intel.com>
 <20230202182012.3197674-1-suraj.kandpal@intel.com>
Date: Mon, 13 Feb 2023 20:27:48 +0200
Message-ID: <87zg9hto7v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dp: Increase slice_height for DP
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

On Thu, 02 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> According VDSC spec 1.2a Section 3.8 Options for Slice
> implies that 108 lines is an optimal slice height, but any
> size can be used as long as vertical active
> integer multiple and maximum vertical slice count requirements are met.
>
> Bspec: 49259
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 62cbab7402e9..cb4fbcd935db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1415,6 +1415,30 @@ static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
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

I realize now that this loop will always find the slice_height as it
iterates to vactive inclusive. vactive % slice_height == 0 if
slice_height == vactive.

I did a bit of scripting on this. It seems pretty common to find a
slice_height < 200, especially for any of the more standard vactives I
checked, but maybe 8% go up to vactive/2, and 15% to vactive, for
arbitrary even vactives. But the ones that go big are typically fairly
obscure heights.

Maybe it's good enough.

> +
> +	if (vactive % 8 == 0)
> +		slice_height = 8;
> +	else if (vactive % 4 == 0)
> +		slice_height = 4;
> +	else
> +		slice_height = 2;
> +
> +	return slice_height;

Sorry to say, given what I said above, this fallback appears to be
unnecessary. Maybe just return 2 here instead of the if ladder?

BR,
Jani.


> +}
> +
>  static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *crtc_state)
>  {
> @@ -1433,17 +1457,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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
