Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BE8287099
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 10:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827B26E311;
	Thu,  8 Oct 2020 08:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4566E311
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 08:19:25 +0000 (UTC)
IronPort-SDR: 8IMSROjU50SLb7Ld9K94MwRHAlZNCxiworXYF+7urTgUjKmhPwO9u6UhxL2pOoCIJJB7MRsfwR
 d2meK1m61XYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="182725204"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="182725204"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 01:19:24 -0700
IronPort-SDR: 4fmmd+n6PKfEInuWYyQNVH+x+1XUhCLiHIc4Jdz7hyU/SJGvVXfc4vvYEIq8AvIbmSYR5eYpMi
 j6Qar0hUS9MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="328500209"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 08 Oct 2020 01:19:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 11:19:21 +0300
Date: Thu, 8 Oct 2020 11:19:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20201008081921.GD6112@intel.com>
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
 <20201007192241.10241-1-ville.syrjala@linux.intel.com>
 <2991edbd9a251af62cfb707870466764388d57ee.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2991edbd9a251af62cfb707870466764388d57ee.camel@redhat.com>
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

On Wed, Oct 07, 2020 at 06:15:47PM -0400, Lyude Paul wrote:
> On Wed, 2020-10-07 at 22:22 +0300, Ville Syrjala wrote:
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
> > .hpd_irq_setup()+resume+intel_hpd_init() ->
> > intel_hpd_init()+resume+intel_hpd_poll_disable()
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

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 907e1d155443..0d5607ae97c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5036,18 +5036,15 @@ void intel_finish_reset(struct drm_i915_private
> > *dev_priv)
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

> Looks like you're calling intel_hpd_poll_disable() twice here, is this
> intentional?

No, just a failure to follow my own rules. Thanks for spotting it.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
