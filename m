Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221745FC77A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0481B10E54D;
	Wed, 12 Oct 2022 14:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6249110E507
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585395; x=1697121395;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jfeKLoUs7XFyBgceT4C/K9ePabHsLaHu+T+ZU2OFVcU=;
 b=kkXO7r0HhPCow5VBPeh7dA4hPGlh8LW913xgWDgsMMGsu5u0o02pL4Ot
 WZEqhN97TwiQD27/O6Z0efcl9oIy5K9I93JAQT3JPa0TifjnCWZU7AMKI
 nyxUd13GNIngUU6OjhFifRExg91OWT+qHSNmHNtenOIrW2Pn/EM2REOLy
 b7Y1w1jxfuxAAd2MoXXtOXMr+6L1E8p4RwdCILfzW/Mf48Q9zBJjLxJ6D
 4NwGMHwQUUtj87pdrKS/8/uqYcDnEd5wzR3pUJiDxWk1mkzSn9yfHDMBd
 80JgTgD93jKiZLykSUZOqG/XEuDaNUe4apzk8aap/0lQ82hX/esrqlKud A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="368976454"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="368976454"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:36:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="715941294"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="715941294"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:36:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-4-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:36:36 +0300
Message-ID: <87zge1un0r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/22] drm/i915/audio: Remove CL/BLC audio
 stuff
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
> We don't use the audio code on crestline (CL) since it doesn't
> support native HDMI output, and SDVO has it's own way of doing
> audio.
>
> And Bearlake-C (BLC) doesn't even exist in the real world, so
> no point it trying to deal with it.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 23 ++++---------------
>  .../gpu/drm/i915/display/intel_audio_regs.h   |  8 +------
>  2 files changed, 6 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index b6165bb57503..5517e0a6d868 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -336,17 +336,11 @@ static void g4x_audio_codec_disable(struct intel_en=
coder *encoder,
>  				    const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	u32 eldv, tmp;
> -
> -	tmp =3D intel_de_read(i915, G4X_AUD_VID_DID);
> -	if (tmp =3D=3D INTEL_AUDIO_DEVBLC || tmp =3D=3D INTEL_AUDIO_DEVCL)
> -		eldv =3D G4X_ELDV_DEVCL_DEVBLC;
> -	else
> -		eldv =3D G4X_ELDV_DEVCTG;
> +	u32 tmp;
>=20=20
>  	/* Invalidate ELD */
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp &=3D ~eldv;
> +	tmp &=3D ~G4X_ELDV;
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>  }
>=20=20
> @@ -357,24 +351,17 @@ static void g4x_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const u8 *eld =3D connector->eld;
> -	u32 eldv;
>  	u32 tmp;
>  	int len, i;
>=20=20
> -	tmp =3D intel_de_read(i915, G4X_AUD_VID_DID);
> -	if (tmp =3D=3D INTEL_AUDIO_DEVBLC || tmp =3D=3D INTEL_AUDIO_DEVCL)
> -		eldv =3D G4X_ELDV_DEVCL_DEVBLC;
> -	else
> -		eldv =3D G4X_ELDV_DEVCTG;
> -
>  	if (intel_eld_uptodate(connector,
> -			       G4X_AUD_CNTL_ST, eldv,
> +			       G4X_AUD_CNTL_ST, G4X_ELDV,
>  			       G4X_AUD_CNTL_ST, G4X_ELD_ADDR_MASK,
>  			       G4X_HDMIW_HDMIEDID))
>  		return;
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp &=3D ~(eldv | G4X_ELD_ADDR_MASK);
> +	tmp &=3D ~(G4X_ELDV | G4X_ELD_ADDR_MASK);
>  	len =3D (tmp >> 9) & 0x1f;		/* ELD buffer size */
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>=20=20
> @@ -384,7 +371,7 @@ static void g4x_audio_codec_enable(struct intel_encod=
er *encoder,
>  			       *((const u32 *)eld + i));
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp |=3D eldv;
> +	tmp |=3D G4X_ELDV;
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gp=
u/drm/i915/display/intel_audio_regs.h
> index e25248cdac51..ebbdd0654919 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -8,14 +8,8 @@
>=20=20
>  #include "i915_reg_defs.h"
>=20=20
> -#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(i915) + 0x62020)
> -#define   INTEL_AUDIO_DEVCL		0x808629FB
> -#define   INTEL_AUDIO_DEVBLC		0x80862801
> -#define   INTEL_AUDIO_DEVCTG		0x80862802
> -
>  #define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
> -#define   G4X_ELDV_DEVCL_DEVBLC		(1 << 13)
> -#define   G4X_ELDV_DEVCTG		(1 << 14)
> +#define   G4X_ELDV			(1 << 14)
>  #define   G4X_ELD_ADDR_MASK		(0xf << 5)
>  #define   G4X_ELD_ACK			(1 << 4)
>  #define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)

--=20
Jani Nikula, Intel Open Source Graphics Center
