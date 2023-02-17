Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CA369A5AE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 07:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF1910E3E8;
	Fri, 17 Feb 2023 06:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1AAF10E3E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 06:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676616019; x=1708152019;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=pR3OEp0D9XJ3YnUwf3L+QBFW5dUSbuVi+7ZUqZSDlRc=;
 b=ifjDZG0m5Nb92lnHcLBdLsCR9q0+8JMFHbBW7ZOjdl4orqbM1cIffQe+
 lECKKoPsup9yrgav13Oj+4HG+QGU7f9QoXulrL2BMqJJrK7Q90MQT5C4i
 ljnbLgzzXhuYpyN/Z2xSpoTIeEyK6EncooyGHk5OFW7lwxODLEUkjrrPS
 9MEY5aFxPKUZuL+VceAUWdSZI5WOFISs82iOcGyvhTQ18wEmNBeHxN3hN
 XuOj+u0DZsLzDwt7SSTNjD9wQoam7uWzGqSpvmb3Ho4UOz9vZ3JDvnU4Z
 En2mYcX5IZg0Wf1k3FeJDne2hA0wopKYD8Arlj6qSIte1qb0GC5BcsNo9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311555672"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311555672"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 22:40:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="700809426"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="700809426"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 16 Feb 2023 22:40:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Feb 2023 08:40:15 +0200
Date: Fri, 17 Feb 2023 08:40:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y+8hT3rFr42SXYO2@intel.com>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
 <20230216231312.32664-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230216231312.32664-4-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Split map_aux_ch() into
 per-platform arrays
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

On Fri, Feb 17, 2023 at 01:13:12AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The big switch+if statement mess in map_aux_ch() is
> illegible. Split up into cleaner per-platform arrays
> like we already have for the gmbus pins.
> 
> To save space in the arrays we shift away the lower nibble
> of the VBT AUX CH byte since it's always zero anyway.
> 
> Extra care must be taken to not leave any holes in the
> arrays because zero initialization would cause them to
> be interpreted as AUX_CH_A. While technically we could
> leave AUX_CH_NONE entries from the end of the array
> (as the whole array would then be smaller) I decided to
> fully pad out the arrays to set a good example. Another
> complication with that would be that the VBT AUX CH
> values are not in a sensible order (eg. DP_AUX_A==0x40).

It occurs to me that one way to avoid these problems would
be to reverse the roles of the index and value. The lookup
would then have to search through the array, but that
doesn't seem too terrible.

