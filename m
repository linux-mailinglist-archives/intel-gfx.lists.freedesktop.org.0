Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C75E44B5540
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 16:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959B110E2D4;
	Mon, 14 Feb 2022 15:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D3210E2D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 21:12:45 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id b22so6220073qkk.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 13:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eGKgAJz2dJO294+be78C8+dB47Cw1SR8HtZpqoI4u6E=;
 b=rf6aHwLhBkB3nt1N9g+QnhYv5tVOz8GsX7FTsawdB0VluhGjCoaJkkxxBiv4qxeolR
 vE1TmQf9qSA1iIQomxULfXBZ9GV7TzCO8Iwuavufb+ca1fSUrzSXm8juhUB/GI/mFW0C
 9TOFfA89ucniP01YY5BNQAh12PPWjgbELaw/cmDhCMtz0x4WcppiwG7JZx6GIyjEUdCV
 RKWJct1L2mx+RNJ349Ayy/l+WE2cz81CJ/HWNPO3By4ayydhzS0rUwkyGrJEeRRFBnXG
 EXS0hKNH6txc/MR5jz3DZR5IRd2nbF1/UQ0nYAXGBjkFIPayEMPH7YuUsq/yppjlkGA/
 38FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eGKgAJz2dJO294+be78C8+dB47Cw1SR8HtZpqoI4u6E=;
 b=Zk80ykrBUTvLQVnJ3MS0sWcbFyowd9X5t8nGqIgRz07bh34msrTxwiQCCNfnLoHtFW
 xg9kQJKZzEaH4wdab5wkjR7o6v5vFXzvP6GblqZwuVOIDWFvtxxRpXLNxn8sebOLbCj8
 EDB7OgM2IbG19Wgq9+fmxdlwiVGCxl1g1lvSMWQpC0c6a/s4O+oFU536xCCFj2oSqeDO
 fIpN1Jvslp5rI5yRlfzHQcf/9vvYeVhE4Bjb+c0aXqsVFyJXOuVIPNr7C2sXOyGbLtCP
 3Dc6La2SuM1dAP0zFynUqL16DlgXsdre4Jyhr+UFuXZhGRYmQpw1e4R2zAlNbDgf1TQN
 9Pvw==
X-Gm-Message-State: AOAM530gmH5eRxD0bOdvRG51Qv8GwGZEaZnZ2qiJyAbvzWAIQi+mMEnD
 R0HjsWv2yUornG2r9hlrenox7BcZ3e5q48nEg7ybgQ==
X-Google-Smtp-Source: ABdhPJy+IHLLg+lum0l64VChU98w1V7sQgvluKp2fObOY2Y+7zq6S7LI5qBIbU+kQcI2lns5avDNyi64Irumie2mSQI=
X-Received: by 2002:a05:620a:75b:: with SMTP id
 i27mr4757700qki.593.1644527563819; 
 Thu, 10 Feb 2022 13:12:43 -0800 (PST)
MIME-Version: 1.0
References: <20220208044328.588860-1-bjorn.andersson@linaro.org>
 <YgJISIIacBnFyTLq@kroah.com> <YgV8GyK9G0gbWAaq@ripper>
In-Reply-To: <YgV8GyK9G0gbWAaq@ripper>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 11 Feb 2022 00:12:32 +0300
Message-ID: <CAA8EJppkZTRApQbuEUACw=r2kBH+321_f1ZqRf_-veEuwB56zg@mail.gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 14 Feb 2022 15:48:57 +0000
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
Cc: linux-arm-msm@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 10 Feb 2022 at 23:54, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Tue 08 Feb 02:39 PST 2022, Greg Kroah-Hartman wrote:
>
> > On Mon, Feb 07, 2022 at 08:43:27PM -0800, Bjorn Andersson wrote:
> > > In some implementations, such as the Qualcomm platforms, the display
> > > driver has no way to query the current HPD state and as such it's
> > > impossible to distinguish between disconnect and attention events.
> > >
> > > Add a parameter to drm_connector_oob_hotplug_event() to pass the HPD
> > > state.
> > >
> > > Also push the test for unchanged state in the displayport altmode driver
> > > into the i915 driver, to allow other drivers to act upon each update.
> > >
> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > ---
> > >
> > > Note that the Intel driver has only been compile tested with this patch.
> > >
> > >  drivers/gpu/drm/drm_connector.c          |  6 ++++--
> > >  drivers/gpu/drm/i915/display/intel_dp.c  | 14 +++++++++++---
> > >  drivers/gpu/drm/i915/i915_drv.h          |  3 +++
> > >  drivers/usb/typec/altmodes/displayport.c |  9 ++-------
> > >  include/drm/drm_connector.h              |  5 +++--
> > >  5 files changed, 23 insertions(+), 14 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> > > index a50c82bc2b2f..ad7295597c0f 100644
> > > --- a/drivers/gpu/drm/drm_connector.c
> > > +++ b/drivers/gpu/drm/drm_connector.c
> > > @@ -2825,6 +2825,7 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> > >  /**
> > >   * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
> > >   * @connector_fwnode: fwnode_handle to report the event on
> > > + * @hpd_state: number of data lanes available
> >
> > "number"?
> >
> > >   *
> > >   * On some hardware a hotplug event notification may come from outside the display
> > >   * driver / device. An example of this is some USB Type-C setups where the hardware
> > > @@ -2834,7 +2835,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> > >   * This function can be used to report these out-of-band events after obtaining
> > >   * a drm_connector reference through calling drm_connector_find_by_fwnode().
> > >   */
> > > -void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode)
> > > +void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> > > +                                bool hpd_state)
> >
> > This is a boolean, how can it be a number?
> >
>
> The kerneldoc wasn't appropriately updated as this went from being
> "number of data lanes" to "the hot plug detect (hpd) state".
>
> > And having a "flag" like this is a pain, how do you know what the
> > parameter really means?
> >
>
> You're right, "state" isn't a boolean property, let's rename it
> "hpd_high" to clarify it.

