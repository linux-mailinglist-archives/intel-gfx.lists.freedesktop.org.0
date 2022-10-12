Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A06F05FC795
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 211EA10E2E3;
	Wed, 12 Oct 2022 14:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA93810E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585620; x=1697121620;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=57NIUr+PmxRQxBpaKJLc33GDbDjGFBoXEMoq80IptZ8=;
 b=QSTPTxwXn1H5cS/QxdyV73CE9rCqGkMsxn0WHmCeV+vthHsg5utOUCEg
 H7Pi11zU+a1O0QntEOZb2nMs/D30f2NUKICM0NQk3flc0c6TIT+EZ4XTq
 TIgmNU6IYQ7mGktpIOx+biecq6eaidjN+ztB328miJDnKMTly+pD3jz0z
 GjfIFJmNoCEGKBqbev2ogkfM3u58Fpcu2q2o/cEEuBTRuk73kTd5Rp7zm
 IVUylszhdpKC7u2m5jw1CXGE6kLLLyQc7FNApO8CXRVQi1kCpZBZi/Osk
 YjKSBQl6oMryBNlgu8n0Cly5Vwh7726732CUtrNgHCjOOUMKrMuXNNcmS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="288078038"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="288078038"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:40:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="955776625"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="955776625"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:40:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-9-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:40:20 +0300
Message-ID: <87leplumuj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/22] drm/i915/audio: Nuke
 intel_eld_uptodate()
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
> No idea why we do this ELD comparions on g4x before loading
> the new ELD. Seems entirely pointless so just get rid of it.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

A lot of this is there for hysterical raisins, dating back to before I
grouped all of this in this file. And that was eight years ago... I just
wasn't brave enough to modify it. *shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 33 ----------------------
>  1 file changed, 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 9a286d70e281..3f328913fc90 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -304,33 +304,6 @@ static int audio_config_hdmi_get_n(const struct inte=
l_crtc_state *crtc_state,
>  	return 0;
>  }
>=20=20
> -static bool intel_eld_uptodate(struct drm_connector *connector,
> -			       i915_reg_t reg_eldv, u32 bits_eldv,
> -			       i915_reg_t reg_elda, u32 bits_elda,
> -			       i915_reg_t reg_edid)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> -	const u8 *eld =3D connector->eld;
> -	u32 tmp;
> -	int i;
> -
> -	tmp =3D intel_de_read(i915, reg_eldv);
> -	tmp &=3D bits_eldv;
> -
> -	if (!tmp)
> -		return false;
> -
> -	tmp =3D intel_de_read(i915, reg_elda);
> -	tmp &=3D ~bits_elda;
> -	intel_de_write(i915, reg_elda, tmp);
> -
> -	for (i =3D 0; i < drm_eld_size(eld) / 4; i++)
> -		if (intel_de_read(i915, reg_edid) !=3D *((const u32 *)eld + i))
> -			return false;
> -
> -	return true;
> -}
> -
>  static void g4x_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -354,12 +327,6 @@ static void g4x_audio_codec_enable(struct intel_enco=
der *encoder,
>  	u32 tmp;
>  	int len, i;
>=20=20
> -	if (intel_eld_uptodate(connector,
> -			       G4X_AUD_CNTL_ST, G4X_ELD_VALID,
> -			       G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK,
> -			       G4X_HDMIW_HDMIEDID))
> -		return;
> -
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp &=3D ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
>  	len =3D REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);

--=20
Jani Nikula, Intel Open Source Graphics Center
