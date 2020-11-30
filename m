Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBBC2C92CF
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 00:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA9689C82;
	Mon, 30 Nov 2020 23:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C0889C82
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 23:39:08 +0000 (UTC)
IronPort-SDR: kdIL2+g3ak6r9KUsj30Toa5RxVxEsK0/ututbzWVcyBqmQ2layQT946cxLxzwZYlTp2pmPwWnv
 swKpHq9dOXJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="169231518"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="169231518"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 15:39:07 -0800
IronPort-SDR: trWSdW5xlRPDW2eIcFwHRv9Q1Lj6aF0Q8+X8+6sEa8Gd1eogqCfcjPQj7q4hlzSGjogMFuFXEO
 OSYVdf28cYcQ==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="537203938"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 15:39:06 -0800
Date: Tue, 1 Dec 2020 01:39:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201130233902.GA2843910@ideak-desk.fi.intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-5-imre.deak@intel.com>
 <160677363371.12351.7483170084025008582@build.alporthouse.com>
 <20201130220716.GC2480925@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201130220716.GC2480925@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/ddi: Track power reference
 taken for encoder DDI IO use
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 01, 2020 at 12:07:21AM +0200, Imre Deak wrote:
> On Mon, Nov 30, 2020 at 10:00:33PM +0000, Chris Wilson wrote:
> > Quoting Imre Deak (2020-11-30 21:21:55)
> > > Add wakeref tracking for the DDI encoders' DDI_IO display power domain
> > > references.
> > > 
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 38 ++++++++++++-------
> > >  .../drm/i915/display/intel_display_types.h    |  1 +
> > >  2 files changed, 25 insertions(+), 14 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 92940a0c5ef8..9518d298b0f7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -2285,9 +2285,11 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
> > >         dig_port = enc_to_dig_port(encoder);
> > >  
> > >         if (!intel_phy_is_tc(dev_priv, phy) ||
> > > -           dig_port->tc_mode != TC_PORT_TBT_ALT)
> > > -               intel_display_power_get(dev_priv,
> > > -                                       dig_port->ddi_io_power_domain);
> > > +           dig_port->tc_mode != TC_PORT_TBT_ALT) {
> > > +               drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
> > > +               dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
> > > +                                                                  dig_port->ddi_io_power_domain);
> > > +       }
> > 
> > > @@ -3958,8 +3967,9 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
> > >  
> > >         intel_disable_ddi_buf(encoder, old_crtc_state);
> > >  
> > > -       intel_display_power_put_unchecked(dev_priv,
> > > -                                         dig_port->ddi_io_power_domain);
> > > +       intel_display_power_put(dev_priv,
> > > +                               dig_port->ddi_io_power_domain,
> > > +                               fetch_and_zero(&dig_port->ddi_io_wakeref));
> > 
> > I remember that once we had trouble with this being a macro and not
> > evaluating the fetch_and_zero() when used as an argument.
> > 
> > Looks like we still have the same trouble with
> > 
> > #if !IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > static inline void
> > intel_display_power_put(struct drm_i915_private *i915,
> >                         enum intel_display_power_domain domain,
> >                         intel_wakeref_t wakeref)
> > {
> >         intel_display_power_put_unchecked(i915, domain);
> > }
> > #endif
> > 
> > will cause the ddi_io_wakeref to not be cleared, and the warn on to be
> > hit in non-debug builds.

Actually, this would be the case only if intel_display_power_put() was a
macro (which it was at one point, but we've changed it to be an inline
function just to avoid the same issue).

So I think the wakeref zeroing is still ok.

> 
> Arg, screwed it again.
> 
> > -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
