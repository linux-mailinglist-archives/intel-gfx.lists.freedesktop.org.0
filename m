Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3A660DC8C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 09:52:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF5B10E48F;
	Wed, 26 Oct 2022 07:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608B510E493
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 07:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666770733; x=1698306733;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=p6JTZdAmOnCuB2+9IEKzAjpQvJUKicVqGgcHwv8vzTM=;
 b=LBhvaEzgryawLlOFL5a5/Ih3kgZ7EKLWd0qlhX3I+SBHuklwV6vGkCFM
 N67ZUEBEeXcXvvqe0TQZWf1+PjG7L2T4M4pSQ/h09mlfjLGaJhv4axz3/
 07Udgp+vU0hslyAadvxR6AD1qPrrcAZJRGum652Q1pjl6A8Bs90F/lLRv
 67iJSez+2DaTmQQ3HBD7G/CCw1tC9j39Z3ZbiyR8JCtXIurKWwiaa/Fv+
 s6J91O1oIkPKmR5iptCu+IfUfCH/TArU25uhCuFsPTul/aGHgmssF0rUV
 rfsPDBFPTyM7mPJuBgngaVRJ5c4RMXRYb9pmQLv2Jn0FCJvOGMYZhLYXF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309574933"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309574933"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 00:52:12 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="961121899"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="961121899"
Received: from pszulc-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.16])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 00:52:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221025223042.138810-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221025223042.138810-1-anusha.srivatsa@intel.com>
Date: Wed, 26 Oct 2022 10:52:08 +0300
Message-ID: <8735bbdntj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [CI 1/4] drm/i915/display: Change terminology for
 cdclk actions
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

On Tue, 25 Oct 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> No functional changes. Changing terminology in some
> print statements. s/has_cdclk_squasher/has_cdclk_squash,
> s/crawler/crawl and s/squasher/squash.

Any particular reason you re-sent this for CI? You know you can re-run
tests from the patchwork page if the patches remain unchanged?

BR,
Jani.


>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel=
.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index ad401357ab66..0f5add2fc51b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1220,7 +1220,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_pri=
vate *dev_priv)
>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>=20=20
> -static bool has_cdclk_squasher(struct drm_i915_private *i915)
> +static bool has_cdclk_squash(struct drm_i915_private *i915)
>  {
>  	return IS_DG2(i915);
>  }
> @@ -1520,7 +1520,7 @@ static void bxt_get_cdclk(struct drm_i915_private *=
dev_priv,
>  		return;
>  	}
>=20=20
> -	if (has_cdclk_squasher(dev_priv))
> +	if (has_cdclk_squash(dev_priv))
>  		squash_ctl =3D intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
>=20=20
>  	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
> @@ -1747,7 +1747,7 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
>  	else
>  		clock =3D cdclk;
>=20=20
> -	if (has_cdclk_squasher(dev_priv)) {
> +	if (has_cdclk_squash(dev_priv)) {
>  		u32 squash_ctl =3D 0;
>=20=20
>  		if (waveform)
> @@ -1845,7 +1845,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_priv=
ate *dev_priv)
>  	expected =3D skl_cdclk_decimal(cdclk);
>=20=20
>  	/* Figure out what CD2X divider we should be using for this cdclk */
> -	if (has_cdclk_squasher(dev_priv))
> +	if (has_cdclk_squash(dev_priv))
>  		clock =3D dev_priv->display.cdclk.hw.vco / 2;
>  	else
>  		clock =3D dev_priv->display.cdclk.hw.cdclk;
> @@ -1976,7 +1976,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_=
private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (!has_cdclk_squasher(dev_priv))
> +	if (!has_cdclk_squash(dev_priv))
>  		return false;
>=20=20
>  	return a->cdclk !=3D b->cdclk &&
> @@ -2028,7 +2028,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_=
i915_private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (has_cdclk_squasher(dev_priv))
> +	if (has_cdclk_squash(dev_priv))
>  		return false;
>=20=20
>  	return a->cdclk !=3D b->cdclk &&
> @@ -2754,12 +2754,12 @@ int intel_modeset_calc_cdclk(struct intel_atomic_=
state *state)
>  				   &old_cdclk_state->actual,
>  				   &new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Can change cdclk via squasher\n");
> +			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
>  					 &old_cdclk_state->actual,
>  					 &new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Can change cdclk via crawl\n");
> +			    "Can change cdclk via crawling\n");
>  	} else if (pipe !=3D INVALID_PIPE) {
>  		new_cdclk_state->pipe =3D pipe;

--=20
Jani Nikula, Intel Open Source Graphics Center
