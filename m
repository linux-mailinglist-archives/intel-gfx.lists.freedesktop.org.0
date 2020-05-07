Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3960C1C8408
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 09:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E4626E934;
	Thu,  7 May 2020 07:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 329226E934
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 07:57:52 +0000 (UTC)
IronPort-SDR: hC3St9GewHtQ/svUiTSaKwSH7H3kxmxwNeG4dND1CZqtaAH00S6FxkQ2U/hID4u1XsMuO+0yP8
 c9BuCSxueJDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 00:57:51 -0700
IronPort-SDR: 1TfMFtp+P1R+iMTXJZ4Sm6kuB1RVBjNJ0zSeyM97eV2FXJjWQNgRAUgLSS2Cblw76rvrJ4i5WG
 aqDJHn9fv27Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="278513098"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 07 May 2020 00:57:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 10:57:48 +0300
Date: Thu, 7 May 2020 10:57:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200507075748.GA6112@intel.com>
References: <20200504225227.464666-17-matthew.d.roper>
 <20200506211405.816125-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506211405.816125-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 16/22] drm/i915/rkl: Don't try to access
 transcoder D
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

On Wed, May 06, 2020 at 02:14:05PM -0700, Matt Roper wrote:
> There are a couple places in our driver that loop over transcoders A..D
> for gen11+; since RKL only has three pipes/transcoders, this can lead to
> unclaimed register reads/writes.  We should add checks for transcoder
> existence where appropriate.
> =

> v2: Move one transcoder check that wound up in the wrong function after
>     conflict resolution.  It belongs in bdw_get_trans_port_sync_config
>     rather than bxt_get_dsi_transcoder_state.
> =

> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 3 +++
>  drivers/gpu/drm/i915/i915_irq.c          | 6 ++++++
>  2 files changed, 9 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 0ab03282c397..f93bc0661d00 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4131,6 +4131,9 @@ static void bdw_get_trans_port_sync_config(struct i=
ntel_crtc_state *crtc_state)
>  		enum intel_display_power_domain power_domain;
>  		intel_wakeref_t trans_wakeref;
>  =

> +		if (!HAS_TRANSCODER(dev_priv, cpu_transcoder))
> +			continue;

for_each_cpu_transcoder_masked() already handles this for us.

Perhaps should just convert the other places to use it as well.

> +
>  		power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>  		trans_wakeref =3D intel_display_power_get_if_enabled(dev_priv,
>  								   power_domain);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 3c3fb9d9df62..297d4cacfb6a 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2849,6 +2849,9 @@ static void gen11_display_irq_reset(struct drm_i915=
_private *dev_priv)
>  		for (trans =3D TRANSCODER_A; trans <=3D TRANSCODER_D; trans++) {
>  			enum intel_display_power_domain domain;
>  =

> +			if (!HAS_TRANSCODER(dev_priv, trans))
> +				continue;
> +
>  			domain =3D POWER_DOMAIN_TRANSCODER(trans);
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
> @@ -3397,6 +3400,9 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  		for (trans =3D TRANSCODER_A; trans <=3D TRANSCODER_D; trans++) {
>  			enum intel_display_power_domain domain;
>  =

> +			if (!HAS_TRANSCODER(dev_priv, trans))
> +				continue;
> +
>  			domain =3D POWER_DOMAIN_TRANSCODER(trans);
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
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
