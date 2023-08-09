Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA14E77573A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 12:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D395910E07D;
	Wed,  9 Aug 2023 10:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F5D10E07D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 10:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691577778; x=1723113778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=186vSzYuEvbvhKK1MijVhic1691gOSvgEdlgUFOSkPg=;
 b=FZBVxx9Gff2dY9x7jpQN4KqAGSb3EPdz/lHUw61S9/7EMVkOfMAtXO1h
 StYZ5txWOybtoL255/B5ObOT9hkY01qEhGMfSrDlbjV5IOAqtAPxgXonG
 5uy63mhhsYmLO/a63jwKXh16AIov6pq+RIPh/5rhxJCIKc4mDc9dPeFG3
 812UjoWd48VwsRMLPcJUVFfKAAQFAQte6SoWhaN644z3BuRqO/lqRrYIh
 d0nArOWk5l9BLbhhjN/P8jCRM/zvaGZr/V68TGEUD7WNLo77DhqXGUJ8l
 CJhaXGvy2JjspKcgoOsZ81r64ecspiQ+F/fY+F5Fv5G4/iJ48Uxprbs7h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="371078484"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="371078484"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 03:42:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="761335932"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="761335932"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 03:42:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Aug 2023 13:43:07 +0300
Message-Id: <20230809104307.1218058-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230809104307.1218058-1-imre.deak@intel.com>
References: <20230809104307.1218058-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/3] drm/i915: Don't change the status of forced
 connectors during HPD poll detect
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

As described in the previous patch a connector shouldn't change its
status while it's forced to a connected/disconnected state. This can
still happen while running the connector detect function to account for
lost HPD events in a low-power state.

Fix this by reusing the connector detect function which handles a
hotplug event and prevents updating the status for forced connectors as
expected.

Testcase: igt@kms_force_connector_basic@force-connector-state
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 57 ++++++++++++++++++--
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index ca74f94531dda..e3ca192eb569c 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -260,9 +260,8 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 }
 
-enum intel_hotplug_state
-intel_encoder_hotplug(struct intel_encoder *encoder,
-		      struct intel_connector *connector)
+static enum intel_hotplug_state
+intel_hotplug_detect_connector(struct intel_connector *connector)
 {
 	struct drm_device *dev = connector->base.dev;
 	enum drm_connector_status old_status;
@@ -294,6 +293,13 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 	return INTEL_HOTPLUG_UNCHANGED;
 }
 
+enum intel_hotplug_state
+intel_encoder_hotplug(struct intel_encoder *encoder,
+		      struct intel_connector *connector)
+{
+	return intel_hotplug_detect_connector(connector);
+}
+
 static bool intel_encoder_has_hpd_pulse(struct intel_encoder *encoder)
 {
 	return intel_encoder_is_dig_port(encoder) &&
@@ -634,6 +640,49 @@ void intel_hpd_init(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
+static void i915_hpd_poll_detect_connectors(struct drm_i915_private *i915)
+{
+	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *connector;
+	struct intel_connector *first_changed_connector = NULL;
+	int changed = 0;
+
+	mutex_lock(&i915->drm.mode_config.mutex);
+
+	if (!i915->drm.mode_config.poll_enabled)
+		goto out;
+
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (!(connector->base.polled & DRM_CONNECTOR_POLL_HPD))
+			continue;
+
+		if (intel_hotplug_detect_connector(connector) != INTEL_HOTPLUG_CHANGED)
+			continue;
+
+		changed++;
+
+		if (changed == 1) {
+			drm_connector_get(&connector->base);
+			first_changed_connector = connector;
+		}
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+out:
+	mutex_unlock(&i915->drm.mode_config.mutex);
+
+	if (!changed)
+		return;
+
+	if (changed == 1)
+		drm_kms_helper_connector_hotplug_event(&first_changed_connector->base);
+	else
+		drm_kms_helper_hotplug_event(&i915->drm);
+
+	drm_connector_put(&first_changed_connector->base);
+}
+
 static void i915_hpd_poll_init_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
@@ -687,7 +736,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	 * in the middle of disabling polling
 	 */
 	if (!enabled) {
-		drm_helper_hpd_irq_event(&dev_priv->drm);
+		i915_hpd_poll_detect_connectors(dev_priv);
 
 		intel_display_power_put(dev_priv,
 					POWER_DOMAIN_DISPLAY_CORE,
-- 
2.37.2

