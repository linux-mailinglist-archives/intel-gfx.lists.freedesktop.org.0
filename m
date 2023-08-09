Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BADFB77573B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 12:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07DFE10E416;
	Wed,  9 Aug 2023 10:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CE110E046
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 10:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691577776; x=1723113776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IH8td+18k9nn5DPD3ww7fjWAHfO+R3CHE85TLJ06hxk=;
 b=i8xowpWoZucKHn/gCImduJxBsAmW9cTjJz516ZKuNwKKvgccuBR58T6C
 CGofZ/4AkP0QsiUxJHhaZR8014vMepuUyDVayxSJTW/hCWiRZN3FRb4OK
 L3p0frSBiUjjMGXQ4w8r8yZN5G9ycigeionAFyKKmQl0iNpqr9brcZZ7h
 vp2+PJlw1woz3qCBm8zIeocAAeUVmulnhBUoDJA8GbNAz3xwUU4vFSGYb
 QJLh3JZMZNC8fFqFMdrjAgr/BBjE+s3c9U3GffnuX4gHrRM/nXfZtmURM
 8Zo67Kp47SQFbI2Dr1CeDvdmucdhIB0F+6IGPaMnh2zHmcftGaUW3AZq5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="371078477"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="371078477"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 03:42:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="761335921"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="761335921"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 03:42:54 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Aug 2023 13:43:05 +0300
Message-Id: <20230809104307.1218058-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/3] drm/i915: Avoid endless HPD poll detect loop
 via runtime suspend/resume
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

The issue fixed in

commit a8ddac7c9f06 ("drm/i915: Avoid HPD poll detect triggering a new detect cycle")

on VLV, CHV is still present on platforms where the display hotplug
detection functionality is available whenever the device is in D0 state
(hence these platforms switch to HPD polling only when the device is
runtime suspended).

The above commit avoids an endless i915_hpd_poll_init_work() ->
connector detect loop by making sure that by the end of
i915_hpd_poll_init_work() all display power references acquired by the
connector detect functions which can trigger a new cycle (display core
power domain) are dropped. However on platforms where HPD polling is
enabled/disabled only from the runtime suspend/resume handlers, this is
not ensured: for instance eDP VDD, TypeC port PHYs and the runtime
autosuspend delay may still keep the device runtime resumed (via a power
reference acquired during connector detection and hence result in an
endless loop like the above).

Solve the problem described in the above commit on all platforms, by
making sure that a i915_hpd_poll_init_work() -> connector detect
sequence can't take any power reference in the first place which would
trigger a new cycle, instead of relying on these power references to be
dropped by the end of the sequence.

With the default runtime autosuspend delay (10 sec) this issue didn't
happen in practice, since the device remained runtime resumed for the
whole duration of the above sequence. CI/IGT tests however set the
autosuspend delay to 0, which makes the problem visible, see References:
below.

Tested on GLK, CHV.

v2: Don't warn about a requeued work, to account for disabling
    polling directly during driver loading, reset and system resume.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7940#note_1997403
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     |  6 ------
 drivers/gpu/drm/i915/display/intel_dp.c      |  6 ------
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  6 ------
 drivers/gpu/drm/i915/display/intel_hotplug.c | 22 +++++++++++++++++++-
 4 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 8090747586877..f66340b4caf0f 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -907,12 +907,6 @@ intel_crt_detect(struct drm_connector *connector,
 out:
 	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
 
-	/*
-	 * Make sure the refs for power wells enabled during detect are
-	 * dropped to avoid a new detect cycle triggered by HPD polling.
-	 */
-	intel_display_power_flush_work(dev_priv);
-
 	return status;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 12bd2f322e627..964bf0551bdc9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4957,12 +4957,6 @@ intel_dp_detect(struct drm_connector *connector,
 	if (status != connector_status_connected && !intel_dp->is_mst)
 		intel_dp_unset_edid(intel_dp);
 
-	/*
-	 * Make sure the refs for power wells enabled during detect are
-	 * dropped to avoid a new detect cycle triggered by HPD polling.
-	 */
-	intel_display_power_flush_work(dev_priv);
-
 	if (!intel_dp_is_edp(intel_dp))
 		drm_dp_set_subconnector_property(connector,
 						 status,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 94a7e1537f427..9442bf43550ee 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2522,12 +2522,6 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	if (status != connector_status_connected)
 		cec_notifier_phys_addr_invalidate(intel_hdmi->cec_notifier);
 
-	/*
-	 * Make sure the refs for power wells enabled during detect are
-	 * dropped to avoid a new detect cycle triggered by HPD polling.
-	 */
-	intel_display_power_flush_work(dev_priv);
-
 	return status;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 0ff5ed46ae1e7..dd7eb9fc78610 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -25,6 +25,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_hotplug.h"
 #include "intel_hotplug_irq.h"
@@ -638,11 +639,25 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 			     display.hotplug.poll_init_work);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
+	intel_wakeref_t wakeref;
 	bool enabled;
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 
 	enabled = READ_ONCE(dev_priv->display.hotplug.poll_enabled);
+	/*
+	 * Prevent taking a power reference from this sequence of
+	 * i915_hpd_poll_init_work() -> drm_helper_hpd_irq_event() ->
+	 * connector detect which would requeue i915_hpd_poll_init_work()
+	 * and so risk an endless loop of this same sequence.
+	 */
+	if (!enabled) {
+		wakeref = intel_display_power_get(dev_priv,
+						  POWER_DOMAIN_DISPLAY_CORE);
+		drm_WARN_ON(&dev_priv->drm,
+			    READ_ONCE(dev_priv->display.hotplug.poll_enabled));
+		cancel_work(&dev_priv->display.hotplug.poll_init_work);
+	}
 
 	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
@@ -669,8 +684,13 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	 * We might have missed any hotplugs that happened while we were
 	 * in the middle of disabling polling
 	 */
-	if (!enabled)
+	if (!enabled) {
 		drm_helper_hpd_irq_event(&dev_priv->drm);
+
+		intel_display_power_put(dev_priv,
+					POWER_DOMAIN_DISPLAY_CORE,
+					wakeref);
+	}
 }
 
 /**
-- 
2.37.2

