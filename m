Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A700F30D8D8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 12:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E336EA7B;
	Wed,  3 Feb 2021 11:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C546EA79
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 11:40:10 +0000 (UTC)
IronPort-SDR: jP9/9SkkO7XHu73YQJ1sCeDO81tk1zovT8wwrmaQD5MDty1not7yNbd/4TazvMA1Na/fuoKMVp
 Yulxi/GA5xHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="242537912"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="242537912"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 03:40:09 -0800
IronPort-SDR: 9IOxNJRYubPB+FGrIqFGU59iIwNKxenwq5tCC8ksdojA8RoZdNj3qNyi2rzCVZNUw3X0Z2N7Pp
 NMnEl0UyU7NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="371410945"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 03 Feb 2021 03:40:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Feb 2021 13:40:05 +0200
Date: Wed, 3 Feb 2021 13:40:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YBqLlRYq00BEP/4i@intel.com>
References: <20210127181909.128094-1-imre.deak@intel.com>
 <20210128191349.GE142820@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128191349.GE142820@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable runtime power management
 during shutdown
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 09:13:49PM +0200, Imre Deak wrote:
> On Wed, Jan 27, 2021 at 08:19:09PM +0200, Imre Deak wrote:
> > At least on some TGL platforms PUNIT wants to access some display HW
> > registers, but it doesn't handle display power managment (disabling DC
> > states as required) and so this register access will lead to a hang. To
> > prevent this disable runtime power management for poweroff and reboot.
> > =

> > Reported-and-tested-by: Khaled Almahallawy <khaled.almahallawy@intel.co=
m>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> =

> Chris or Ville, could you ack if you see no problem with this?

Looks consistent enough with the other paths.

I guess we're now powering on pretty much everything before
reboot shutdown due to the INIT domain? Hopefully no harm in
that.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> > ---
> >  drivers/gpu/drm/i915/i915_drv.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i91=
5_drv.c
> > index 0037b81d991e..6f83cca8e27b 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -1054,6 +1054,8 @@ static void intel_shutdown_encoders(struct drm_i9=
15_private *dev_priv)
> >  void i915_driver_shutdown(struct drm_i915_private *i915)
> >  {
> >  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> > +	intel_runtime_pm_disable(&i915->runtime_pm);
> > +	intel_power_domains_disable(i915);
> >  =

> >  	i915_gem_suspend(i915);
> >  =

> > @@ -1069,7 +1071,10 @@ void i915_driver_shutdown(struct drm_i915_privat=
e *i915)
> >  	intel_suspend_encoders(i915);
> >  	intel_shutdown_encoders(i915);
> >  =

> > +	intel_power_domains_driver_remove(i915);
> >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > +
> > +	intel_runtime_pm_driver_release(&i915->runtime_pm);
> >  }
> >  =

> >  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> > -- =

> > 2.25.1
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
