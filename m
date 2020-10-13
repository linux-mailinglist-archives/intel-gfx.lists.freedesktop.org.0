Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A619F28CF43
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 15:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5623D6E8E2;
	Tue, 13 Oct 2020 13:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B2A6E8E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 13:39:22 +0000 (UTC)
IronPort-SDR: TYhHqEmwDchMFVJ/srgSgeaJDWc0kZDSoXcj0UiLqx89Lre3dEa2UYBKdTwFfpcPZK5K7Zflbq
 Z5qW9+ijKFlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="162445824"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="162445824"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 06:39:22 -0700
IronPort-SDR: 5kjsXEZirzOYcrpJ0nsJbQnfgC+QhrHzAIRieDGqHD/jKrE2RaWZAr8mvvRecAxnxjCqVww/zN
 4BlKMfT2KVyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="318288941"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 13 Oct 2020 06:39:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Oct 2020 16:39:19 +0300
Date: Tue, 13 Oct 2020 16:39:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201013133919.GB6112@intel.com>
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
 <20201007192241.10241-1-ville.syrjala@linux.intel.com>
 <20201012193645.GA2349678@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012193645.GA2349678@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Reorder hpd init vs.
 display resume
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

On Mon, Oct 12, 2020 at 10:36:45PM +0300, Imre Deak wrote:
> On Wed, Oct 07, 2020 at 10:22:41PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Currently we call .hpd_irq_setup() directly just before display
> > resume, and follow it with another call via intel_hpd_init()
> > just afterwards. Assuming the hpd pins are marked as enabled
> > during the open-coded call these two things do exactly the
> > same thing (ie. enable HPD interrupts). Which even makes sense
> > since we definitely need working HPD interrupts for MST sideband
> > during the display resume.
> > =

> > So let's nuke the open-coded call and move the intel_hpd_init()
> > call earlier. However we need to leave the poll_init_work stuff
> > behind after the display resume as that will trigger display
> > detection while we're resuming. We don't want that trampling over
> > the display resume process. To make this a bit more symmetric
> > we turn this into a intel_hpd_poll_{enable,disable}() pair.
> > So we end up with the following transformation:
> > intel_hpd_poll_init() -> intel_hpd_poll_enable()
> > lone intel_hpd_init() -> intel_hpd_init()+intel_hpd_poll_disable()
> > .hpd_irq_setup()+resume+intel_hpd_init() -> intel_hpd_init()+resume+int=
el_hpd_poll_disable()
> > =

> > If we really would like to prevent all *long* HPD processing during
> > display resume we'd need some kind of software mechanism to simply
> > ignore all long HPDs. Currently we appear to have that just for
> > fbdev via ifbdev->hpd_suspended. Since we aren't exploding left and
> > right all the time I guess that's mostly sufficient.
> > =

