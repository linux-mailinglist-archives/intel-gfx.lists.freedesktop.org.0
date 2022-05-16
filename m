Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 805C3528431
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A251410E80B;
	Mon, 16 May 2022 12:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3BB10EA8A
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652704150; x=1684240150;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=YcEyXMV/MNhGDgX7wMsPtvkJzCQJp1Xdt5z3CEoGXSQ=;
 b=NN6eOWEuSMRUwv53wsBe6bqODmluM2VEcD6TgNk05Q/ONu1u+PWAqpG7
 f9ow2XyFrYfX7tNjWjrAVhuxqsXkJaiWFo2M6h/mZ5bjQBIuAdl26RZAH
 VeWJG/k18YDoSytyEdrlnJO8w0PYnz6TXHlaW2V7ZOEEr8gs3wUcgJ/pM
 tDY1GzQNgfd7L+sT4Jf0mHkn4DcRg5Ygx99WAh2CdVnaX5iRS9Z19Yf/R
 oV72iGl4xJ+3r4UbGmNH+6FnYWs5UF+RqNTIprf+MuEjHVfElYjsKlnsV
 A8Ef8gqTrXFCYZ86bLW+dqN4ZWrOkbB7mHX04iT+PHPq2rNpW52+k67Tu w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="250710623"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="250710623"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:29:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="568293865"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:29:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-6-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:29:05 +0300
Message-ID: <874k1phd9q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/26] drm/i915: Extract
 PIPE_CONF_CHECK_TIMINGS()
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Deduplicate the crtc_ timigns comparisons.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 45 ++++++++------------
>  1 file changed, 18 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7d488d320762..e38d93beafdd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6073,6 +6073,21 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	} \
>  } while (0)
>=20=20
> +#define PIPE_CONF_CHECK_TIMINGS(name) do { \
> +	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> +	PIPE_CONF_CHECK_I(name.crtc_htotal); \
> +	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
> +	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
> +	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
> +	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
> +	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> +	PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> +	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> +	PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> +	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> +	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> +} while (0)
> +
>  /* This is required for BDW+ where there is only one set of registers for
>   * switching between high and low RR.
>   * This macro can be used whenever a comparison has to be made between o=
ne
> @@ -6190,33 +6205,8 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	PIPE_CONF_CHECK_I(framestart_delay);
>  	PIPE_CONF_CHECK_I(msa_timing_delay);
>=20=20
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_start);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_end);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_start);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_end);
> -
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vdisplay);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vtotal);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_start);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_end);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_start);
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_end);
> -
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
> -
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
> +	PIPE_CONF_CHECK_TIMINGS(hw.pipe_mode);
> +	PIPE_CONF_CHECK_TIMINGS(hw.adjusted_mode);
>=20=20
>  	PIPE_CONF_CHECK_I(pixel_multiplier);
>=20=20
> @@ -6392,6 +6382,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #undef PIPE_CONF_CHECK_FLAGS
>  #undef PIPE_CONF_CHECK_CLOCK_FUZZY
>  #undef PIPE_CONF_CHECK_COLOR_LUT
> +#undef PIPE_CONF_CHECK_TIMINGS
>  #undef PIPE_CONF_QUIRK
>=20=20
>  	return ret;

--=20
Jani Nikula, Intel Open Source Graphics Center