> 
> TODO: Didn't bother with the platform variants beyond the
>       ones that really need remapping, which means if the
>       VBT is bogus we end up with a nonexistent aux ch.
>       Might be nice to check this a bit better.
>       Yet another bitmask in device info?
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 157 ++++++++++++----------
>  1 file changed, 86 insertions(+), 71 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index f35ef3675d39..6d9957690a0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3572,84 +3572,99 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  	return false;
>  }
>  
> +/*
> + * Warning: the aux_ch map arrays must not be populated
> + * sparsely because AUX_CH_A==0. Pad any holes with AUX_CH_NONE.
> + */
> +static const enum aux_ch xelpd_aux_ch_map[] = {
> +	[DP_AUX_A >> 4] = AUX_CH_A,
> +	[DP_AUX_B >> 4] = AUX_CH_B,
> +	[DP_AUX_C >> 4] = AUX_CH_C,
> +	[DP_AUX_D >> 4] = AUX_CH_D_XELPD,
> +	[DP_AUX_E >> 4] = AUX_CH_E_XELPD,
> +	[DP_AUX_F >> 4] = AUX_CH_USBC1,
> +	[DP_AUX_G >> 4] = AUX_CH_USBC2,
> +	[DP_AUX_H >> 4] = AUX_CH_USBC3,
> +	[DP_AUX_I >> 4] = AUX_CH_USBC4,
> +};
> +
> +/*
> + * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
> + * map to DDI A,TC1,TC2,TC3,TC4 respectively.
> + */
> +static const enum aux_ch adls_aux_ch_map[] = {
> +	[DP_AUX_A >> 4] = AUX_CH_A,
> +	[DP_AUX_B >> 4] = AUX_CH_USBC1,
> +	[DP_AUX_C >> 4] = AUX_CH_USBC2,
> +	[DP_AUX_D >> 4] = AUX_CH_USBC3,
> +	[DP_AUX_E >> 4] = AUX_CH_USBC4,
> +	[DP_AUX_F >> 4] = AUX_CH_NONE,
> +	[DP_AUX_G >> 4] = AUX_CH_NONE,
> +	[DP_AUX_H >> 4] = AUX_CH_NONE,
> +	[DP_AUX_I >> 4] = AUX_CH_NONE,
> +};
> +
> +/*
> + * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
> + * map to DDI A,B,TC1,TC2 respectively.
> + */
> +static const enum aux_ch rkl_aux_ch_map[] = {
> +	[DP_AUX_A >> 4] = AUX_CH_A,
> +	[DP_AUX_B >> 4] = AUX_CH_B,
> +	[DP_AUX_C >> 4] = AUX_CH_USBC1,
> +	[DP_AUX_D >> 4] = AUX_CH_USBC2,
> +	[DP_AUX_E >> 4] = AUX_CH_NONE,
> +	[DP_AUX_F >> 4] = AUX_CH_NONE,
> +	[DP_AUX_G >> 4] = AUX_CH_NONE,
> +	[DP_AUX_H >> 4] = AUX_CH_NONE,
> +	[DP_AUX_I >> 4] = AUX_CH_NONE,
> +};
> +
> +static const enum aux_ch direct_aux_ch_map[] = {
> +	[DP_AUX_A >> 4] = AUX_CH_A,
> +	[DP_AUX_B >> 4] = AUX_CH_B,
> +	[DP_AUX_C >> 4] = AUX_CH_C,
> +	[DP_AUX_D >> 4] = AUX_CH_D, /* aka AUX_CH_USBC1 */
> +	[DP_AUX_E >> 4] = AUX_CH_E, /* aka AUX_CH_USBC2 */
> +	[DP_AUX_F >> 4] = AUX_CH_F, /* aka AUX_CH_USBC3 */
> +	[DP_AUX_G >> 4] = AUX_CH_G, /* aka AUX_CH_USBC4 */
> +	[DP_AUX_H >> 4] = AUX_CH_H, /* aka AUX_CH_USBC5 */
> +	[DP_AUX_I >> 4] = AUX_CH_I, /* aka AUX_CH_USBC6 */
> +};
> +
>  static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_channel)
>  {
> -	enum aux_ch aux_ch;
> +	const enum aux_ch *aux_ch_map;
> +	int index, n_entries;
>  
>  	/*
> -	 * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
> -	 * map to DDI A,B,TC1,TC2 respectively.
> -	 *
> -	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
> -	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
> +	 * The lower nibble is always 0 and we
> +	 * don't include it in the array index.
>  	 */
> -	switch (aux_channel) {
> -	case DP_AUX_A:
> -		aux_ch = AUX_CH_A;
> -		break;
> -	case DP_AUX_B:
> -		if (IS_ALDERLAKE_S(i915))
> -			aux_ch = AUX_CH_USBC1;
> -		else
> -			aux_ch = AUX_CH_B;
> -		break;
> -	case DP_AUX_C:
> -		if (IS_ALDERLAKE_S(i915))
> -			aux_ch = AUX_CH_USBC2;
> -		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
> -			aux_ch = AUX_CH_USBC1;
> -		else
> -			aux_ch = AUX_CH_C;
> -		break;
> -	case DP_AUX_D:
> -		if (DISPLAY_VER(i915) >= 13)
> -			aux_ch = AUX_CH_D_XELPD;
> -		else if (IS_ALDERLAKE_S(i915))
> -			aux_ch = AUX_CH_USBC3;
> -		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
> -			aux_ch = AUX_CH_USBC2;
> -		else
> -			aux_ch = AUX_CH_D;
> -		break;
> -	case DP_AUX_E:
> -		if (DISPLAY_VER(i915) >= 13)
> -			aux_ch = AUX_CH_E_XELPD;
> -		else if (IS_ALDERLAKE_S(i915))
> -			aux_ch = AUX_CH_USBC4;
> -		else
> -			aux_ch = AUX_CH_E;
> -		break;
> -	case DP_AUX_F:
> -		if (DISPLAY_VER(i915) >= 13)
> -			aux_ch = AUX_CH_USBC1;
> -		else
> -			aux_ch = AUX_CH_F;
> -		break;
> -	case DP_AUX_G:
> -		if (DISPLAY_VER(i915) >= 13)
> -			aux_ch = AUX_CH_USBC2;
> -		else
> -			aux_ch = AUX_CH_G;
> -		break;
> -	case DP_AUX_H:
> -		if (DISPLAY_VER(i915) >= 13)
> -			aux_ch = AUX_CH_USBC3;
> -		else
> -			aux_ch = AUX_CH_H;
> -		break;
> -	case DP_AUX_I:
> -		if (DISPLAY_VER(i915) >= 13)
> -			aux_ch = AUX_CH_USBC4;
> -		else
> -			aux_ch = AUX_CH_I;
> -		break;
> -	default:
> -		MISSING_CASE(aux_channel);
> -		aux_ch = AUX_CH_A;
> -		break;
> +	index = aux_channel >> 4;
> +
> +	if (DISPLAY_VER(i915) >= 13) {
> +		aux_ch_map = xelpd_aux_ch_map;
> +		n_entries = ARRAY_SIZE(xelpd_aux_ch_map);
> +	} else if (IS_ALDERLAKE_S(i915)) {
> +		aux_ch_map = adls_aux_ch_map;
> +		n_entries = ARRAY_SIZE(adls_aux_ch_map);
> +	} else if (IS_DG1(i915) || IS_ROCKETLAKE(i915)) {
> +		aux_ch_map = rkl_aux_ch_map;
> +		n_entries = ARRAY_SIZE(rkl_aux_ch_map);
> +	} else {
> +		aux_ch_map = direct_aux_ch_map;
> +		n_entries = ARRAY_SIZE(direct_aux_ch_map);
>  	}
>  
> -	return aux_ch;
> +	if (index < n_entries && aux_ch_map[index] != AUX_CH_NONE)
> +		return aux_ch_map[index];
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "Ignoring alternate AUX CH: VBT claims AUX 0x%x, which is not valid for this platform\n",
> +		    aux_channel);
> +
> +	return AUX_CH_NONE;
>  }
>  
>  enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
