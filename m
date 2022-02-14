Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 885ED4B6EA5
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 15:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8877710E605;
	Tue, 15 Feb 2022 14:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9273189ECB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 23:45:40 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id x4so8881148oic.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 15:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nfkpfrdZAC9ghbfxseXAYQsgB3vdZOFr69e3ZKi13c4=;
 b=kcVU4KcsIwWEakkJ4QgJhDkta9FeYTTYt2h1CHNWCqpC2RAIclfeNBea9HfXg8SYyb
 RboH0P8Zp89ol7ajti2fAJ2pEoNuqBe7UpSjGEhzz0MrcrTJEiKvMX2Z3ndR/cL89Xdq
 b5bcsENSxzX7NRsM5TUx0AXygT/DdAGeG6N9/FLXt6yDZPgVSWd8cNlEnJN0+6QZYrqQ
 yZXHa/EGMHRLNTdJnP+v9pNZGr7sY2aPTn0SWDLxnnUjb9Pj8ZucXMMeAB8JaKXuj4p/
 Qb2pbFmtWfpzshJVpq0W8G7s0UZs/Xs8eO/ESHCq0Z+a64c99E19h3GhVie8U1oHe+Zw
 XVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nfkpfrdZAC9ghbfxseXAYQsgB3vdZOFr69e3ZKi13c4=;
 b=2J4f9Uacbfyv7dmwwTGLkZZ5CPKVBSRdsaC+o00Z04HF2gMX7fyMyJ2+fr1mzLs6dP
 eBh+TIAURjZG2+oIMZcBUkfmUQXTKJ7deZa8r9n0H5hk1PWSIj93jSwhou/KgQEPVJH3
 uxMy+ydjgHtB9H0iew429U2XYTWD1b+D++9rt46hfIQ65otHERR/lbbelptOqnHI7+iS
 hdnMXsJdeCe+iGOr6h2N/mdqpXaerNeQfQC3SVX0Utt9p19uruBEbg4wWGJqXznYGCLN
 kfgd2U3u2fi+O6Tvqc/jHWFlniiYKFL5pw8GY4PGGEPr7bmtK15dWoSPG+UGM0TyNl2n
 MepA==
X-Gm-Message-State: AOAM533dY91QqWsm7oAsj6loZ3f5D04wZBOcwVSXvX8Xu4TFnnqFe3+0
 r2X5QHPNoLwibPU6Zx58bY+/jg==
X-Google-Smtp-Source: ABdhPJz3yU4E+ybCVsol7Wn304FwHzzIReMzm5hg9IcI2Z0QH3avCApLTbKhHMGhbYBfsICiMMbu/g==
X-Received: by 2002:aca:5e0b:0:b0:2d0:e2c:9968 with SMTP id
 s11-20020aca5e0b000000b002d00e2c9968mr561613oib.206.1644882339654; 
 Mon, 14 Feb 2022 15:45:39 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id e192sm13623894oob.11.2022.02.14.15.45.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 15:45:39 -0800 (PST)
Date: Mon, 14 Feb 2022 15:47:49 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YgrqJS6gsQJYqWQg@ripper>
References: <20220208044328.588860-1-bjorn.andersson@linaro.org>
 <20220214175927.GA594729@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220214175927.GA594729@ideak-desk.fi.intel.com>
X-Mailman-Approved-At: Tue, 15 Feb 2022 14:17:14 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm: Add HPD state to
 drm_connector_oob_hotplug_event()
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon 14 Feb 09:59 PST 2022, Imre Deak wrote:

> On Mon, Feb 07, 2022 at 08:43:27PM -0800, Bjorn Andersson wrote:
> > In some implementations, such as the Qualcomm platforms, the display
> > driver has no way to query the current HPD state and as such it's
> > impossible to distinguish between disconnect and attention events.
> > 
> > Add a parameter to drm_connector_oob_hotplug_event() to pass the HPD
> > state.
> > 
> > Also push the test for unchanged state in the displayport altmode driver
> > into the i915 driver, to allow other drivers to act upon each update.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> > 
> > Note that the Intel driver has only been compile tested with this patch.
> > 
> >  drivers/gpu/drm/drm_connector.c          |  6 ++++--
> >  drivers/gpu/drm/i915/display/intel_dp.c  | 14 +++++++++++---
> >  drivers/gpu/drm/i915/i915_drv.h          |  3 +++
> >  drivers/usb/typec/altmodes/displayport.c |  9 ++-------
> >  include/drm/drm_connector.h              |  5 +++--
> >  5 files changed, 23 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> > index a50c82bc2b2f..ad7295597c0f 100644
> > --- a/drivers/gpu/drm/drm_connector.c
> > +++ b/drivers/gpu/drm/drm_connector.c
> > @@ -2825,6 +2825,7 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> >  /**
> >   * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
> >   * @connector_fwnode: fwnode_handle to report the event on
> > + * @hpd_state: number of data lanes available
> >   *
> >   * On some hardware a hotplug event notification may come from outside the display
> >   * driver / device. An example of this is some USB Type-C setups where the hardware
> > @@ -2834,7 +2835,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> >   * This function can be used to report these out-of-band events after obtaining
> >   * a drm_connector reference through calling drm_connector_find_by_fwnode().
> >   */
> > -void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode)
> > +void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> > +				     bool hpd_state)
> >  {
> >  	struct drm_connector *connector;
> >  
> > @@ -2843,7 +2845,7 @@ void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode)
> >  		return;
> >  
> >  	if (connector->funcs->oob_hotplug_event)
> > -		connector->funcs->oob_hotplug_event(connector);
> > +		connector->funcs->oob_hotplug_event(connector, hpd_state);
> >  
> >  	drm_connector_put(connector);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 146b83916005..00520867d37b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4816,15 +4816,23 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
> >  	return intel_modeset_synced_crtcs(state, conn);
> >  }
> >  
> > -static void intel_dp_oob_hotplug_event(struct drm_connector *connector)
> > +static void intel_dp_oob_hotplug_event(struct drm_connector *connector, bool hpd_state)
> >  {
> >  	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> >  	struct drm_i915_private *i915 = to_i915(connector->dev);
> > +	bool need_work = false;
> >  
> >  	spin_lock_irq(&i915->irq_lock);
> > -	i915->hotplug.event_bits |= BIT(encoder->hpd_pin);
> > +	if (hpd_state != i915->hotplug.oob_hotplug_state) {
> 
> hpd_state is speific to the encoder (pin) so similarly to event_bits
> oob_hotplug_state should be a bitmask as well.
> 

That makes sense, thanks for point it out!

Regards,
Bjorn
