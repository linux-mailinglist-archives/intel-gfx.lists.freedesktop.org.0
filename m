Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0371EE8EE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 18:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF456E506;
	Thu,  4 Jun 2020 16:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A8D6E506
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 16:55:33 +0000 (UTC)
IronPort-SDR: LaeAmJTOrQdsVNr+3v0LqHD7Xf+JJcPhRm7wkAAwbgwqg/wZoU5PhqlwRFBEzo/HiMnUJCAxsC
 ypmwrk111PJg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 09:55:32 -0700
IronPort-SDR: wKKD8NsMYRKKK99KEs3qESDG3OwBFj+V8LuffsawX/2+aNBmw7euzCeCdarxDbGE+/UjeLsS+h
 79blPp14ovYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="258940984"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 04 Jun 2020 09:55:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 19:55:29 +0300
Date: Thu, 4 Jun 2020 19:55:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604165529.GW6112@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-10-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 09/15] drm/i915/rkl: Don't try to access
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

On Wed, Jun 03, 2020 at 02:15:23PM -0700, Matt Roper wrote:
> There are a couple places in our driver that loop over transcoders A..D
> for gen11+; since RKL only has three pipes/transcoders, this can lead to
> unclaimed register reads/writes.  We should add checks for transcoder
> existence where appropriate.
> =

> v2: Move one transcoder check that wound up in the wrong function after
>     conflict resolution.  It belongs in bdw_get_trans_port_sync_config
>     rather than bxt_get_dsi_transcoder_state.
> =

> v3: Switch loops to use for_each_cpu_transcoder_masked() since this
>     iterator already checks the platform's transcoder mask for us.
>     (Ville)
> =

> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index f3ea81a17352..40a71c4a1ef5 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2885,13 +2885,15 @@ static void gen11_display_irq_reset(struct drm_i9=
15_private *dev_priv)
>  {
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	enum pipe pipe;
> +	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>  =

>  	intel_uncore_write(uncore, GEN11_DISPLAY_INT_CTL, 0);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		enum transcoder trans;
>  =

> -		for (trans =3D TRANSCODER_A; trans <=3D TRANSCODER_D; trans++) {
> +		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
>  			enum intel_display_power_domain domain;
>  =

>  			domain =3D POWER_DOMAIN_TRANSCODER(trans);
> @@ -3413,6 +3415,8 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
>  	u32 de_misc_masked =3D GEN8_DE_EDP_PSR;
> +	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>  	enum pipe pipe;
>  =

>  	if (INTEL_GEN(dev_priv) <=3D 10)
> @@ -3433,7 +3437,7 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		enum transcoder trans;
>  =

> -		for (trans =3D TRANSCODER_A; trans <=3D TRANSCODER_D; trans++) {
> +		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
>  			enum intel_display_power_domain domain;
>  =

>  			domain =3D POWER_DOMAIN_TRANSCODER(trans);
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
