Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C3C82548B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 14:38:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64C910E5E2;
	Fri,  5 Jan 2024 13:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C366610E5E2
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 13:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704461912; x=1735997912;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Oz7Zp2MmxhY7KloMcuoTsn+jV+Ok9059CrbUS85+lbQ=;
 b=ScyBpix+VjmbVd8aeRdQotfHs1bxb21pN1z4b0LNjf2O4C+Z06tDMpi/
 DxEXdKx3I+Aq9XDwkA/b49wK+tLYMOLBGxvkGaLEy3anJOYa+S0CRpdkL
 URjr6koEHKgsoL11y4swyRSPsIkIL2kBki8gkIwQu2CfIWZCbUIEfE2NN
 aRvDpXbxvQNImSudeSgl9N67+DQbOitbkN2HCmmqKbyod4+jnSmj5IyTp
 uJt2RpOQLLIMrCn0KHpKAq52qnegLaSVqjkN4HJd+EJ4DGRbmpp7Ms5nj
 DGtfEA+gQNvvV8HRZWt/dDKmA8CD79YIny/OOVm/eaqj+9NPVAWbVubQp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="394680128"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="394680128"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 05:38:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="851138032"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="851138032"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 05:38:31 -0800
Date: Fri, 5 Jan 2024 15:38:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH 02/12] drm/i915: Keep the connector polled state disabled
 after storm
Message-ID: <ZZgGYg2N+ZdsuvSq@ideak-desk.fi.intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-3-imre.deak@intel.com>
 <b335ea398c5c70c412515484b414032ab64fd91d.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b335ea398c5c70c412515484b414032ab64fd91d.camel@intel.com>
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

On Fri, Jan 05, 2024 at 03:23:49PM +0200, Hogander, Jouni wrote:
> On Thu, 2024-01-04 at 10:29 +0200, Imre Deak wrote:
> > If an HPD IRQ storm is detected on a connector during driver loading or
> > system suspend/resume - disabling the IRQ and switching to polling - the
> > polling may get disabled too early - before the intended 2 minute
> > HPD_STORM_REENABLE_DELAY - with the HPD IRQ staying disabled for this
> > duration. One such sequence is:
> >
> > Thread#1                                   Thread#2
> > intel_display_driver_probe()->
> >   intel_hpd_init()->
> >     (HPD IRQ gets enabled)
> >   .                                        intel_hpd_irq_handler()->
> >   .                                          intel_hpd_irq_storm_detect()
> >   .                                            intel_hpd_irq_setup()->
> >   .                                              (HPD IRQ gets disabled)
> >   .                                         queue_delayed_work(hotplug.hotplug_work)
> >   .                                         ...
> >   .                                         i915_hotplug_work_func()->
> >   .                                           intel_hpd_irq_storm_switch_to_polling()->
> >   .                                             (polling enabled)
> >   .
> >   intel_hpd_poll_disable()->
> >     queue_work(hotplug.poll_init_work)
> >   ...
> >   i915_hpd_poll_init_work()->
> >     (polling gets disabled,
> >      HPD IRQ is still disabled)
> >   ...
> >
> >   (Connector is neither polled or
> >    detected via HPD IRQs for 2 minutes)
> >
> >   intel_hpd_irq_storm_reenable_work()->
> >     (HPD IRQ gets enabled)
> >
> > To avoid the above 2 minute state without either polling or enabled HPD
> > IRQ, leave the connector's polling mode unchanged in
> > i915_hpd_poll_init_work() if its HPD IRQ got disabled after an IRQ storm
> > indicated by the connector's HPD_DISABLED pin state.
> 
> Is it actually order which needs to be ensured here? I.e. ensure that
> polling is disabled before hpd interrupt gets enabled?

Disabling the polling also means that there is an explicit detection of
the connectors. This explicit detection at boot-up and resume must
happen _after_ the HPD interrupts are enabled, otherwise you could miss
an HPD connect/disconnect interrupt and leave the connector in a stale
connected state.

> Why disabling polling is queued work and not just done during init/resume?

To reduce the latency of boot-up and resume.

> BR,
> 
> Jouni Högander
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hotplug.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > index 0c0700c6ec66d..74513c3d3690b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -710,6 +710,8 @@ static void i915_hpd_poll_init_work(struct
> > work_struct *work)
> >                 cancel_work(&dev_priv-
> > >display.hotplug.poll_init_work);
> >         }
> >
> > +       spin_lock_irq(&dev_priv->irq_lock);
> > +
> >         drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> >         for_each_intel_connector_iter(connector, &conn_iter) {
> >                 enum hpd_pin pin;
> > @@ -718,6 +720,9 @@ static void i915_hpd_poll_init_work(struct
> > work_struct *work)
> >                 if (pin == HPD_NONE)
> >                         continue;
> >
> > +               if (dev_priv->display.hotplug.stats[pin].state ==
> > HPD_DISABLED)
> > +                       continue;
> > +
> >                 connector->base.polled = connector->polled;
> >
> >                 if (enabled && connector->base.polled ==
> > DRM_CONNECTOR_POLL_HPD)
> > @@ -726,6 +731,8 @@ static void i915_hpd_poll_init_work(struct
> > work_struct *work)
> >         }
> >         drm_connector_list_iter_end(&conn_iter);
> >
> > +       spin_unlock_irq(&dev_priv->irq_lock);
> > +
> >         if (enabled)
> >                 drm_kms_helper_poll_reschedule(&dev_priv->drm);
> >
> 
