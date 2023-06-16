Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A27733858
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 20:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62C910E67C;
	Fri, 16 Jun 2023 18:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182EC10E67B
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 18:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686941466; x=1718477466;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ahUui2fclx3dg5Q6yqtTKhyXl+M63dL62gqOzB6Oa9I=;
 b=RH1dmvWIfoAC/+Q2OaLlUPEnsrv5lOoRcSiQbgwNVKjho74ykdxy2BPc
 U0FxCXLKiyDAqPFXZSRpFmCz+TOV2zG6lIrQT96oNLqi0AWBGlSC0ac/G
 ZA8IEHDsYfxyYYgwhJUtBGP1mCNggxfy/2N3g4vmd44WdACvcF2l3z+HE
 LWOQM6Op+MIEoRNoEMYtdph3IcH9mZ37+laqChxd+qqE7RwN0Z8XgOBaM
 lDnwvOf/HnqYxjBgi0k0zOpsNCTLnVrX3V9nT9jKwPodR60wLOhkf6+rU
 38tXh8BcoowRNmXG43y2IEg6EvHRHVB2CQenvMnrMDec66POZ4+5jo72h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356778194"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="356778194"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="887198420"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="887198420"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 21:51:03 +0300
Message-Id: <20230616185104.2502003-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230616185104.2502003-1-imre.deak@intel.com>
References: <20230616185104.2502003-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Add way to specify the power-off
 delay of a display power domain
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

Add support for specifying a delay different than the current 100 ms
default for powering off a display power domain. This is needed by the
next patch which delays re-enabling DC states during modesets to avoid
the off->on->off toggling overhead of the DC_off power well, but does
this using a < 100 ms delay for a better utilization of DC power saving
states.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 41 +++++++++++++++----
 .../drm/i915/display/intel_display_power.h    | 26 ++++++++++--
 2 files changed, 55 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d3310c7205320..38225e5d311e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -458,6 +458,17 @@ async_put_domains_clear_domain(struct i915_power_domains *power_domains,
 	clear_bit(domain, power_domains->async_put_domains[1].bits);
 }
 
+static void
+cancel_async_put_work(struct i915_power_domains *power_domains, bool sync)
+{
+	if (sync)
+		cancel_delayed_work_sync(&power_domains->async_put_work);
+	else
+		cancel_delayed_work(&power_domains->async_put_work);
+
+	power_domains->async_put_next_delay = 0;
+}
+
 static bool
 intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
 				       enum intel_display_power_domain domain)
@@ -478,7 +489,7 @@ intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
 	if (!bitmap_empty(async_put_mask.bits, POWER_DOMAIN_NUM))
 		goto out_verify;
 
-	cancel_delayed_work(&power_domains->async_put_work);
+	cancel_async_put_work(power_domains, false);
 	intel_runtime_pm_put_raw(&dev_priv->runtime_pm,
 				 fetch_and_zero(&power_domains->async_put_wakeref));
 out_verify:
@@ -609,7 +620,8 @@ static void __intel_display_power_put(struct drm_i915_private *dev_priv,
 
 static void
 queue_async_put_domains_work(struct i915_power_domains *power_domains,
-			     intel_wakeref_t wakeref)
+			     intel_wakeref_t wakeref,
+			     int delay_ms)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
@@ -618,7 +630,7 @@ queue_async_put_domains_work(struct i915_power_domains *power_domains,
 	power_domains->async_put_wakeref = wakeref;
 	drm_WARN_ON(&i915->drm, !queue_delayed_work(system_unbound_wq,
 						    &power_domains->async_put_work,
-						    msecs_to_jiffies(100)));
+						    msecs_to_jiffies(delay_ms)));
 }
 
 static void
@@ -681,13 +693,15 @@ intel_display_power_put_async_work(struct work_struct *work)
 		bitmap_zero(power_domains->async_put_domains[1].bits,
 			    POWER_DOMAIN_NUM);
 		queue_async_put_domains_work(power_domains,
-					     fetch_and_zero(&new_work_wakeref));
+					     fetch_and_zero(&new_work_wakeref),
+					     power_domains->async_put_next_delay);
+		power_domains->async_put_next_delay = 0;
 	} else {
 		/*
 		 * Cancel the work that got queued after this one got dequeued,
 		 * since here we released the corresponding async-put reference.
 		 */
-		cancel_delayed_work(&power_domains->async_put_work);
+		cancel_async_put_work(power_domains, false);
 	}
 
 out_verify:
