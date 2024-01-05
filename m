Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31248825414
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 14:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96ABE10E00B;
	Fri,  5 Jan 2024 13:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA48510E5CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 13:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704460312; x=1735996312;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MArBNVg3xL4EaUHHSahRlPfn+CitxNGdZHEp9MZrOOQ=;
 b=hqqbJmdYkCBO7jxHj0vXXipzpQXF5kOrkHySTQeXIHufc5n+bLDh2VT5
 o+2nWkr3uElYahnQ5ec9cIDH4s0P/3QvDbBCyOrjHgAiovPAbNEVvFzqJ
 td19wjKqXmqwU1fhdAkZOhggYkOGysQAaKpbooehFYpQXlkgunhMiDu3I
 Ch/egNp0/U6WZ+13S/4xwvxgo378+tHRjl7+MBYFv6VP9jgiYyJA4eevj
 46KXAT4DW0KW8ppuSh/ibDzE3neQcNgG8E8MAmFe9rzz3oGxUTYwW2OIk
 HD2F+u82+gtJluKC3rVWAURxp0BghnR+lbl36tguogcL/jnimm4J8U0YB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4873639"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; 
   d="scan'208";a="4873639"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 05:11:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="846573325"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="846573325"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 05:11:50 -0800
Date: Fri, 5 Jan 2024 15:12:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH 01/12] drm/i915: Init DRM connector polled field early
Message-ID: <ZZgAICxajop85NKL@ideak-desk.fi.intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-2-imre.deak@intel.com>
 <9ac27342f4402fe90c1233b88ed92c89580e206e.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9ac27342f4402fe90c1233b88ed92c89580e206e.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 05, 2024 at 02:54:06PM +0200, Hogander, Jouni wrote:
> On Thu, 2024-01-04 at 10:29 +0200, Imre Deak wrote:
> > After an HPD IRQ storm on a connector intel_hpd_irq_storm_detect()
> > will
> > set the connector's HPD pin state to HPD_MARK_DISABLED and the IRQ
> > gets
> > disabled. Subsequently intel_hpd_irq_storm_switch_to_polling() will
> > enable polling for these connectors, setting the pin state to
> > HPD_DISABLED, but only if the connector's base.polled field is set to
> > DRM_CONNECTOR_POLL_HPD. intel_hpd_irq_storm_reenable_work() will
> > reenable the IRQ - after 2 minutes -  if the pin state is
> > HPD_DISABLED.
> >
> > The connectors will be created with their base.polled field set to 0,
> > which gets initialized only later in i915_hpd_poll_init_work() (using
> > intel_connector::polled). If a storm is detected on a connector after
> > it's created and IRQs are enabled on it - by intel_hpd_init() - and
> > before its bease.polled field is initialized in the above work, the
> > connector's HPD pin will stay in the HPD_MARK_DISABLED state -
> > leaving
> > the IRQ disabled indefinitely - and polling will not get enabled on
> > it as
> > intended.
> >
> > I can't see a reason for initializing base.polled in a delayed
> > manner,
> > so do this already when creating the connector, to prevent the above
> > race condition.
> 
> To me it looks like intel_connector::polled is used just to store
> original drm_connector::polled value and restore it in
> intel_hpd_irq_storm_reenable_work:
> 
>         if (connector->base.polled != connector->polled)
>                         drm_dbg(&dev_priv->drm,
>                                 "Reenabling HPD on connector %s\n",
>                                 connector->base.name);
>                 connector->base.polled = connector->polled;

Correct and restored similarly in i915_hpd_poll_init_work(). Originaly
intel_connector::polled was added to avoid misconfiguring a connector's
polled state in these two places if the two connectors share an HPD pin
(one of them needing polling the other one using the HPD pin; not sure
the exact scenario where this is actually possible). But I can't see why
at this moment we couldn't initialize the original base.polled value
early.

