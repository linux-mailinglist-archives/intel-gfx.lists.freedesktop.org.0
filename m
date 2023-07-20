Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D1975AECA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 14:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C27210E5BD;
	Thu, 20 Jul 2023 12:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B8510E147
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 12:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689857657; x=1721393657;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/AzeCkpvgqlxTIhfqM54UTOW4U2MywwBNTEIU532AFg=;
 b=fRrTVx+9evxsCGM5SxbwPwxtgDia+Izua6U1d86gURpIAJeddsBJO5Yu
 LEfnlp5NrI9vuG1LHzsH8bwH+cOyarlAzos/2YXAs2BLQllBJqYV7coMY
 gR61UggaqzHu9jlWPjSp0iTecoJU4MZ9LYYj2crvHgZAUAJmO+QLbZuM8
 Zcjd+Lk/Oj6p5IWwy+LHoKMOyJXSvF3qN5dGXovpxz7Wql4hwSJqyUITt
 qdEkN20/Pb+imzs12qGUn+wUOz0qS6CLPJ6eS8hcVLZWLjqF9E4mMVBz7
 q7SxpClfpGfQbtBb24cu0ZChXE4C+KfIu6DrCljjfMaR2GA1ETFXDxXs+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="351582795"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="351582795"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:54:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="794477611"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="794477611"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:54:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 15:54:18 +0300
Message-Id: <20230720125418.236140-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230720125418.236140-1-imre.deak@intel.com>
References: <20230720125418.236140-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915: Don't change the status of
 forced connectors during HPD poll detect
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
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 57 ++++++++++++++++++--
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 1f6fa3f994feb..e8562f6f8bb44 100644
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

