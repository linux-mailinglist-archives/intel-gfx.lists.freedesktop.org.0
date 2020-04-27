Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CA51BA4D3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 15:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D638986D;
	Mon, 27 Apr 2020 13:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0E189805
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 13:36:23 +0000 (UTC)
IronPort-SDR: elUGbzIqKJtwIstxU8nNZNmGKgl+CHanXirGYCc+CViHZZqiY4FGCna1lmi79zLboQrFFJ+0H3
 GtO4eFrQFqxA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 06:36:23 -0700
IronPort-SDR: qFklAHwWtHQmQn1bBOyatO7IzuFs4uRNFiwHiF3N+h+RZ87XF+hgwTbP/LDZC2OOs04iFVdzlX
 nVQ9RwBz/mxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,324,1583222400"; d="scan'208";a="246143917"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 27 Apr 2020 06:36:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Apr 2020 16:36:19 +0300
Date: Mon, 27 Apr 2020 16:36:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200427133619.GF6112@intel.com>
References: <20200424231423.4065231-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424231423.4065231-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use proper fault mask in
 interrupt postinstall too
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

On Fri, Apr 24, 2020 at 04:14:23PM -0700, Matt Roper wrote:
> The IRQ postinstall handling had open-coded pipe fault mask selection
> that never got updated for gen11.  Switch it to use
> gen8_de_pipe_fault_mask() to ensure we don't miss updates for new
> platforms.
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Fixes: d506a65d56fd ("drm/i915: Catch GTT fault errors for gen11+ planes")
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 1502ab44f1a5..bd722d0650c8 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3358,7 +3358,8 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  {
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  =

> -	u32 de_pipe_masked =3D GEN8_PIPE_CDCLK_CRC_DONE;
> +	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
> +		GEN8_PIPE_CDCLK_CRC_DONE;
>  	u32 de_pipe_enables;
>  	u32 de_port_masked =3D GEN8_AUX_CHANNEL_A;
>  	u32 de_port_enables;
> @@ -3369,13 +3370,10 @@ static void gen8_de_irq_postinstall(struct drm_i9=
15_private *dev_priv)
>  		de_misc_masked |=3D GEN8_DE_MISC_GSE;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 9) {
> -		de_pipe_masked |=3D GEN9_DE_PIPE_IRQ_FAULT_ERRORS;
>  		de_port_masked |=3D GEN9_AUX_CHANNEL_B | GEN9_AUX_CHANNEL_C |
>  				  GEN9_AUX_CHANNEL_D;
>  		if (IS_GEN9_LP(dev_priv))
>  			de_port_masked |=3D BXT_DE_PORT_GMBUS;
> -	} else {
> -		de_pipe_masked |=3D GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
>  	}
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11)
> -- =

> 2.24.1
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
