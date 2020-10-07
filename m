Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E154285DCF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 13:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13DF6E072;
	Wed,  7 Oct 2020 11:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC806E072
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 11:06:54 +0000 (UTC)
IronPort-SDR: gev64H17i+S7EdT/WMYqwT5CXREO8VR3wUc6rZJuVP9d9G/XQeJ0sqDGoJltI3zmP018UkJO1v
 sTiZ4gPiYpFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="229037908"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="229037908"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 04:06:47 -0700
IronPort-SDR: MturCZRLsomtKCHl0nZj6TLZWqw47SeupCxgHAUW+Tqui1DDqOAOKlVOljU72Wjp/hsBQ3I+1S
 3sVpQ1oCl5zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="316161717"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 07 Oct 2020 04:06:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Oct 2020 14:06:43 +0300
Date: Wed, 7 Oct 2020 14:06:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201007110643.GB6112@intel.com>
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Reorder hpd init vs. display
 resume
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 09:58:07PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Currently we call .hpd_irq_setup() directly just before display
> resume, and follow it with another call via intel_hpd_init()
> just afterwards. Assuming the hpd pins are marked as enabled
> during the open-coded call these two things do exactly the
> same thing (ie. enable HPD interrupts). Which even makes sense
> since we definitely need working HPD interrupts for MST sideband
> during the display resume.
> =

> So let's just nuke the open-coded call and move the intel_hpd_init()
> call earlier.
> =

> If we really would like to prevent all *long* HPD processing during
> display resume we'd need some kind of software mechanism to simply
> ignore all long HPDs. Currently we appear to have that just for
> fbdev via ifbdev->hpd_suspended. Since we aren't exploding left and
> right all the time I guess that's mostly sufficient.

Daniel suggested including the archaeological record here.
This is what I was planning to amend here:

"For a bit of history on this, we first got a mechanism to block
hotplug processing during suspend in commit 15239099d7a7 ("drm/i915: =

enable irqs earlier when resuming") on account of moving the irq enable =

earlier. This then got removed in commit 50c3dc970a09 ("drm/fb-helper: =

Fix hpd vs. initial config races") because the fdev initial config
got pushed to a later point. The second ad-hoc hpd_irq_setup() for
resume was added in commit 0e32b39ceed6 ("drm/i915: add DP 1.2 MST =

support (v0.7)") to be able to do MST sideband during resume. And
finally we got a partial resurrection of the hpd blocking
mechanism in commit e8a8fedd57fd ("drm/i915: Block fbdev HPD
processing during suspend"), but this time it only prevent fbdev
from handling the hpd while resuming."

But looks like I was far too optimistic and this did in fact blow
up in CI. So I'll need to do some actual work to figure out what's
going on...

> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  8 +-------
>  drivers/gpu/drm/i915/i915_drv.c              | 16 ++--------------
>  2 files changed, 3 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 907e1d155443..87df7167433f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5036,18 +5036,12 @@ void intel_finish_reset(struct drm_i915_private *=
dev_priv)
>  		intel_pps_unlock_regs_wa(dev_priv);
>  		intel_modeset_init_hw(dev_priv);
>  		intel_init_clock_gating(dev_priv);
> -
> -		spin_lock_irq(&dev_priv->irq_lock);
> -		if (dev_priv->display.hpd_irq_setup)
> -			dev_priv->display.hpd_irq_setup(dev_priv);
> -		spin_unlock_irq(&dev_priv->irq_lock);
> +		intel_hpd_init(dev_priv);
>  =

>  		ret =3D __intel_display_resume(dev, state, ctx);
>  		if (ret)
>  			drm_err(&dev_priv->drm,
>  				"Restoring old state failed with %i\n", ret);
> -
> -		intel_hpd_init(dev_priv);
>  	}
>  =

>  	drm_atomic_state_put(state);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index ebc15066d108..b2a050d916e3 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1226,26 +1226,14 @@ static int i915_drm_resume(struct drm_device *dev)
>  =

>  	intel_modeset_init_hw(dev_priv);
>  	intel_init_clock_gating(dev_priv);
> +	intel_hpd_init(dev_priv);
>  =

> -	spin_lock_irq(&dev_priv->irq_lock);
> -	if (dev_priv->display.hpd_irq_setup)
> -		dev_priv->display.hpd_irq_setup(dev_priv);
> -	spin_unlock_irq(&dev_priv->irq_lock);
> -
> +	/* MST sideband requires HPD interrupts enabled */
>  	intel_dp_mst_resume(dev_priv);
> -
>  	intel_display_resume(dev);
>  =

>  	drm_kms_helper_poll_enable(dev);
>  =

> -	/*
> -	 * ... but also need to make sure that hotplug processing
> -	 * doesn't cause havoc. Like in the driver load code we don't
> -	 * bother with the tiny race here where we might lose hotplug
> -	 * notifications.
> -	 * */
> -	intel_hpd_init(dev_priv);
> -
>  	intel_opregion_resume(dev_priv);
>  =

>  	intel_fbdev_set_suspend(dev, FBINFO_STATE_RUNNING, false);
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
