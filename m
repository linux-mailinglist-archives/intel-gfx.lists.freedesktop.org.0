Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB756072A1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 10:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3602110E649;
	Fri, 21 Oct 2022 08:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E55C10E646
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 08:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666341691; x=1697877691;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YLzpTrN8LFe0RVGaSVNBmkFL20oJufk/mOkrRGk0yP0=;
 b=WSjwh/pQGkg3NTU3/Z5haahumaXf8e79JDKAB44zfZ5l/AaPi7nm+qzc
 iSkFND20Jyq/Y6YTIzy/JC2/fSDjMS/wWidvoRq1dkGHZl23PK3DWco6k
 GboCBw1pc+WpwpnL7AyKlkP7eKpuQZq22SSB0MTP0CnoozDZR9E3o3hpe
 7Gn1p4A6JEUJ367vRLBiMMHHHYTvY716cgBwP0Oj1dLe74rZcezuX85L5
 HHROO6RxCQ17kK90NSRjUi/GUTZfKt/s0FuCwRniAXlpg26+lnd7fVkal
 AHeRLwVboNv+k7opEjFtR1BGw8QLZbNF1/ajacJRNzSTpsykGnz+rHUPy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="306942469"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="306942469"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:41:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="772925400"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="772925400"
Received: from avilla3-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.53.153])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:41:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221021002024.390052-5-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-5-anusha.srivatsa@intel.com>
Date: Fri, 21 Oct 2022 11:41:27 +0300
Message-ID: <87sfjhfu14.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Move squash_ctl
 register programming to its own function
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
> No functional change. Introduce dg2_cdclk_squash_programming and
> move squash_ctl register programming bits to this.
>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++++---------
>  1 file changed, 14 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 8701796788e3..b692186c8f02 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1705,6 +1705,18 @@ static void bxt_cdclk_pll(struct drm_i915_private =
*i915, int vco)
>=20=20
>  }
>=20=20
> +static void dg2_cdclk_squash_programming(struct drm_i915_private *i915,
> +					 u16 waveform)

Function names that are verbs should preferrably use the imperative
mood, i.e. program() instead of programmed(), programs() or
programming().

I'm also not sure "programming" or "program" is a very descriptive
thing; almost everything here is about "programming" something or other.

BR,
Jani.


> +{
> +	u32 squash_ctl =3D 0;
> +
> +	if (waveform)
> +		squash_ctl =3D CDCLK_SQUASH_ENABLE |
> +			     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> +
> +	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
> +}
> +
>  static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
> @@ -1752,15 +1764,8 @@ static void bxt_set_cdclk(struct drm_i915_private =
*dev_priv,
>  	else
>  		clock =3D cdclk;
>=20=20
> -	if (HAS_CDCLK_SQUASH(dev_priv)) {
> -		u32 squash_ctl =3D 0;
> -
> -		if (waveform)
> -			squash_ctl =3D CDCLK_SQUASH_ENABLE |
> -				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> -
> -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> -	}
> +	if (HAS_CDCLK_SQUASH(dev_priv))
> +		dg2_cdclk_squash_programming(dev_priv, waveform);
>=20=20
>  	val =3D bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |

--=20
Jani Nikula, Intel Open Source Graphics Center
