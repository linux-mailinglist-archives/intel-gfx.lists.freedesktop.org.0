Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 817EE426790
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 12:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6E5C6E0D6;
	Fri,  8 Oct 2021 10:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28BC56E0D6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 10:19:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="207288134"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="207288134"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:19:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="439885291"
Received: from ssedpiaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.186])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:19:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211006204937.30774-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-3-ville.syrjala@linux.intel.com>
Date: Fri, 08 Oct 2021 13:19:14 +0300
Message-ID: <874k9ryg2l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/16] drm/i915: Shrink {icl_mg,
 tgl_dkl}_phy_ddi_buf_trans
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
> All the values we have in {icl_mg,tgl_dkl}_phy_ddi_buf_trans
> fit into u8. Shrink the types accordingly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index 82fdc5ecd9de..2133984a572b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -34,15 +34,15 @@ struct icl_ddi_buf_trans {
>  };
>=20=20
>  struct icl_mg_phy_ddi_buf_trans {
> -	u32 cri_txdeemph_override_11_6;
> -	u32 cri_txdeemph_override_5_0;
> -	u32 cri_txdeemph_override_17_12;
> +	u8 cri_txdeemph_override_11_6;
> +	u8 cri_txdeemph_override_5_0;
> +	u8 cri_txdeemph_override_17_12;
>  };
>=20=20
>  struct tgl_dkl_phy_ddi_buf_trans {
> -	u32 vswing;
> -	u32 preshoot;
> -	u32 de_emphasis;
> +	u8 vswing;
> +	u8 preshoot;
> +	u8 de_emphasis;
>  };
>=20=20
>  struct dg2_snps_phy_buf_trans {

--=20
Jani Nikula, Intel Open Source Graphics Center
