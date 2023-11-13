Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D99B47EA08E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:51:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED5E10E3C3;
	Mon, 13 Nov 2023 15:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DDE10E3C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699890705; x=1731426705;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=x+w1BR2eBCIf9yFtVv3YMQWBKgrdUxEoevayHvlliTY=;
 b=TgggKUUI/HPJzw3IrI+4PCRHC71N9MtKtty3oEgNNFgQNkxXCBEr/L47
 mjUCATIzWW7WfpP+11w32Vjex0jkP0MI3keSWQAXNuZvEG5wBD+BzygIe
 Xmv9dvHX98yMSQEF7FPYSTD5/x+haqp90hVYqyR+gasg+hgxkH1beVlQd
 51sKoOe6vCm7ksLFO51utzYCF7iD2SmnuApBMn+RjQOd3gYIC+/R7aKDG
 dWnM+ows0xZIqeVQTRBUpzLAVx/xLAIEX+AFPMwHuRTKzyFVwpIis9P6C
 VUqT8F2jAbUEB+da7ElhEA48+omg0A3V7KgxVAJ3/tnGqEJ3iil/B6MEI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="421559215"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="421559215"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:51:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="854991480"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="854991480"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:51:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-12-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:51:41 +0200
Message-ID: <87il65tzw2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915: Implement audio fastset
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

On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There's no real why we'd need a full modeset for audio changes.

+reason

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> So let's allow audio to be toggled during fastset. In case the
> ELD changes while has_audio isn't changing state we force both
> audio disable and enable so the new ELD gets propagated to the
> audio driver.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 32 ++++++--------------
>  1 file changed, 10 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 98d4fcd28073..a87a9ac63c4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -996,7 +996,9 @@ static bool audio_enabling(const struct intel_crtc_st=
ate *old_crtc_state,
>  	if (!new_crtc_state->hw.active)
>  		return false;
>=20=20
> -	return is_enabling(has_audio, old_crtc_state, new_crtc_state);
> +	return is_enabling(has_audio, old_crtc_state, new_crtc_state) ||
> +		(new_crtc_state->has_audio &&
> +		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) !=3D =
0);
>  }
>=20=20
>  static bool audio_disabling(const struct intel_crtc_state *old_crtc_stat=
e,
> @@ -1005,7 +1007,9 @@ static bool audio_disabling(const struct intel_crtc=
_state *old_crtc_state,
>  	if (!old_crtc_state->hw.active)
>  		return false;
>=20=20
> -	return is_disabling(has_audio, old_crtc_state, new_crtc_state);
> +	return is_disabling(has_audio, old_crtc_state, new_crtc_state) ||
> +		(old_crtc_state->has_audio &&
> +		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) !=3D =
0);
>  }
>=20=20
>  #undef is_disabling
> @@ -5123,23 +5127,6 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	} \
>  } while (0)
>=20=20
> -/*
> - * Checks state where we only read out the enabling, but not the entire
> - * state itself (like full infoframes or ELD for audio). These states
> - * require a full modeset on bootup to fix up.
> - */
> -#define PIPE_CONF_CHECK_BOOL_INCOMPLETE(name) do { \
> -	if (!fixup_inherited || (!current_config->name && !pipe_config->name)) =
{ \
> -		PIPE_CONF_CHECK_BOOL(name); \
> -	} else { \
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> -				     "unable to verify whether state matches exactly, forcing modese=
t (expected %s, found %s)", \
> -				     str_yes_no(current_config->name), \
> -				     str_yes_no(pipe_config->name)); \
> -		ret =3D false; \
> -	} \
> -} while (0)
> -
>  #define PIPE_CONF_CHECK_P(name) do { \
>  	if (current_config->name !=3D pipe_config->name) { \
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> @@ -5327,8 +5314,10 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	PIPE_CONF_CHECK_BOOL(enhanced_framing);
>  	PIPE_CONF_CHECK_BOOL(fec_enable);
>=20=20
> -	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
> -	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
> +	if (!fastset) {
> +		PIPE_CONF_CHECK_BOOL(has_audio);
> +		PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
> +	}
>=20=20
>  	PIPE_CONF_CHECK_X(gmch_pfit.control);
>  	/* pfit ratios are autocomputed by the hw on gen4+ */
> @@ -5498,7 +5487,6 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_BOOL
> -#undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
>  #undef PIPE_CONF_CHECK_P
>  #undef PIPE_CONF_CHECK_FLAGS
>  #undef PIPE_CONF_CHECK_COLOR_LUT

--=20
Jani Nikula, Intel
