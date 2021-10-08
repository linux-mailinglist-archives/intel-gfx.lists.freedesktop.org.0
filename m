Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E903642678F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 12:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE326E0C4;
	Fri,  8 Oct 2021 10:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A6A6E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 10:19:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="225254074"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="225254074"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:19:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="478928752"
Received: from ssedpiaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:19:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211006204937.30774-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-2-ville.syrjala@linux.intel.com>
Date: Fri, 08 Oct 2021 13:18:57 +0300
Message-ID: <877denyg32.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915: Remove pointless extra
 namespace from dkl/snps buf trans structs
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

On Wed, 06 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The struct itself already has sufficient namespace. No need to
> duplicate it in the members.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c           |  6 +++---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 12 ++++++------
>  drivers/gpu/drm/i915/display/intel_snps_phy.c      |  6 +++---
>  3 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3f7bbeb3e3cd..d85d731e37fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1285,9 +1285,9 @@ static void tgl_dkl_phy_set_signal_levels(struct in=
tel_encoder *encoder,
>  	dpcnt_mask =3D (DKL_TX_PRESHOOT_COEFF_MASK |
>  		      DKL_TX_DE_EMPAHSIS_COEFF_MASK |
>  		      DKL_TX_VSWING_CONTROL_MASK);
> -	dpcnt_val =3D DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.dkl_vswin=
g_control);
> -	dpcnt_val |=3D DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.dkl_d=
e_emphasis_control);
> -	dpcnt_val |=3D DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.dkl_pres=
hoot_control);
> +	dpcnt_val =3D DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing);
> +	dpcnt_val |=3D DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_em=
phasis);
> +	dpcnt_val |=3D DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot=
);
>=20=20
>  	for (ln =3D 0; ln < 2; ln++) {
>  		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index 6cdb8e9073c7..82fdc5ecd9de 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -40,15 +40,15 @@ struct icl_mg_phy_ddi_buf_trans {
>  };
>=20=20
>  struct tgl_dkl_phy_ddi_buf_trans {
> -	u32 dkl_vswing_control;
> -	u32 dkl_preshoot_control;
> -	u32 dkl_de_emphasis_control;
> +	u32 vswing;
> +	u32 preshoot;
> +	u32 de_emphasis;
>  };
>=20=20
>  struct dg2_snps_phy_buf_trans {
> -	u8 snps_vswing;
> -	u8 snps_pre_cursor;
> -	u8 snps_post_cursor;
> +	u8 vswing;
> +	u8 pre_cursor;
> +	u8 post_cursor;
>  };
>=20=20
>  union intel_ddi_buf_trans_entry {
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/=
drm/i915/display/intel_snps_phy.c
> index b18f08c851dc..5e20f340730f 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -68,9 +68,9 @@ void intel_snps_phy_set_signal_levels(struct intel_enco=
der *encoder,
>  	for (ln =3D 0; ln < 4; ln++) {
>  		u32 val =3D 0;
>=20=20
> -		val |=3D REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, trans->entries[level].snp=
s.snps_vswing);
> -		val |=3D REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps=
.snps_pre_cursor);
> -		val |=3D REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snp=
s.snps_post_cursor);
> +		val |=3D REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, trans->entries[level].snp=
s.vswing);
> +		val |=3D REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps=
.pre_cursor);
> +		val |=3D REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snp=
s.post_cursor);
>=20=20
>  		intel_de_write(dev_priv, SNPS_PHY_TX_EQ(ln, phy), val);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
