Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A958690D2B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 16:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC85A10E213;
	Thu,  9 Feb 2023 15:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20ED910EAFA
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 15:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675957238; x=1707493238;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=huscaxsLpKnnwpxUkNebY44h2BGcSAixPyWXdurW6qQ=;
 b=LhJVsKNPdmN9MJ8XMeumNpDM92L82KTst12jYhwxd+fINa8Xkpg5AfXb
 p2bF/h6VZYP3z4ZBh8HCDkVObdvohYDKelXi3Opj8N5+fgXl0DosFI7a9
 IwXyxYq8UgU/hN5BN8+pdHeeu6ylzSI3smffuXS8qDEM25bIaaEQdE+zu
 FDSJwvk/N+LEnIJtFXDZgn2Fc75pnhc1aSusXy1jXQg+awZthTTPM6pD/
 PJECoLs4xfSzF/4esBo3kieTkiDb0yXmQ2dW3rvKDys4OHb8N2Nnqxnlo
 SDsnShaj7yvzBwEt8fAP//ruVDfHrspxBgPfPFruWZDRQbGRF94zWGtUm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="332274520"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="332274520"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 07:40:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="841661967"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="841661967"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.157])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 07:40:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230209003251.32021-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230209003251.32021-1-ville.syrjala@linux.intel.com>
Date: Thu, 09 Feb 2023 17:40:31 +0200
Message-ID: <87v8kax2xc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Populate wm.max_level for
 everyone
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

On Thu, 09 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Switch ilk+ and skl+ platforms to also setting up
> wm.max_level and remove a bunch of if ladders as a result.
>
> There will be a tiny change in the debugfs on CHV machines
> that have DVFS disabled in the BIOS. Presviously debugfs
> would show the latency for the DVFS level as well, but
> that will no longer be the case. Which is arguably better
> as that number is absolutely meaningless when DVFS can't
> be enabled anyway.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c   | 18 ++----------------
>  drivers/gpu/drm/i915/display/skl_watermark.c   |  5 +++++
>  drivers/gpu/drm/i915/intel_pm.c                | 18 +++++++-----------
>  3 files changed, 14 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 9e2fb8626c96..b5a2f1a27870 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1288,14 +1288,7 @@ static void wm_latency_show(struct seq_file *m, co=
nst u16 wm[8])
>  	int level;
>  	int num_levels;
>=20=20
> -	if (IS_CHERRYVIEW(dev_priv))
> -		num_levels =3D 3;
> -	else if (IS_VALLEYVIEW(dev_priv))
> -		num_levels =3D 1;
> -	else if (IS_G4X(dev_priv))
> -		num_levels =3D 3;
> -	else
> -		num_levels =3D ilk_wm_max_level(dev_priv) + 1;
> +	num_levels =3D ilk_wm_max_level(dev_priv) + 1;
>=20=20
>  	drm_modeset_lock_all(&dev_priv->drm);
>=20=20
> @@ -1407,14 +1400,7 @@ static ssize_t wm_latency_write(struct file *file,=
 const char __user *ubuf,
>  	int ret;
>  	char tmp[32];
>=20=20
> -	if (IS_CHERRYVIEW(dev_priv))
> -		num_levels =3D 3;
> -	else if (IS_VALLEYVIEW(dev_priv))
> -		num_levels =3D 1;
> -	else if (IS_G4X(dev_priv))
> -		num_levels =3D 3;
> -	else
> -		num_levels =3D ilk_wm_max_level(dev_priv) + 1;
> +	num_levels =3D ilk_wm_max_level(dev_priv) + 1;
>=20=20
>  	if (len >=3D sizeof(tmp))
>  		return -EINVAL;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 022aed8dd440..97dc66012bdc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3258,6 +3258,11 @@ static void skl_read_wm_latency(struct drm_i915_pr=
ivate *i915, u16 wm[])
>=20=20
>  static void skl_setup_wm_latency(struct drm_i915_private *i915)
>  {
> +	if (HAS_HW_SAGV_WM(i915))
> +		i915->display.wm.max_level =3D 5;
> +	else
> +		i915->display.wm.max_level =3D 7;
> +
>  	if (DISPLAY_VER(i915) >=3D 14)
>  		mtl_read_wm_latency(i915, i915->display.wm.skl_latency);
>  	else
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index e0364c4141b8..3e13b940444a 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2836,6 +2836,8 @@ static void hsw_read_wm_latency(struct drm_i915_pri=
vate *i915, u16 wm[])
>  {
>  	u64 sskpd;
>=20=20
> +	i915->display.wm.max_level =3D 4;
> +
>  	sskpd =3D intel_uncore_read64(&i915->uncore, MCH_SSKPD);
>=20=20
>  	wm[0] =3D REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
> @@ -2851,6 +2853,8 @@ static void snb_read_wm_latency(struct drm_i915_pri=
vate *i915, u16 wm[])
>  {
>  	u32 sskpd;
>=20=20
> +	i915->display.wm.max_level =3D 3;
> +
>  	sskpd =3D intel_uncore_read(&i915->uncore, MCH_SSKPD);
>=20=20
>  	wm[0] =3D REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
> @@ -2863,6 +2867,8 @@ static void ilk_read_wm_latency(struct drm_i915_pri=
vate *i915, u16 wm[])
>  {
>  	u32 mltr;
>=20=20
> +	i915->display.wm.max_level =3D 2;
> +
>  	mltr =3D intel_uncore_read(&i915->uncore, MLTR_ILK);
>=20=20
>  	/* ILK primary LP0 latency is 700 ns */
> @@ -2889,17 +2895,7 @@ static void intel_fixup_cur_wm_latency(struct drm_=
i915_private *dev_priv,
>=20=20
>  int ilk_wm_max_level(const struct drm_i915_private *dev_priv)
>  {
> -	/* how many WM levels are we expecting */
> -	if (HAS_HW_SAGV_WM(dev_priv))
> -		return 5;
> -	else if (DISPLAY_VER(dev_priv) >=3D 9)
> -		return 7;
> -	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> -		return 4;
> -	else if (DISPLAY_VER(dev_priv) >=3D 6)
> -		return 3;
> -	else
> -		return 2;
> +	return dev_priv->display.wm.max_level;
>  }
>=20=20
>  void intel_print_wm_latency(struct drm_i915_private *dev_priv,

--=20
Jani Nikula, Intel Open Source Graphics Center
