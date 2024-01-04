Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E63E7823D70
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1102C10E3C1;
	Thu,  4 Jan 2024 08:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E297110E3BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704356999; x=1735892999;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=m54FIVQSS29Xt8/m5eEB1GLXQkkID4Gnm9XiChf+Vfs=;
 b=Pyj9hLYRNRYTXmXtCYizYs0QcssOZAdkeYwPzPYcmMLtsr879/GQ8KeY
 7x6JvTrUd6hXszoJFlkQTaYUsYcZY7Qh+ecJkhEOZK2SFoWiJsWGqLIyg
 E+qlLGSkewNbJxqsgFtLgNmh58cNMRXWtpoKUP5RlDPqfWrHyA8rDOB9g
 JJg7sX1P1XkCx0RmbPdfV4EnOxqtFYUKTQoQJlTj7Q/sfaS3KRWE1q44J
 7AcnTGHC1gcxeXe2S0jBuSeQt9aUePk4Qypuswwx6I5GolQyivd8kE/Si
 ek1oQ2qnH5PVGtEUl4ty/L4MLTlCUjb7MCxqCweGCMx4vUiuXyvAqQmOa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624505"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624505"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:29:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422623"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422623"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:29:58 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915: Keep the connector polled state disabled
 after storm
Date: Thu,  4 Jan 2024 10:29:58 +0200
Message-Id: <20240104083008.2715733-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If an HPD IRQ storm is detected on a connector during driver loading or
system suspend/resume - disabling the IRQ and switching to polling - the
polling may get disabled too early - before the intended 2 minute
HPD_STORM_REENABLE_DELAY - with the HPD IRQ staying disabled for this
duration. One such sequence is:

Thread#1                                   Thread#2
intel_display_driver_probe()->
  intel_hpd_init()->
    (HPD IRQ gets enabled)
  .                                        intel_hpd_irq_handler()->
  .                                          intel_hpd_irq_storm_detect()
  .                                            intel_hpd_irq_setup()->
  .                                              (HPD IRQ gets disabled)
  .                                         queue_delayed_work(hotplug.hotplug_work)
  .                                         ...
  .                                         i915_hotplug_work_func()->
  .                                           intel_hpd_irq_storm_switch_to_polling()->
  .                                             (polling enabled)
  .
  intel_hpd_poll_disable()->
    queue_work(hotplug.poll_init_work)
  ...
  i915_hpd_poll_init_work()->
    (polling gets disabled,
     HPD IRQ is still disabled)
  ...

  (Connector is neither polled or
   detected via HPD IRQs for 2 minutes)

  intel_hpd_irq_storm_reenable_work()->
    (HPD IRQ gets enabled)

To avoid the above 2 minute state without either polling or enabled HPD
IRQ, leave the connector's polling mode unchanged in
i915_hpd_poll_init_work() if its HPD IRQ got disabled after an IRQ storm
indicated by the connector's HPD_DISABLED pin state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 0c0700c6ec66d..74513c3d3690b 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -710,6 +710,8 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 		cancel_work(&dev_priv->display.hotplug.poll_init_work);
 	}
 
+	spin_lock_irq(&dev_priv->irq_lock);
+
 	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		enum hpd_pin pin;
@@ -718,6 +720,9 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 		if (pin == HPD_NONE)
 			continue;
 
+		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED)
+			continue;
+
 		connector->base.polled = connector->polled;
 
 		if (enabled && connector->base.polled == DRM_CONNECTOR_POLL_HPD)
@@ -726,6 +731,8 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
+	spin_unlock_irq(&dev_priv->irq_lock);
+
 	if (enabled)
 		drm_kms_helper_poll_reschedule(&dev_priv->drm);
 
-- 
2.39.2

