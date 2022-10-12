Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8CF5FC788
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0341C10E2EA;
	Wed, 12 Oct 2022 14:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D25D10E2EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585495; x=1697121495;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7uzuFvtAGHLbBYPHkREx8H+sqpFHNcaXrH4Zs7D1juU=;
 b=GOpXRLP1bC/AIxRJ8z+5syradgMctioWofsjRDq8IXYTJ6LW7zLtGQQQ
 97v48fSRBk1sG8U+jhUfe41elADrn8s1VFMqwXL0N1VDeqqX7SjGMvjQy
 N1ay6vrwN8PR0NXRwOHVpAj6+5dnqf8qVoWjExvjHALoPzG+h6ve+jt/V
 Y618ak/ej8XyMSEZQEm9FiqEmUqgGOz2TCHf6tZlFQi+KTaX2OVgVy14Z
 Hl3faTRVI9M+3BtYZknwOzjiwArtDIsxucXriouWELMcKwYlaZNvuMW7c
 pFlXpdrmmCy7tyGFrghZiPGhDHljkBGtmHIAKwI+Kf2GsnqdI2YiGxpff A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="284536685"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="284536685"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:38:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="695494424"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="695494424"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:38:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-8-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:38:16 +0300
Message-ID: <87o7uhumxz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/audio: Protect singleton
 register with a lock
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
> On the "ilk" platforms AUD_CNTL_ST2 is a singleton. Protect
> it with the audio mutex in case we ever want to do parallel
> RMW access to it.
>
> Currently that should not happen since we only do audio
> enable/disable from full modesets, and those are fully
> serialized. But we probably want to think about toggling
> audio on/off from fastsets too.
>
> The hsw codepaths alreayd already have the same locking.
> g4x should not need it since it can only do audio to a
> single port at a time, which means it's actually broken
> in more ways than this atm.

"alreayd already"

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index c6f0c8be82b2..9a286d70e281 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -707,6 +707,8 @@ static void ilk_audio_codec_disable(struct intel_enco=
der *encoder,
>=20=20
>  	ilk_audio_regs_init(i915, pipe, &regs);
>=20=20
> +	mutex_lock(&i915->display.audio.mutex);
> +
>  	/* Disable timestamps */
>  	tmp =3D intel_de_read(i915, regs.aud_config);
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
> @@ -721,6 +723,8 @@ static void ilk_audio_codec_disable(struct intel_enco=
der *encoder,
>  	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
>  	tmp &=3D ~IBX_ELD_VALID(port);
>  	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
> +
> +	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20=20
>  static void ilk_audio_codec_enable(struct intel_encoder *encoder,
> @@ -749,6 +753,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>=20=20
>  	ilk_audio_regs_init(i915, pipe, &regs);
>=20=20
> +	mutex_lock(&i915->display.audio.mutex);
>=20=20
>  	/* Invalidate ELD */
>  	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> @@ -781,6 +786,8 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  	else
>  		tmp |=3D audio_config_hdmi_pixel_clock(crtc_state);
>  	intel_de_write(i915, regs.aud_config, tmp);
> +
> +	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
