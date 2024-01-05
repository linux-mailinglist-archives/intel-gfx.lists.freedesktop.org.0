Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C20A2825519
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3546F10E60B;
	Fri,  5 Jan 2024 14:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F4810E60B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704464559; x=1736000559;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JFFPSeHClxB4O7e0lKnDlV9q8nUzc5MsGBuvG2Cq/uY=;
 b=LVm1ZJOMicY2JxzUf5FmQXl5LFVvjzfU7gnL79balynp/BR+qyzSKn2J
 myLNEWC9Gb6mVnZKeeWXSo3TnGFXn5GC6M0u/2R02FpNSbAb3TnMKrXq3
 teGym91bafK/ou0CYoW1BDBFHObblm4DdFp2EzK0jRt7s3y9YSyWpTg79
 O/snw+rO3kLE58+aYYrEKp5R4QDhBuCeSg+9oe9RkJxcHewnrFhJCEHr7
 iw5xdT1M1dNYKBcW8WvD7eIaJ/EGezgyHVipwm0iWwwVzdx/A7skErFqH
 zI3vQA/dUN2BUjqBZlj9amwXEFqe1NreiKHcItg0Mzl1VX563tHKxFUzR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4615543"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; 
   d="scan'208";a="4615543"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:22:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="1027777603"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="1027777603"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:22:37 -0800
Date: Fri, 5 Jan 2024 16:22:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH 02/12] drm/i915: Keep the connector polled state disabled
 after storm
Message-ID: <ZZgQuEmBeYeGVTX3@ideak-desk.fi.intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-3-imre.deak@intel.com>
 <b335ea398c5c70c412515484b414032ab64fd91d.camel@intel.com>
 <ZZgGYg2N+ZdsuvSq@ideak-desk.fi.intel.com>
 <3d516f5edc4fad183b42e40c4a61d4e2b129e3c5.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3d516f5edc4fad183b42e40c4a61d4e2b129e3c5.camel@intel.com>
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

On Fri, Jan 05, 2024 at 04:08:31PM +0200, Hogander, Jouni wrote:
> On Fri, 2024-01-05 at 15:38 +0200, Imre Deak wrote:
> > On Fri, Jan 05, 2024 at 03:23:49PM +0200, Hogander, Jouni wrote:
> > > On Thu, 2024-01-04 at 10:29 +0200, Imre Deak wrote:
> > > > If an HPD IRQ storm is detected on a connector during driver
> > > > loading or
> > > > system suspend/resume - disabling the IRQ and switching to
> > > > polling - the
> > > > polling may get disabled too early - before the intended 2 minute
> > > > HPD_STORM_REENABLE_DELAY - with the HPD IRQ staying disabled for
> > > > this
> > > > duration. One such sequence is:
> > > >
> > > > Thread#1                                   Thread#2
> > > > intel_display_driver_probe()->
> > > >   intel_hpd_init()->
> > > >     (HPD IRQ gets enabled)
> > > >   .                                        intel_hpd_irq_handler()->
> > > >   .                                          intel_hpd_irq_storm_detect()
> > > >   .                                            intel_hpd_irq_setup()->
> > > >   .                                              (HPD IRQ gets disabled)
> > > >   .                                         queue_delayed_work(hotplug.hotplug_work)
> > > >   .                                         ...
> > > >   .                                         i915_hotplug_work_func()->
> > > >   .                                           intel_hpd_irq_storm_switch_to_polling()->
> > > >   .                                             (polling enabled)
> > > >   .
> > > >   intel_hpd_poll_disable()->
> > > >     queue_work(hotplug.poll_init_work)
> > > >   ...
> > > >   i915_hpd_poll_init_work()->
> > > >     (polling gets disabled,
> > > >      HPD IRQ is still disabled)
> > > >   ...
> > > >
> > > >   (Connector is neither polled or
> > > >    detected via HPD IRQs for 2 minutes)
> > > >
> > > >   intel_hpd_irq_storm_reenable_work()->
> > > >     (HPD IRQ gets enabled)
> > > >
> > > > To avoid the above 2 minute state without either polling or
> > > > enabled HPD IRQ, leave the connector's polling mode unchanged in
> > > > i915_hpd_poll_init_work() if its HPD IRQ got disabled after an
> > > > IRQ storm indicated by the connector's HPD_DISABLED pin state.
> > >
> > > Is it actually order which needs to be ensured here? I.e. ensure
> > > that polling is disabled before hpd interrupt gets enabled?
> >
> > Disabling the polling also means that there is an explicit detection
> > of the connectors. This explicit detection at boot-up and resume must
> > happen _after_ the HPD interrupts are enabled, otherwise you could
> > miss an HPD connect/disconnect interrupt and leave the connector in a
> > stale connected state.
> 
> For that purpose i915_hpd_poll_detect_connectors could be used.

Yes, that's the only purpose of intel_hpd_poll_disable() during boot-up
and resume (as I mention in a later patch in the patchset). Maybe the
function name is not the best (since at those points polling is anyway
disabled), but the point is to have an explicit asynchronous detect (to
avoid the overhead), which is the same thing happening during runtime
whenever polling needs to be disabled (due to power well/rpm toggling).

> Anyways I'm not sure if that would be any better.
> To me it looks like simplest/cleanest way to tackle the issue described
> in the commit message is in the patch:
> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> 
> > > Why disabling polling is queued work and not just done during
> > > init/resume?
> >
> > To reduce the latency of boot-up and resume.
> >
> > > BR,
> > >
> > > Jouni Högander
> > >
> > > >
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_hotplug.c | 7 +++++++
> > > >  1 file changed, 7 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > > b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > > index 0c0700c6ec66d..74513c3d3690b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > > @@ -710,6 +710,8 @@ static void i915_hpd_poll_init_work(struct
> > > > work_struct *work)
> > > >                 cancel_work(&dev_priv-
> > > > > display.hotplug.poll_init_work);
> > > >         }
> > > >
> > > > +       spin_lock_irq(&dev_priv->irq_lock);
> > > > +
> > > >         drm_connector_list_iter_begin(&dev_priv->drm,
> > > > &conn_iter);
> > > >         for_each_intel_connector_iter(connector, &conn_iter) {
> > > >                 enum hpd_pin pin;
> > > > @@ -718,6 +720,9 @@ static void i915_hpd_poll_init_work(struct
> > > > work_struct *work)
> > > >                 if (pin == HPD_NONE)
> > > >                         continue;
> > > >
> > > > +               if (dev_priv->display.hotplug.stats[pin].state ==
> > > > HPD_DISABLED)
> > > > +                       continue;
> > > > +
> > > >                 connector->base.polled = connector->polled;
> > > >
> > > >                 if (enabled && connector->base.polled ==
> > > > DRM_CONNECTOR_POLL_HPD)
> > > > @@ -726,6 +731,8 @@ static void i915_hpd_poll_init_work(struct
> > > > work_struct *work)
> > > >         }
> > > >         drm_connector_list_iter_end(&conn_iter);
> > > >
> > > > +       spin_unlock_irq(&dev_priv->irq_lock);
> > > > +
> > > >         if (enabled)
> > > >                 drm_kms_helper_poll_reschedule(&dev_priv->drm);
> > > >
> > >
> 