@@ -706,19 +720,25 @@ intel_display_power_put_async_work(struct work_struct *work)
  * @i915: i915 device instance
  * @domain: power domain to reference
  * @wakeref: wakeref acquired for the reference that is being released
+ * @delay_ms: delay of powering down the power domain
  *
  * This function drops the power domain reference obtained by
  * intel_display_power_get*() and schedules a work to power down the
  * corresponding hardware block if this is the last reference.
+ * The power down is delayed by @delay_ms if this is >= 0, or by a default
+ * 100 ms otherwise.
  */
 void __intel_display_power_put_async(struct drm_i915_private *i915,
 				     enum intel_display_power_domain domain,
-				     intel_wakeref_t wakeref)
+				     intel_wakeref_t wakeref,
+				     int delay_ms)
 {
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
 	intel_wakeref_t work_wakeref = intel_runtime_pm_get_raw(rpm);
 
+	delay_ms = delay_ms >= 0 ? delay_ms : 100;
+
 	mutex_lock(&power_domains->lock);
 
 	if (power_domains->domain_use_count[domain] > 1) {
@@ -732,10 +752,13 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 	/* Let a pending work requeue itself or queue a new one. */
 	if (power_domains->async_put_wakeref) {
 		set_bit(domain, power_domains->async_put_domains[1].bits);
+		power_domains->async_put_next_delay = max(power_domains->async_put_next_delay,
+							  delay_ms);
 	} else {
 		set_bit(domain, power_domains->async_put_domains[0].bits);
 		queue_async_put_domains_work(power_domains,
-					     fetch_and_zero(&work_wakeref));
+					     fetch_and_zero(&work_wakeref),
+					     delay_ms);
 	}
 
 out_verify:
@@ -775,7 +798,7 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
 
 	async_put_domains_mask(power_domains, &async_put_mask);
 	release_async_put_domains(power_domains, &async_put_mask);
-	cancel_delayed_work(&power_domains->async_put_work);
+	cancel_async_put_work(power_domains, false);
 
 out_verify:
 	verify_async_put_domains_state(power_domains);
@@ -799,7 +822,7 @@ intel_display_power_flush_work_sync(struct drm_i915_private *i915)
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 
 	intel_display_power_flush_work(i915);
-	cancel_delayed_work_sync(&power_domains->async_put_work);
+	cancel_async_put_work(power_domains, true);
 
 	verify_async_put_domains_state(power_domains);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 83ceab091468e..d3b5d04b7b077 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -151,6 +151,7 @@ struct i915_power_domains {
 	struct delayed_work async_put_work;
 	intel_wakeref_t async_put_wakeref;
 	struct intel_power_domain_mask async_put_domains[2];
+	int async_put_next_delay;
 
 	struct i915_power_well *power_wells;
 };
@@ -197,7 +198,8 @@ intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 				   enum intel_display_power_domain domain);
 void __intel_display_power_put_async(struct drm_i915_private *i915,
 				     enum intel_display_power_domain domain,
-				     intel_wakeref_t wakeref);
+				     intel_wakeref_t wakeref,
+				     int delay_ms);
 void intel_display_power_flush_work(struct drm_i915_private *i915);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 void intel_display_power_put(struct drm_i915_private *dev_priv,
@@ -208,7 +210,16 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 			      enum intel_display_power_domain domain,
 			      intel_wakeref_t wakeref)
 {
-	__intel_display_power_put_async(i915, domain, wakeref);
+	__intel_display_power_put_async(i915, domain, wakeref, -1);
+}
+
+static inline void
+intel_display_power_put_async_delay(struct drm_i915_private *i915,
+				    enum intel_display_power_domain domain,
+				    intel_wakeref_t wakeref,
+				    int delay_ms)
+{
+	__intel_display_power_put_async(i915, domain, wakeref, delay_ms);
 }
 #else
 void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
@@ -227,7 +238,16 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 			      enum intel_display_power_domain domain,
 			      intel_wakeref_t wakeref)
 {
-	__intel_display_power_put_async(i915, domain, -1);
+	__intel_display_power_put_async(i915, domain, -1, -1);
+}
+
+static inline void
+intel_display_power_put_async_delay(struct drm_i915_private *i915,
+				    enum intel_display_power_domain domain,
+				    intel_wakeref_t wakeref,
+				    int delay_ms)
+{
+	__intel_display_power_put_async(i915, domain, -1, delay_ms);
 }
 #endif
 
-- 
2.37.2

