Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E95C049CC85
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 15:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7507410E5B8;
	Wed, 26 Jan 2022 14:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC17F10E5B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 14:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643208012; x=1674744012;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=E/EYGj+yfYZAfjyADmTF1Dk/VUNPO0GwJYUWjRUqbIk=;
 b=BSlp0fcSnih63Zg3K86FLEThJN45eVqJIPxquEuOBeaLdi3chCbZU/GB
 DdrKfyENfFLehl+XitG1Hy0PRxtPhjTdZutT5PuP4XGUeVJX0vZya/krm
 bt4R/k+PvN/hYGNScKp6KIUTM66Kkg7sEUv3AUHrNpuwR4ry49E2DWX6D
 FNsRuv3Vw2qlgc4sqlN7QT9dAi5rEbam/etCQeSjDJw2J9biQkMcTDN4G
 Q5PVQSeoxcTtuze7g72Ty05UOWm2EbgpMkkRSRZomJuHPMlej4CZSmNTC
 +sutYCs/XXaIJTHGCtO/GuXHqj3+Y+OQPy2mhYH2yyqSO6ElN3O6Ehy8F g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="227233874"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="227233874"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:40:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="628318933"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:40:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211112193813.8224-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-6-ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 16:40:07 +0200
Message-ID: <87czkezhko.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Clean up
 PCH_TRANSCONF/TRANS_DP_CTL bit defines
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

On Fri, 12 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_BIT & co. for PCH_TRANSCONF/TRANS_DP_CTL bits, and
> adjust the naming a some bits to be more consistent.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_pch_display.c  | 13 +++--
>  drivers/gpu/drm/i915/i915_reg.h               | 58 +++++++++----------
>  2 files changed, 33 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index 81ab761251ae..155c2d19a6bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -166,11 +166,11 @@ static void ilk_enable_pch_transcoder(const struct =
intel_crtc_state *crtc_state)
>  	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_ILK) =3D=3D PIPECONF_INTERL=
ACE_IF_ID_ILK) {
>  		if (HAS_PCH_IBX(dev_priv) &&
>  		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
> -			val |=3D TRANS_LEGACY_INTERLACED_ILK;
> +			val |=3D TRANS_INTERLACE_LEGACY_VSYNC_IBX;
>  		else
> -			val |=3D TRANS_INTERLACED;
> +			val |=3D TRANS_INTERLACE_INTERLACED;
>  	} else {
> -		val |=3D TRANS_PROGRESSIVE;
> +		val |=3D TRANS_INTERLACE_PROGRESSIVE;
>  	}
>=20=20
>  	intel_de_write(dev_priv, reg, val | TRANS_ENABLE);
> @@ -279,7 +279,8 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>=20=20
>  		temp =3D intel_de_read(dev_priv, reg);
>  		temp &=3D ~(TRANS_DP_PORT_SEL_MASK |
> -			  TRANS_DP_SYNC_MASK |
> +			  TRANS_DP_VSYNC_ACTIVE_HIGH |
> +			  TRANS_DP_HSYNC_ACTIVE_HIGH |
>  			  TRANS_DP_BPC_MASK);
>  		temp |=3D TRANS_DP_OUTPUT_ENABLE;
>  		temp |=3D bpc << 9; /* same format but at 11:9 */
> @@ -423,9 +424,9 @@ static void lpt_enable_pch_transcoder(struct drm_i915=
_private *dev_priv,
>  	pipeconf_val =3D intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
>=20=20
>  	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) =3D=3D PIPECONF_INTERL=
ACE_IF_ID_ILK)
> -		val |=3D TRANS_INTERLACED;
> +		val |=3D TRANS_INTERLACE_INTERLACED;
>  	else
> -		val |=3D TRANS_PROGRESSIVE;
> +		val |=3D TRANS_INTERLACE_PROGRESSIVE;
>=20=20
>  	intel_de_write(dev_priv, LPT_TRANSCONF, val);
>  	if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index d2d5b2fa2a4a..eea009e76e15 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8994,22 +8994,19 @@ enum {
>  #define _PCH_TRANSBCONF              0xf1008
>  #define PCH_TRANSCONF(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSACONF, _PCH_TRANS=
BCONF)
>  #define LPT_TRANSCONF		PCH_TRANSCONF(PIPE_A) /* lpt has only one transco=
der */
> -#define  TRANS_DISABLE          (0 << 31)
> -#define  TRANS_ENABLE           (1 << 31)
> -#define  TRANS_STATE_MASK       (1 << 30)
> -#define  TRANS_STATE_DISABLE    (0 << 30)
> -#define  TRANS_STATE_ENABLE     (1 << 30)
> -#define  TRANS_FRAME_START_DELAY_MASK	(3 << 27) /* ibx */
> -#define  TRANS_FRAME_START_DELAY(x)	((x) << 27) /* ibx: 0-3 */
> -#define  TRANS_INTERLACE_MASK   (7 << 21)
> -#define  TRANS_PROGRESSIVE      (0 << 21)
> -#define  TRANS_INTERLACED       (3 << 21)
> -#define  TRANS_LEGACY_INTERLACED_ILK (2 << 21)
> -#define  TRANS_8BPC             (0 << 5)
> -#define  TRANS_10BPC            (1 << 5)
> -#define  TRANS_6BPC             (2 << 5)
> -#define  TRANS_12BPC            (3 << 5)
> -
> +#define  TRANS_ENABLE			REG_BIT(31)
> +#define  TRANS_STATE_ENABLE		REG_BIT(30)
> +#define  TRANS_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27) /* ibx */
> +#define  TRANS_FRAME_START_DELAY(x)	REG_FIELD_PREP(TRANS_FRAME_START_DEL=
AY_MASK, (x)) /* ibx: 0-3 */
> +#define  TRANS_INTERLACE_MASK		REG_GENMASK(23, 21)
> +#define  TRANS_INTERLACE_PROGRESSIVE	REG_FIELD_PREP(TRANS_INTERLACE_MASK=
, 0)
> +#define  TRANS_INTERLACE_LEGACY_VSYNC_IBX	REG_FIELD_PREP(TRANS_INTERLACE=
_MASK, 2) /* ibx */
> +#define  TRANS_INTERLACE_INTERLACED	REG_FIELD_PREP(TRANS_INTERLACE_MASK,=
 3)
