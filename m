Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05725FC858
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D0710E335;
	Wed, 12 Oct 2022 15:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42A610E335
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665588300; x=1697124300;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=J96iJiOgvpZjp+IXk53aoSmdSOyt1r6ZixNQ0Ov4MpA=;
 b=Hg6P/NS/LoqYzJAPgSISnXEqQlfe4ThMrsAYcavP3xN1qFis1adlr5d0
 UuOyUefaZW2LBp2snsgX85nA7kHtH7hbMQXZHNJrDUgSwqqKxXS/kkb0K
 WIAmVxqtjrV1k8rxUB7iFbxfy0Qx0+vUj38IwGIU8Ke7celeRhfjYcpJ+
 UcBbF2iHsjzjU1/9+9f9otZhntE6+hy/Tao255LnQp23AKTGoIuZqWl5/
 BjZKQ9gdOTGR/mseDcvENOMgO2BLeVIqYvszR2azGqDtUN69YZodpXuXd
 NXvUGoEv9hIGx9y7IK1TQCRNaMdoF1HAv7jPTZyw9qxSnsGmuPH6deehV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="285204653"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="285204653"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:25:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="871949291"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="871949291"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:24:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-21-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-21-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:25:02 +0300
Message-ID: <87mta1t67l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 20/22] drm/i915/audio: Hook up ELD into the
 state checker
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Have the state checker validate the ELD. For now we'll
> just dump it out as a hex buffer on a mismatch, maybe
> someone will get inspired to decode it properly at some
> point...
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c52da2a21896..ef5087af9405 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5419,6 +5419,12 @@ intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_s=
dp *a,
>  	return memcmp(a, b, sizeof(*a)) =3D=3D 0;
>  }
>=20=20
> +static bool
> +intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
> +{
> +	return memcmp(a, b, len) =3D=3D 0;
> +}
> +
>  static void
>  pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
>  			       bool fastset, const char *name,
> @@ -5469,6 +5475,30 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_pr=
ivate *dev_priv,
>  	}
>  }
>=20=20
> +static void
> +pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
> +			    bool fastset, const char *name,
> +			    const u8 *a, const u8 *b, size_t len)
> +{
> +	if (fastset) {
> +		if (!drm_debug_enabled(DRM_UT_KMS))
> +			return;
> +
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "fastset mismatch in %s buffer\n", name);
> +		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
> +			       16, 0, a, len, false);
> +		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
> +			       16, 0, b, len, false);
> +	} else {
> +		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
> +		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
> +			       16, 0, a, len, false);
> +		print_hex_dump(KERN_ERR, "found: ", DUMP_PREFIX_NONE,
> +			       16, 0, b, len, false);
> +	}
> +}
> +
>  static void __printf(4, 5)
>  pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
>  		     const char *name, const char *format, ...)
> @@ -5701,6 +5731,18 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	} \
>  } while (0)
>=20=20
> +#define PIPE_CONF_CHECK_BUFFER(name, len) do { \
> +	BUILD_BUG_ON(sizeof(current_config->name) !=3D (len)); \
> +	BUILD_BUG_ON(sizeof(pipe_config->name) !=3D (len)); \
> +	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len=
))) { \
> +		pipe_config_buffer_mismatch(dev_priv, fastset, __stringify(name), \
> +					    current_config->name, \
> +					    pipe_config->name, \
> +					    (len)); \
> +		ret =3D false; \
> +	} \
> +} while (0)
> +
>  #define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
>  	if (current_config->name1 !=3D pipe_config->name1) { \
>  		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
> @@ -5779,6 +5821,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	PIPE_CONF_CHECK_BOOL(fec_enable);
>=20=20
>  	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
> +	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
>=20=20
>  	PIPE_CONF_CHECK_X(gmch_pfit.control);
>  	/* pfit ratios are autocomputed by the hw on gen4+ */

--=20
Jani Nikula, Intel Open Source Graphics Center