> > For a bit of history on this, we first got a mechanism to block
> > hotplug processing during suspend in commit 15239099d7a7 ("drm/i915:
> > enable irqs earlier when resuming") on account of moving the irq enable
> > earlier. This then got removed in commit 50c3dc970a09 ("drm/fb-helper:
> > Fix hpd vs. initial config races") because the fdev initial config
> > got pushed to a later point. The second ad-hoc hpd_irq_setup() for
> > resume was added in commit 0e32b39ceed6 ("drm/i915: add DP 1.2 MST
> > support (v0.7)") to be able to do MST sideband during the resume.
> > And finally we got a partial resurrection of the hpd blocking
> > mechanism in commit e8a8fedd57fd ("drm/i915: Block fbdev HPD
> > processing during suspend"), but this time it only prevent fbdev
> > from handling hpd while resuming.
> > =

> > v2: Leave the poll_init_work behind
> > =

> > Cc: Lyude Paul <lyude@redhat.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  9 ++--
> >  .../drm/i915/display/intel_display_power.c    |  3 +-
> >  drivers/gpu/drm/i915/display/intel_hotplug.c  | 42 ++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_hotplug.h  |  3 +-
> >  drivers/gpu/drm/i915/i915_drv.c               | 23 ++++------
> >  5 files changed, 46 insertions(+), 34 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 907e1d155443..0d5607ae97c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5036,18 +5036,15 @@ void intel_finish_reset(struct drm_i915_private=
 *dev_priv)
> >  		intel_pps_unlock_regs_wa(dev_priv);
> >  		intel_modeset_init_hw(dev_priv);
> >  		intel_init_clock_gating(dev_priv);
> > -
> > -		spin_lock_irq(&dev_priv->irq_lock);
> > -		if (dev_priv->display.hpd_irq_setup)
> > -			dev_priv->display.hpd_irq_setup(dev_priv);
> > -		spin_unlock_irq(&dev_priv->irq_lock);
> > +		intel_hpd_init(dev_priv);
> > +		intel_hpd_poll_disable(dev_priv);
> >  =

> >  		ret =3D __intel_display_resume(dev, state, ctx);
> >  		if (ret)
> >  			drm_err(&dev_priv->drm,
> >  				"Restoring old state failed with %i\n", ret);
> >  =

> > -		intel_hpd_init(dev_priv);
> > +		intel_hpd_poll_disable(dev_priv);
> =

> This call is the needed one (to re-probe the connectors) and the above
> call is not.
> =

> >  	}
> >  =

> >  	drm_atomic_state_put(state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c
> > index 7277e58b01f1..20ddc54298cb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1424,6 +1424,7 @@ static void vlv_display_power_well_init(struct dr=
m_i915_private *dev_priv)
> >  		return;
> >  =

> >  	intel_hpd_init(dev_priv);
> > +	intel_hpd_poll_disable(dev_priv);
> >  =

> >  	/* Re-enable the ADPA, if we have one */
> >  	for_each_intel_encoder(&dev_priv->drm, encoder) {
> > @@ -1449,7 +1450,7 @@ static void vlv_display_power_well_deinit(struct =
drm_i915_private *dev_priv)
> >  =

> >  	/* Prevent us from re-enabling polling on accident in late suspend */
> >  	if (!dev_priv->drm.dev->power.is_suspended)
> > -		intel_hpd_poll_init(dev_priv);
> > +		intel_hpd_poll_enable(dev_priv);
> >  }
> >  =

> >  static void vlv_display_power_well_enable(struct drm_i915_private *dev=
_priv,
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu=
/drm/i915/display/intel_hotplug.c
> > index 5c58c1ed6493..30bd4c86d146 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -584,7 +584,7 @@ void intel_hpd_irq_handler(struct drm_i915_private =
*dev_priv,
> >   * This is a separate step from interrupt enabling to simplify the loc=
king rules
> >   * in the driver load and resume code.
> >   *
> > - * Also see: intel_hpd_poll_init(), which enables connector polling
> > + * Also see: intel_hpd_poll_enable() and intel_hpd_poll_disable().
> >   */
> >  void intel_hpd_init(struct drm_i915_private *dev_priv)
> >  {
> > @@ -595,9 +595,6 @@ void intel_hpd_init(struct drm_i915_private *dev_pr=
iv)
> >  		dev_priv->hotplug.stats[i].state =3D HPD_ENABLED;
> >  	}
> >  =

> > -	WRITE_ONCE(dev_priv->hotplug.poll_enabled, false);
> > -	schedule_work(&dev_priv->hotplug.poll_init_work);
> > -
> >  	/*
> >  	 * Interrupt setup is already guaranteed to be single-threaded, this =
is
> >  	 * just to make the assert_spin_locked checks happy.
> > @@ -654,12 +651,12 @@ static void i915_hpd_poll_init_work(struct work_s=
truct *work)
> >  }
> >  =

> >  /**
> > - * intel_hpd_poll_init - enables/disables polling for connectors with =
hpd
> > + * intel_hpd_poll_enable - enable polling for connectors with hpd
> >   * @dev_priv: i915 device instance
> >   *
> > - * This function enables polling for all connectors, regardless of whe=
ther or
> > - * not they support hotplug detection. Under certain conditions HPD ma=
y not be
> > - * functional. On most Intel GPUs, this happens when we enter runtime =
suspend.
> > + * This function enables polling for all connectors which support HPD.
> > + * Under certain conditions HPD may not be functional. On most Intel G=
PUs,
> > + * this happens when we enter runtime suspend.
> >   * On Valleyview and Cherryview systems, this also happens when we shu=
t off all
> >   * of the powerwells.
> >   *
> > @@ -667,9 +664,9 @@ static void i915_hpd_poll_init_work(struct work_str=
uct *work)
> >   * dev->mode_config.mutex, we do the actual hotplug enabling in a sepe=
rate
> >   * worker.
> >   *
> > - * Also see: intel_hpd_init(), which restores hpd handling.
> > + * Also see: intel_hpd_init() and intel_hpd_poll_disable().
> >   */
> > -void intel_hpd_poll_init(struct drm_i915_private *dev_priv)
> > +void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
> >  {
> >  	WRITE_ONCE(dev_priv->hotplug.poll_enabled, true);
> >  =

> > @@ -682,6 +679,31 @@ void intel_hpd_poll_init(struct drm_i915_private *=
dev_priv)
> >  	schedule_work(&dev_priv->hotplug.poll_init_work);
> >  }
> >  =

> > +/**
> > + * intel_hpd_poll_disable - disable polling for connectors with hpd
> > + * @dev_priv: i915 device instance
> > + *
> > + * This function disables polling for all connectors which support HPD.
> > + * Under certain conditions HPD may not be functional. On most Intel G=
PUs,
> > + * this happens when we enter runtime suspend.
> > + * On Valleyview and Cherryview systems, this also happens when we shu=
t off all
> > + * of the powerwells.
> > + *
> > + * Since this function can get called in contexts where we're already =
holding
> > + * dev->mode_config.mutex, we do the actual hotplug enabling in a sepe=
rate
> > + * worker.
> > + *
> > + * Also used during driver init to initialize connector->polled
> > + * appropriately for all connectors.
> > + *
> > + * Also see: intel_hpd_init() and intel_hpd_poll_enable().
> > + */
> > +void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
> > +{
> > +	WRITE_ONCE(dev_priv->hotplug.poll_enabled, false);
> > +	schedule_work(&dev_priv->hotplug.poll_init_work);
> > +}
> > +
> >  void intel_hpd_init_work(struct drm_i915_private *dev_priv)
> >  {
> >  	INIT_DELAYED_WORK(&dev_priv->hotplug.hotplug_work,
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu=
/drm/i915/display/intel_hotplug.h
> > index a704d7c94d16..b87e95d606e6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> > @@ -14,7 +14,8 @@ struct intel_digital_port;
> >  struct intel_encoder;
> >  enum port;
> >  =

> > -void intel_hpd_poll_init(struct drm_i915_private *dev_priv);
> > +void intel_hpd_poll_enable(struct drm_i915_private *dev_priv);
> > +void intel_hpd_poll_disable(struct drm_i915_private *dev_priv);
> >  enum intel_hotplug_state intel_encoder_hotplug(struct intel_encoder *e=
ncoder,
> >  					       struct intel_connector *connector);
> >  void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i91=
5_drv.c
> > index ebc15066d108..3fc7b996fc48 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -1226,26 +1226,15 @@ static int i915_drm_resume(struct drm_device *d=
ev)
> >  =

> >  	intel_modeset_init_hw(dev_priv);
> >  	intel_init_clock_gating(dev_priv);
> > +	intel_hpd_init(dev_priv);
> >  =

> > -	spin_lock_irq(&dev_priv->irq_lock);
> > -	if (dev_priv->display.hpd_irq_setup)
> > -		dev_priv->display.hpd_irq_setup(dev_priv);
> > -	spin_unlock_irq(&dev_priv->irq_lock);
> > -
> > +	/* MST sideband requires HPD interrupts enabled */
> =

> The above is a comment for intel_hpd_init().

I meant it more as "here be the point where we start to depend on HPD
interrupts".

> =

> intel_modeset_init() also calls intel_hpd_init(), looks like that
> guarantees the explicit connector probing during driver loading. Do we
> need to call intel_hpd_poll_disable() somewhere on that path too? (Maybe
> only from i915_driver_register().)

Argh. Must have been some rebase failure. Even reflog remembers me
adding that call, but apparently it never made it into the version I
posted.

> =

> >  	intel_dp_mst_resume(dev_priv);
> > -
> >  	intel_display_resume(dev);
> >  =

> > +	intel_hpd_poll_disable(dev_priv);
> >  	drm_kms_helper_poll_enable(dev);
> >  =

> > -	/*
> > -	 * ... but also need to make sure that hotplug processing
> > -	 * doesn't cause havoc. Like in the driver load code we don't
> > -	 * bother with the tiny race here where we might lose hotplug
> > -	 * notifications.
> > -	 * */
> > -	intel_hpd_init(dev_priv);
> > -
> >  	intel_opregion_resume(dev_priv);
> >  =

> >  	intel_fbdev_set_suspend(dev, FBINFO_STATE_RUNNING, false);
> > @@ -1557,7 +1546,7 @@ static int intel_runtime_suspend(struct device *k=
dev)
> >  	assert_forcewakes_inactive(&dev_priv->uncore);
> >  =

> >  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> > -		intel_hpd_poll_init(dev_priv);
> > +		intel_hpd_poll_enable(dev_priv);
> >  =

> >  	drm_dbg_kms(&dev_priv->drm, "Device suspended\n");
> >  	return 0;
> > @@ -1602,8 +1591,10 @@ static int intel_runtime_resume(struct device *k=
dev)
> >  	 * power well, so hpd is reinitialized from there. For
> >  	 * everyone else do it here.
> >  	 */
> > -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> > +	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
> >  		intel_hpd_init(dev_priv);
> > +		intel_hpd_poll_disable(dev_priv);
> > +	}
> >  =

> >  	intel_enable_ipc(dev_priv);
> >  =

> > -- =

> > 2.26.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
