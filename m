Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 910EE184A4F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 16:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9356EBEC;
	Fri, 13 Mar 2020 15:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732EF6EBEC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 15:14:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 08:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="232446561"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 13 Mar 2020 08:14:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 17:14:43 +0200
Date: Fri, 13 Mar 2020 17:14:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200313151443.GO13686@intel.com>
References: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
 <20200313144821.29592-2-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313144821.29592-2-kai.vehmanen@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: move audio CDCLK constraint
 setup to bind/unbind
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
Cc: tiwai@suse.de, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 13, 2020 at 04:48:21PM +0200, Kai Vehmanen wrote:
> When the iDisp HDA interface between display and audio is brought
> out from reset, the link parameters must be correctly set before
> reset. This requires the audio driver to call i915 get_power()
> whenever it brings the HDA audio controller from reset. This is
> e.g. done every time audio controller is resumed from runtime
> suspend.
> =

> The current solution of modifying min_cdclk in get_power()/put_power()
> can lead to display flicker as events such as playback of UI sounds
> may indirectly cause a modeset change.
> =

> As we need to extend the CDCLK>=3D2*BCLK constraint to more platforms
> beyond GLK, a more robust solution is needed to this problem.
> =

> This patch moves modifying the min_cdclk at audio component bind
> phase and extends coverage to all gen9+ platforms. This effectively
> guarantees that whenever audio driver is loaded and bound to i915,
> CDCLK is guaranteed to be such that calls to get_power()/put_power()
> do not result in display artifacts.

So this will now force BXT to never use the 144 MHz CDCLK too. Is that
actually required? I don't remember any reports of failures on BXT.

> =

> If 2*BCLK is below lowest CDCLK, this patch has no effect.
> =

> If a future platform provides means to change CDCLK without
> a modeset, the constraint code can be moved to get/put_power()
> for these platforms.
> =

> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index e6389b9c2044..4e4832741ecf 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -902,10 +902,6 @@ static unsigned long i915_audio_component_get_power(=
struct device *kdev)
>  				    dev_priv->audio_freq_cntrl);
>  		}
>  =

> -		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
> -		if (IS_GEMINILAKE(dev_priv))
> -			glk_force_audio_cdclk(dev_priv, true);
> -
>  		if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
>  			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
>  				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABL=
E));
> @@ -919,11 +915,7 @@ static void i915_audio_component_put_power(struct de=
vice *kdev,
>  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
>  =

> -	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
> -	if (--dev_priv->audio_power_refcount =3D=3D 0)
> -		if (IS_GEMINILAKE(dev_priv))
> -			glk_force_audio_cdclk(dev_priv, false);
> -
> +	dev_priv->audio_power_refcount--;
>  	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO, cookie);
>  }
>  =

> @@ -1114,6 +1106,13 @@ static int i915_audio_component_bind(struct device=
 *i915_kdev,
>  					 DL_FLAG_STATELESS)))
>  		return -ENOMEM;
>  =

> +	/*
> +	 * To avoid display flicker due to frequent CDCLK changes from
> +	 * get/put_power(), set up CDCLK>=3D2*BCLK constraint here.
> +	 */
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		glk_force_audio_cdclk(dev_priv, true);

Ah, so we still keep it on the i915 side. That seems fine. We can then
stop doing this once we get nicer hardware and put it back into to
get/put power.

The name of function is rather misleading now though. I guess we should
just s/glk/intel/ since there's nothing actually hardware specific in
there.

> +
>  	drm_modeset_lock_all(&dev_priv->drm);
>  	acomp->base.ops =3D &i915_audio_component_ops;
>  	acomp->base.dev =3D i915_kdev;
> @@ -1132,6 +1131,9 @@ static void i915_audio_component_unbind(struct devi=
ce *i915_kdev,
>  	struct i915_audio_component *acomp =3D data;
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
>  =

> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		glk_force_audio_cdclk(dev_priv, false);
> +
>  	drm_modeset_lock_all(&dev_priv->drm);
>  	acomp->base.ops =3D NULL;
>  	acomp->base.dev =3D NULL;
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
