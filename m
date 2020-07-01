Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6E0210A9A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 13:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5AAB6E89A;
	Wed,  1 Jul 2020 11:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6BB96E89A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 11:57:25 +0000 (UTC)
IronPort-SDR: WHd1gyqCXb/O292D/IiPUfFlPLvi3NXaIypE6JqnZVMXGUvo2SMAT2Pnz20TG0CW2VNtoI4aG2
 sOP+e3Pgt7QQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="164556185"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="164556185"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 04:57:25 -0700
IronPort-SDR: aZgcbXEKkoQf7oyJGjLNBuWbqI3NS6LKDmMCXNNFQOcRk6c9QloeWiFBscZ6Lm+i/zf4hH0gIv
 qcKa10f+4H3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="313749149"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 01 Jul 2020 04:57:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 14:57:22 +0300
Date: Wed, 1 Jul 2020 14:57:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200701115722.GY6112@intel.com>
References: <20200701010655.226379-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701010655.226379-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Implement WA
 18011464164
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

On Tue, Jun 30, 2020 at 06:06:54PM -0700, Jos=E9 Roberto de Souza wrote:
> This fix some possible corruptions.
> =

> v2:
> Renamed SLICE_UNIT_LEVEL_CLOCK_GATING_CTL to
> SLICE_UNIT_LEVEL_CLKGATE_CTL_94D8

Spec people are getting creative with the naming :/

> =

> BSpec: 52755
> BSpec: 52890
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 3 +++
>  drivers/gpu/drm/i915/intel_pm.c | 8 +++++++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 9d6536afc94b..76bc70d214b6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4174,6 +4174,9 @@ enum {
>  #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
>  #define   CGPSF_CLKGATE_DIS		(1 << 3)
>  =

> +#define SLICE_UNIT_LEVEL_CLKGATE_CTL_94D8	_MMIO(0x94D8)
> +#define   GS_UNIT_CLOCK_GATING_DIS		REG_BIT(24)
> +
>  /*
>   * Display engine regs
>   */
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 2a32d6230795..80293e3e48ad 100644
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
> +				 SLICE_UNIT_LEVEL_CLKGATE_CTL_94D8, 0,
> +				 GS_UNIT_CLOCK_GATING_DIS);

Still looks like the wrong place for gt w/as though.

>  }
>  =

>  static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
