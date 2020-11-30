Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AC42C9096
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 23:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D1689C03;
	Mon, 30 Nov 2020 22:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9132689C03
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 22:07:22 +0000 (UTC)
IronPort-SDR: 0xVmrAZiLq5OqTwZ8Ztnnbt6ydhpaM4O6MtswNvkJn02aKR03t+L02Zl4H+8WjjUwLdwWbYD8l
 TR2ScOXzqN1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="152551295"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="152551295"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:07:22 -0800
IronPort-SDR: lW8v1DqjgybvK1Txw9+Isr0qHBXKwBE71H2nNLbecyK5BkRkaXoTsvlAOG7Vb6qIDN3RSYnxsa
 xAvUpsH9N/Mg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="549279891"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:07:20 -0800
Date: Tue, 1 Dec 2020 00:07:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201130220716.GC2480925@ideak-desk.fi.intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-5-imre.deak@intel.com>
 <160677363371.12351.7483170084025008582@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160677363371.12351.7483170084025008582@build.alporthouse.com>
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

On Mon, Nov 30, 2020 at 10:00:33PM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2020-11-30 21:21:55)
> > Add wakeref tracking for the DDI encoders' DDI_IO display power domain
> > references.
> > 
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 38 ++++++++++++-------
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  2 files changed, 25 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 92940a0c5ef8..9518d298b0f7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2285,9 +2285,11 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
> >         dig_port = enc_to_dig_port(encoder);
> >  
> >         if (!intel_phy_is_tc(dev_priv, phy) ||
> > -           dig_port->tc_mode != TC_PORT_TBT_ALT)
> > -               intel_display_power_get(dev_priv,
> > -                                       dig_port->ddi_io_power_domain);
> > +           dig_port->tc_mode != TC_PORT_TBT_ALT) {
> > +               drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
> > +               dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
> > +                                                                  dig_port->ddi_io_power_domain);
> > +       }
> 
> > @@ -3958,8 +3967,9 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
> >  
> >         intel_disable_ddi_buf(encoder, old_crtc_state);
> >  
> > -       intel_display_power_put_unchecked(dev_priv,
> > -                                         dig_port->ddi_io_power_domain);
> > +       intel_display_power_put(dev_priv,
> > +                               dig_port->ddi_io_power_domain,
> > +                               fetch_and_zero(&dig_port->ddi_io_wakeref));
> 
> I remember that once we had trouble with this being a macro and not
> evaluating the fetch_and_zero() when used as an argument.
> 
> Looks like we still have the same trouble with
> 
> #if !IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> static inline void
> intel_display_power_put(struct drm_i915_private *i915,
>                         enum intel_display_power_domain domain,
>                         intel_wakeref_t wakeref)
> {
>         intel_display_power_put_unchecked(i915, domain);
> }
> #endif
> 
> will cause the ddi_io_wakeref to not be cleared, and the warn on to be
> hit in non-debug builds.

Arg, screwed it again.

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