> +#define  TRANS_BPC_MASK			REG_GENMASK(7, 5) /* ibx */
> +#define  TRANS_BPC_8			REG_FIELD_PREP(TRANS_BPC_MASK, 0)
> +#define  TRANS_BPC_10			REG_FIELD_PREP(TRANS_BPC_MASK, 1)
> +#define  TRANS_BPC_6			REG_FIELD_PREP(TRANS_BPC_MASK, 2)
> +#define  TRANS_BPC_12			REG_FIELD_PREP(TRANS_BPC_MASK, 3)
>  #define _TRANSA_CHICKEN1	 0xf0060
>  #define _TRANSB_CHICKEN1	 0xf1060
>  #define TRANS_CHICKEN1(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN1, _TRANSB_=
CHICKEN1)
> @@ -9219,22 +9216,19 @@ enum {
>  #define _TRANS_DP_CTL_B		0xe1300
>  #define _TRANS_DP_CTL_C		0xe2300
>  #define TRANS_DP_CTL(pipe)	_MMIO_PIPE(pipe, _TRANS_DP_CTL_A, _TRANS_DP_C=
TL_B)
> -#define  TRANS_DP_OUTPUT_ENABLE	(1 << 31)
> -#define  TRANS_DP_PORT_SEL_MASK		(3 << 29)
> -#define  TRANS_DP_PORT_SEL_NONE		(3 << 29)
> -#define  TRANS_DP_PORT_SEL(port)	(((port) - PORT_B) << 29)
> -#define  TRANS_DP_AUDIO_ONLY	(1 << 26)
> -#define  TRANS_DP_ENH_FRAMING	(1 << 18)
> -#define  TRANS_DP_8BPC		(0 << 9)
> -#define  TRANS_DP_10BPC		(1 << 9)
> -#define  TRANS_DP_6BPC		(2 << 9)
> -#define  TRANS_DP_12BPC		(3 << 9)
> -#define  TRANS_DP_BPC_MASK	(3 << 9)
> -#define  TRANS_DP_VSYNC_ACTIVE_HIGH	(1 << 4)
> -#define  TRANS_DP_VSYNC_ACTIVE_LOW	0
> -#define  TRANS_DP_HSYNC_ACTIVE_HIGH	(1 << 3)
> -#define  TRANS_DP_HSYNC_ACTIVE_LOW	0
> -#define  TRANS_DP_SYNC_MASK	(3 << 3)
> +#define  TRANS_DP_OUTPUT_ENABLE		REG_BIT(31)
> +#define  TRANS_DP_PORT_SEL_MASK		REG_GENMASK(30, 29)
> +#define  TRANS_DP_PORT_SEL_NONE		REG_FIELD_PREP(TRANS_DP_PORT_SEL_MASK, =
3)
> +#define  TRANS_DP_PORT_SEL(port)	REG_FIELD_PREP(TRANS_DP_PORT_SEL_MASK, =
(port) - PORT_B)
> +#define  TRANS_DP_AUDIO_ONLY		REG_BIT(26)
> +#define  TRANS_DP_ENH_FRAMING		REG_BIT(18)
> +#define  TRANS_DP_BPC_MASK		REG_GENMASK(10, 9)
> +#define  TRANS_DP_BPC_8			REG_FIELD_PREP(TRANS_DP_BPC_MASK, 0)
> +#define  TRANS_DP_BPC_10		REG_FIELD_PREP(TRANS_DP_BPC_MASK, 1)
> +#define  TRANS_DP_BPC_6			REG_FIELD_PREP(TRANS_DP_BPC_MASK, 2)
> +#define  TRANS_DP_BPC_12		REG_FIELD_PREP(TRANS_DP_BPC_MASK, 3)
> +#define  TRANS_DP_VSYNC_ACTIVE_HIGH	REG_BIT(4)
> +#define  TRANS_DP_HSYNC_ACTIVE_HIGH	REG_BIT(3)
>=20=20
>  #define _TRANS_DP2_CTL_A			0x600a0
>  #define _TRANS_DP2_CTL_B			0x610a0

--=20
Jani Nikula, Intel Open Source Graphics Center