> From this perspective it is right thing to do to initialize  connector-
> base.polled as you are doing in this patch.
> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crt.c  | 1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 1 +
> >  drivers/gpu/drm/i915/display/intel_dvo.c  | 1 +
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 1 +
> >  drivers/gpu/drm/i915/display/intel_sdvo.c | 2 ++
> >  drivers/gpu/drm/i915/display/intel_tv.c   | 1 +
> >  6 files changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> > b/drivers/gpu/drm/i915/display/intel_crt.c
> > index abaacea5c2cc4..b330337b842a4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -1069,6 +1069,7 @@ void intel_crt_init(struct drm_i915_private
> > *dev_priv)
> >         } else {
> >                 intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
> >         }
> > +       intel_connector->base.polled = intel_connector->polled;
> >
> >         if (HAS_DDI(dev_priv)) {
> >                 assert_port_valid(dev_priv, PORT_E);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9ff0cbd9c0df5..fed649af8fc85 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6469,6 +6469,7 @@ intel_dp_init_connector(struct
> > intel_digital_port *dig_port,
> >                 connector->interlace_allowed = true;
> >
> >         intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
> > +       intel_connector->base.polled = intel_connector->polled;
> >
> >         intel_connector_attach_encoder(intel_connector,
> > intel_encoder);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> > b/drivers/gpu/drm/i915/display/intel_dvo.c
> > index 9111e9d46486d..83898ba493d16 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> > @@ -536,6 +536,7 @@ void intel_dvo_init(struct drm_i915_private
> > *i915)
> >         if (intel_dvo->dev.type == INTEL_DVO_CHIP_TMDS)
> >                 connector->polled = DRM_CONNECTOR_POLL_CONNECT |
> >                         DRM_CONNECTOR_POLL_DISCONNECT;
> > +       connector->base.polled = connector->polled;
> >
> >         drm_connector_init_with_ddc(&i915->drm, &connector->base,
> >                                     &intel_dvo_connector_funcs,
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index eedef8121ff7c..55048c56bc527 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -3017,6 +3017,7 @@ void intel_hdmi_init_connector(struct
> > intel_digital_port *dig_port,
> >                 connector->ycbcr_420_allowed = true;
> >
> >         intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
> > +       intel_connector->base.polled = intel_connector->polled;
> >
> >         if (HAS_DDI(dev_priv))
> >                 intel_connector->get_hw_state =
> > intel_ddi_connector_get_hw_state;
> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > index 9218047495fb4..4e4a87f841787 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -2805,6 +2805,7 @@ intel_sdvo_dvi_init(struct intel_sdvo
> > *intel_sdvo, u16 type)
> >         } else {
> >                 intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT
> > | DRM_CONNECTOR_POLL_DISCONNECT;
> >         }
> > +       intel_connector->base.polled = intel_connector->polled;
> >         encoder->encoder_type = DRM_MODE_ENCODER_TMDS;
> >         connector->connector_type = DRM_MODE_CONNECTOR_DVID;
> >
> > @@ -2880,6 +2881,7 @@ intel_sdvo_analog_init(struct intel_sdvo
> > *intel_sdvo, u16 type)
> >         intel_connector = &intel_sdvo_connector->base;
> >         connector = &intel_connector->base;
> >         intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
> > +       intel_connector->base.polled = intel_connector->polled;
> >         encoder->encoder_type = DRM_MODE_ENCODER_DAC;
> >         connector->connector_type = DRM_MODE_CONNECTOR_VGA;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_tv.c
> > b/drivers/gpu/drm/i915/display/intel_tv.c
> > index d4386cb3569e0..f3598fe39fda5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tv.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> > @@ -1990,6 +1990,7 @@ intel_tv_init(struct drm_i915_private
> > *dev_priv)
> >          * More recent chipsets favour HDMI rather than integrated S-
> > Video.
> >          */
> >         intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
> > +       intel_connector->base.polled = intel_connector->polled;
> >
> >         drm_connector_init(&dev_priv->drm, connector,
> > &intel_tv_connector_funcs,
> >                            DRM_MODE_CONNECTOR_SVIDEO);
> 