"connected" ?

>
> > >  {
> > >     struct drm_connector *connector;
> > >
> > > @@ -2843,7 +2845,7 @@ void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode)
> > >             return;
> > >
> > >     if (connector->funcs->oob_hotplug_event)
> > > -           connector->funcs->oob_hotplug_event(connector);
> > > +           connector->funcs->oob_hotplug_event(connector, hpd_state);
> > >
> > >     drm_connector_put(connector);
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 146b83916005..00520867d37b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -4816,15 +4816,23 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
> > >     return intel_modeset_synced_crtcs(state, conn);
> > >  }
> > >
> > > -static void intel_dp_oob_hotplug_event(struct drm_connector *connector)
> > > +static void intel_dp_oob_hotplug_event(struct drm_connector *connector, bool hpd_state)
> > >  {
> > >     struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> > >     struct drm_i915_private *i915 = to_i915(connector->dev);
> > > +   bool need_work = false;
> > >
> > >     spin_lock_irq(&i915->irq_lock);
> > > -   i915->hotplug.event_bits |= BIT(encoder->hpd_pin);
> > > +   if (hpd_state != i915->hotplug.oob_hotplug_state) {
> > > +           i915->hotplug.event_bits |= BIT(encoder->hpd_pin);
> > > +
> > > +           i915->hotplug.oob_hotplug_state = hpd_state;
> > > +           need_work = true;
> > > +   }
> > >     spin_unlock_irq(&i915->irq_lock);
> > > -   queue_delayed_work(system_wq, &i915->hotplug.hotplug_work, 0);
> > > +
> > > +   if (need_work)
> > > +           queue_delayed_work(system_wq, &i915->hotplug.hotplug_work, 0);
> > >  }
> > >
> > >  static const struct drm_connector_funcs intel_dp_connector_funcs = {
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index 8c1706fd81f9..543ebf1cfcf4 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -149,6 +149,9 @@ struct i915_hotplug {
> > >     /* Whether or not to count short HPD IRQs in HPD storms */
> > >     u8 hpd_short_storm_enabled;
> > >
> > > +   /* Last state reported by oob_hotplug_event */
> > > +   bool oob_hotplug_state;
> > > +
> > >     /*
> > >      * if we get a HPD irq from DP and a HPD irq from non-DP
> > >      * the non-DP HPD could block the workqueue on a mode config
> > > diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
> > > index c1d8c23baa39..a4596be4d34a 100644
> > > --- a/drivers/usb/typec/altmodes/displayport.c
> > > +++ b/drivers/usb/typec/altmodes/displayport.c
> > > @@ -59,7 +59,6 @@ struct dp_altmode {
> > >     struct typec_displayport_data data;
> > >
> > >     enum dp_state state;
> > > -   bool hpd;
> > >
> > >     struct mutex lock; /* device lock */
> > >     struct work_struct work;
> > > @@ -143,10 +142,7 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
> > >             if (!ret)
> > >                     dp->state = DP_STATE_CONFIGURE;
> > >     } else {
> > > -           if (dp->hpd != hpd) {
> > > -                   drm_connector_oob_hotplug_event(dp->connector_fwnode);
> > > -                   dp->hpd = hpd;
> > > -           }
> > > +           drm_connector_oob_hotplug_event(dp->connector_fwnode, hpd);
> > >     }
> > >
> > >     return ret;
> > > @@ -573,8 +569,7 @@ void dp_altmode_remove(struct typec_altmode *alt)
> > >     cancel_work_sync(&dp->work);
> > >
> > >     if (dp->connector_fwnode) {
> > > -           if (dp->hpd)
> > > -                   drm_connector_oob_hotplug_event(dp->connector_fwnode);
> > > +           drm_connector_oob_hotplug_event(dp->connector_fwnode, false);
> >
> > See, what does "false" here mean?
> >
> > Name the function for what it does, do not have random flags as
> > parameters, that makes it impossible to understand what the code is
> > doing when you are reading it, without having to jump around and figure
> > out what the flags are saying.
> >
> > And here they just don't even seem to be right :(
> >
>
> Both the old and new code will signal to the DRM driver that the cable
> was removed, the change is that we're carrying the level in the call
> rather than just indicating that the state has changed.
>
> We could introduce some HPD_HIGH/HPD_LOW defines to make it easier to
> read. But the various places I'm looking at just represented the hpd
> state as a bool.
>
> Regards,
> Bjorn



-- 
With best wishes
Dmitry
