Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0AC7A9201
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 09:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6142110E57D;
	Thu, 21 Sep 2023 07:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6530510E57C;
 Thu, 21 Sep 2023 07:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695280901; x=1726816901;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Bslg26FrupRP2+aUFgm7tEtxDKmyqlfu+NDlT2Dd5lg=;
 b=IgDoI1orfntriBHL7QtwNa11jWzO/lWYfW1JcGvqZsGpILMlP9T7hq01
 SVc93cKHZW8uYwqmCin5lVcClH6wGyUdP05guoJnWJ+yIfsiasaECw7dj
 YYr+MTpdQfLzk4OprJEaAx2TYtE2wffuxytzXe80Imc+H9WJMmC5Oju3A
 i/eug/KmjcM7s1Qn6Un9UCyPjN/OrrBwhKbc/5W+WKqPS1NuzVdZw/qSs
 7uAScZlGvqT88Nl/a9jEpYtU4r29lyb9gCmqY/T7oLUpH/53GG7YPmzT3
 xpNVhT7VblOxxws+sF/jxzpoekIrITHqhysViwmFqbmnh6DcbBbRzihT7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="379325483"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="379325483"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:17:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="920622942"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="920622942"
Received: from idubinov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.52.72])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:17:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
In-Reply-To: <20230920211934.14920-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230920211934.14920-1-ville.syrjala@linux.intel.com>
 <20230920211934.14920-2-ville.syrjala@linux.intel.com>
Date: Thu, 21 Sep 2023 10:17:32 +0300
Message-ID: <87bkdwq9kj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/bios: Fixup h/vsync_end
 instead of h/vtotal
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 21 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have the same h/vsync_end vs. h/vtotal quirk in the VBT parser
> that was also present in EDID parser. Adjust the VBT parser the
> same way as was done for hte EDID parser to fixup h/vsync_end
> instead of h/vtotal. While I'm not currently aware of any machines
> that need this for the VBT it seems prudent to keep both parsers
> in sync.
>
> And while at it let's add some debugs here as well. A bit
> lackluster but didn't feel like plumbing the connector all
> the way down at this time.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index f735b035436c..863ff54fffd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -521,7 +521,8 @@ static void init_bdb_blocks(struct drm_i915_private *=
i915,
>  }
>=20=20
>  static void
> -fill_detail_timing_data(struct drm_display_mode *panel_fixed_mode,
> +fill_detail_timing_data(struct drm_i915_private *i915,
> +			struct drm_display_mode *panel_fixed_mode,
>  			const struct lvds_dvo_timing *dvo_timing)
>  {
>  	panel_fixed_mode->hdisplay =3D (dvo_timing->hactive_hi << 8) |
> @@ -561,11 +562,17 @@ fill_detail_timing_data(struct drm_display_mode *pa=
nel_fixed_mode,
>  	panel_fixed_mode->height_mm =3D (dvo_timing->vimage_hi << 8) |
>  		dvo_timing->vimage_lo;
>=20=20
> -	/* Some VBTs have bogus h/vtotal values */
> -	if (panel_fixed_mode->hsync_end > panel_fixed_mode->htotal)
> -		panel_fixed_mode->htotal =3D panel_fixed_mode->hsync_end + 1;
> -	if (panel_fixed_mode->vsync_end > panel_fixed_mode->vtotal)
> -		panel_fixed_mode->vtotal =3D panel_fixed_mode->vsync_end + 1;
> +	/* Some VBTs have bogus h/vsync_end values */
> +	if (panel_fixed_mode->hsync_end > panel_fixed_mode->htotal) {
> +		drm_dbg_kms(&i915->drm, "reducing hsync_end %d->%d\n",
> +			    panel_fixed_mode->hsync_end, panel_fixed_mode->htotal);
> +		panel_fixed_mode->hsync_end =3D panel_fixed_mode->htotal;
> +	}
> +	if (panel_fixed_mode->vsync_end > panel_fixed_mode->vtotal) {
> +		drm_dbg_kms(&i915->drm, "reducing vsync_end %d->%d\n",
> +			    panel_fixed_mode->vsync_end, panel_fixed_mode->vtotal);
> +		panel_fixed_mode->vsync_end =3D panel_fixed_mode->vtotal;
> +	}
>=20=20
>  	drm_mode_set_name(panel_fixed_mode);
>  }
> @@ -849,7 +856,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  	if (!panel_fixed_mode)
>  		return;
>=20=20
> -	fill_detail_timing_data(panel_fixed_mode, panel_dvo_timing);
> +	fill_detail_timing_data(i915, panel_fixed_mode, panel_dvo_timing);
>=20=20
>  	panel->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
>=20=20
> @@ -1134,7 +1141,7 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
>  	if (!panel_fixed_mode)
>  		return;
>=20=20
> -	fill_detail_timing_data(panel_fixed_mode, &dtds->dtds[index]);
> +	fill_detail_timing_data(i915, panel_fixed_mode, &dtds->dtds[index]);
>=20=20
>  	panel->vbt.sdvo_lvds_vbt_mode =3D panel_fixed_mode;

--=20
Jani Nikula, Intel
