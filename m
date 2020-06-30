Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA46F20F72B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 16:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C2689F49;
	Tue, 30 Jun 2020 14:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94FD689F49
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 14:28:15 +0000 (UTC)
IronPort-SDR: ViRL/5PByoZ9HSCgzJj6FHMTPxgZK2n7SUF8rMfI6qfXUz6pzFuQJA1kh7m559A5quf1BAr0oG
 WhWzjXBd/0sA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="125879726"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="125879726"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 07:28:15 -0700
IronPort-SDR: bT7OuXaa9g6ASkTFRqFxb+D1mjeAeExCt4RLos1kgC3mkr7CLOYHULn4f6KQfnNNDezod7Cbnf
 pgj0lPe3uSnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="321419668"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Jun 2020 07:28:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Jun 2020 17:28:12 +0300
Date: Tue, 30 Jun 2020 17:28:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200630142812.GF6112@intel.com>
References: <20200629212059.108460-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200629212059.108460-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement WA 18011464164
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 29, 2020 at 02:20:58PM -0700, Jos=E9 Roberto de Souza wrote:
> This fix some possible corruptions.
> =

> BSpec: 52755
> BSpec: 52890
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 3 +++
>  drivers/gpu/drm/i915/intel_pm.c | 8 +++++++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 284af0c6439c..797e036fa695 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4170,6 +4170,9 @@ enum {
>  #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
>  #define   CGPSF_CLKGATE_DIS		(1 << 3)
>  =

> +#define SLICE_UNIT_LEVEL_CLOCK_GATING_CTL	_MMIO(0x94D8)
> +#define   GS_UNIT_CLOCK_GATING_DIS		REG_BIT(24)
> +
>  /*
>   * Display engine regs
>   */
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 2a32d6230795..86408173c435 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7113,7 +7113,7 @@ static void tgl_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  	I915_WRITE(POWERGATE_ENABLE,
>  		   I915_READ(POWERGATE_ENABLE) | vd_pg_enable);
>  =

> -	/* Wa_1409825376:tgl (pre-prod)*/
> +	/* Wa_1409825376:tgl (pre-prod) */
>  	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
>  		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
> @@ -7121,6 +7121,12 @@ static void tgl_init_clock_gating(struct drm_i915_=
private *dev_priv)
>  	/* Wa_14011059788:tgl */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
>  			 0, DFR_DISABLE);
> +
> +	/* Wa_18011464164:tgl */
> +	if (IS_TGL_REVID(dev_priv, TGL_REVID_B0, TGL_REVID_B0))
> +		intel_uncore_rmw(&dev_priv->uncore,
> +				 SLICE_UNIT_LEVEL_CLOCK_GATING_CTL, 0,
> +				 GS_UNIT_CLOCK_GATING_DIS);

This looks like a gt w/a, so shouldn't be here preobably. We also have
a very similarly named register already at 0x94d4, so the register
name probably needs some work too.

>  }
>  =

>  static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
