Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C439C60725B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 10:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C83C10E51C;
	Fri, 21 Oct 2022 08:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43B110E51C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 08:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666341152; x=1697877152;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=y4XCacTlcoznoftOWgeoPl+IyrBhLosTjFjctm1Z0tw=;
 b=gyQr6BjuZVLozafYNh55rVVHec13Kpt3ra0OgySHtGrC3Gd4v5NqLjpn
 lk1MzgsX/lbZXdNxBQiC2K5EFc9daJjYnqKsuOimxEm0+UNSJ+1hknNbF
 3gxMFN+4CLfuv84S13Lx7WyNX8pASg6a/S3L3SwPUX431dpOThW1fWsKT
 PxLquGyosF9aixzKkGNJaBfIPnWJbzrXH4ZbbSapGHqj7VNfv1BRsEQxu
 ENnouILxWGDIzSfdYmvlSCUu2olE2CTkSxRdy6U6EquGLF3ioWpXD0WhH
 YQRs9NH+vCLuYvcwur3iAsUrDmOzi13YzFBGfgo2i0+bhvkBvEyPPck69 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="287351302"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="287351302"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:32:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="632800169"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="632800169"
Received: from avilla3-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.53.153])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:32:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221021002024.390052-4-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-4-anusha.srivatsa@intel.com>
Date: Fri, 21 Oct 2022 11:32:28 +0300
Message-ID: <87v8odfug3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Move chunks of code
 out of bxt_set_cdclk()
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Oct 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> No functional change. Moving segments out to simplify
> bxt_set_cdlck()
>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 40 ++++++++++++++--------
>  1 file changed, 25 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 45babbc6290f..8701796788e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1684,6 +1684,27 @@ static u32 cdclk_squash_waveform(struct drm_i915_p=
rivate *dev_priv,
>  	return 0xffff;
>  }
>=20=20
> +static void icl_cdclk_pll(struct drm_i915_private *i915, int vco)

The function name reads like it leaves something hanging in the air.

icl cdclk pll *what*?

Maybe update?

BR,
Jani.

> +{
> +	if (i915->display.cdclk.hw.vco !=3D 0 &&
> +	    i915->display.cdclk.hw.vco !=3D vco)
> +		icl_cdclk_pll_disable(i915);
> +
> +	if (i915->display.cdclk.hw.vco !=3D vco)
> +		icl_cdclk_pll_enable(i915, vco);
> +}
> +
> +static void bxt_cdclk_pll(struct drm_i915_private *i915, int vco)
> +{
> +	if (i915->display.cdclk.hw.vco !=3D 0 &&
> +	    i915->display.cdclk.hw.vco !=3D vco)
> +		bxt_de_pll_disable(i915);
> +
> +	if (i915->display.cdclk.hw.vco !=3D vco)
> +		bxt_de_pll_enable(i915, vco);
> +
> +}
> +
>  static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
> @@ -1719,21 +1740,10 @@ static void bxt_set_cdclk(struct drm_i915_private=
 *dev_priv,
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && =
vco > 0) {
>  		if (dev_priv->display.cdclk.hw.vco !=3D vco)
>  			adlp_cdclk_pll_crawl(dev_priv, vco);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> -		if (dev_priv->display.cdclk.hw.vco !=3D 0 &&
> -		    dev_priv->display.cdclk.hw.vco !=3D vco)
> -			icl_cdclk_pll_disable(dev_priv);
> -
> -		if (dev_priv->display.cdclk.hw.vco !=3D vco)
> -			icl_cdclk_pll_enable(dev_priv, vco);
> -	} else {
> -		if (dev_priv->display.cdclk.hw.vco !=3D 0 &&
> -		    dev_priv->display.cdclk.hw.vco !=3D vco)
> -			bxt_de_pll_disable(dev_priv);
> -
> -		if (dev_priv->display.cdclk.hw.vco !=3D vco)
> -			bxt_de_pll_enable(dev_priv, vco);
> -	}
> +	} else if (DISPLAY_VER(dev_priv) >=3D 11)
> +		icl_cdclk_pll(dev_priv, vco);
> +	else
> +		bxt_cdclk_pll(dev_priv, vco);
>=20=20
>  	waveform =3D cdclk_squash_waveform(dev_priv, cdclk);

--=20
Jani Nikula, Intel Open Source Graphics Center
