Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F301C3B64
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6065D6E3F7;
	Mon,  4 May 2020 13:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546E76E3F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 13:39:05 +0000 (UTC)
IronPort-SDR: iZEGa+4gsny6yk4IPFthK7Hw1JKKE59Tjbl/AuWJfQJ20kex4udLIMfd4RgcM4VMIfDv7iBsW6
 2XiXBcp0G79Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 06:39:04 -0700
IronPort-SDR: 9tlhy0yB/jVg0+uNo7gj9NQAVX3zrmYljAsiVgzHDimBiw8UN+meutQv26vzXOYpLvdIYAxggn
 IIoFufZ6L9vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="248219466"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 May 2020 06:39:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 May 2020 16:39:01 +0300
Date: Mon, 4 May 2020 16:39:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200504133901.GZ6112@intel.com>
References: <20200504075828.20348-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504075828.20348-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl+: Fix interrupt handling for
 DP AUX transactions
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 04, 2020 at 10:58:28AM +0300, Imre Deak wrote:
> Unmask/enable AUX interrupts on all ports on TGL+. So far the interrupts
> worked only on port A, which meant each transaction on other ports took
> 10ms.
> =

> Cc: <stable@vger.kernel.org> # v5.4+
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index bd722d0650c8..0b8b0c069ce3 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3361,7 +3361,7 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
>  		GEN8_PIPE_CDCLK_CRC_DONE;
>  	u32 de_pipe_enables;
> -	u32 de_port_masked =3D GEN8_AUX_CHANNEL_A;
> +	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
>  	u32 de_misc_masked =3D GEN8_DE_EDP_PSR;
>  	enum pipe pipe;
> @@ -3369,18 +3369,8 @@ static void gen8_de_irq_postinstall(struct drm_i91=
5_private *dev_priv)
>  	if (INTEL_GEN(dev_priv) <=3D 10)
>  		de_misc_masked |=3D GEN8_DE_MISC_GSE;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 9) {
> -		de_port_masked |=3D GEN9_AUX_CHANNEL_B | GEN9_AUX_CHANNEL_C |
> -				  GEN9_AUX_CHANNEL_D;
> -		if (IS_GEN9_LP(dev_priv))
> -			de_port_masked |=3D BXT_DE_PORT_GMBUS;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11)
> -		de_port_masked |=3D ICL_AUX_CHANNEL_E;
> -
> -	if (IS_CNL_WITH_PORT_F(dev_priv) || INTEL_GEN(dev_priv) >=3D 11)
> -		de_port_masked |=3D CNL_AUX_CHANNEL_F;
> +	if (IS_GEN9_LP(dev_priv))
> +		de_port_masked |=3D BXT_DE_PORT_GMBUS;
>  =

>  	de_pipe_enables =3D de_pipe_masked | GEN8_PIPE_VBLANK |
>  					   GEN8_PIPE_FIFO_UNDERRUN;
> -- =

> 2.23.1
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
