Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C666217FF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B1010E483;
	Tue,  8 Nov 2022 15:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECC410E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920979; x=1699456979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=34sitl4Lkk6lxk57xIyylLNZhR1aUPrlDEAsiaNcUEc=;
 b=QUKIVYnmS8hKecSBZx6GGAn/pak5JdEi6MIjIpdJeC5D+UlEhsE3UFh7
 qKn5BlQtBU3hFz+v36vmfLxu3Z9IKNTMgNSM1qUei1UKjz3rnc9gOb3sp
 RHs69pi1UmjIyNXMwmlkL4NNXDuAJp136haki3JI6z3H7uKcWI5WkD891
 LZaf/HaKIEK9pJL4fZzBFnTZNU253NVez0XTHqQiSmpjF5qvs2byg5B7t
 Vb0SRlnsJQULSlie3Ljaa3ZbUy677q83MglFB6lySjScgyioAFaw0Lpdz
 VQvIA7HVPseilaR70hlnW7zUyqe9PoBdwilHW0gZXEiHWTa5f3jqOCHae g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="374992548"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="374992548"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669580870"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="669580870"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:31 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:23 +0200
Message-Id: <20221108151828.3761358-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-2-imre.deak@intel.com>
References: <20221107170917.3566758-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/9] drm/i915: Allocate power domain set
 wakerefs dynamically
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the intel_display_power_domain_set struct, currently its current
size close to 1kB, can be allocated on the stack, it's better to
allocate the per-domain wakeref pointer array - used for debugging -
within the struct dynamically, so do this.

The memory freeing is guaranteed by the fact that the acquired domain
references tracked by the struct can't be leaked either.

v2:
- Don't use fetch_and_zero() when freeing the wakerefs array. (Jani)
- Simplify intel_display_power_get/put_in_set(). (Jani)
- Check in intel_crtc_destroy() that the wakerefs array has been freed.
v3:
- Add intel_display_power_set_disabled() and a separate assert
  function instead of open coding these. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  11 ++
 .../drm/i915/display/intel_display_power.c    | 109 ++++++++++++++----
 .../drm/i915/display/intel_display_power.h    |   6 +-
 3 files changed, 104 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 037fc140b585c..c18d98bfe1a7c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -21,6 +21,7 @@
 #include "intel_crtc.h"
 #include "intel_cursor.h"
 #include "intel_display_debugfs.h"
+#include "intel_display_power.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
@@ -37,6 +38,14 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
 		drm_crtc_vblank_put(crtc);
 }
 
+static void assert_power_domains_disabled(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	drm_WARN_ON(&i915->drm,
+		    !intel_display_power_set_disabled(i915, &crtc->enabled_power_domains));
+}
+
 struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
 {
 	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
@@ -204,6 +213,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
 
 	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
 
+	assert_power_domains_disabled(crtc);
+
 	drm_crtc_cleanup(&crtc->base);
 	kfree(crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4c1de91e56ff9..ca63b4f1af41b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -830,20 +830,85 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
 }
 #endif
 
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+static void
+add_domain_to_set(struct drm_i915_private *i915,
+		  struct intel_display_power_domain_set *power_domain_set,
+		  enum intel_display_power_domain domain,
+		  intel_wakeref_t wf)
+{
+	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
+
+	if (!power_domain_set->wakerefs)
+		power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
+						     sizeof(*power_domain_set->wakerefs),
+						     GFP_KERNEL);
+
+	if (power_domain_set->wakerefs)
+		power_domain_set->wakerefs[domain] = wf;
+
+	set_bit(domain, power_domain_set->mask.bits);
+}
+
+static intel_wakeref_t
+remove_domain_from_set(struct drm_i915_private *i915,
+		       struct intel_display_power_domain_set *power_domain_set,
+		       enum intel_display_power_domain domain)
+{
+	intel_wakeref_t wf;
+
+	drm_WARN_ON(&i915->drm, !test_bit(domain, power_domain_set->mask.bits));
+
+	clear_bit(domain, power_domain_set->mask.bits);
+
+	if (!power_domain_set->wakerefs)
+		return -1;
+
+	wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
+
+	if (bitmap_empty(power_domain_set->mask.bits, POWER_DOMAIN_NUM)) {
+		kfree(power_domain_set->wakerefs);
+		power_domain_set->wakerefs = NULL;
+	}
+
+	return wf;
+
+}
+#else
+static void
+add_domain_to_set(struct drm_i915_private *i915,
+		  struct intel_display_power_domain_set *power_domain_set,
+		  enum intel_display_power_domain domain,
+		  intel_wakeref_t wf)
+{
+	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
+
+	set_bit(domain, power_domain_set->mask.bits);
+}
+
+static intel_wakeref_t
+remove_domain_from_set(struct drm_i915_private *i915,
+		       struct intel_display_power_domain_set *power_domain_set,
+		       enum intel_display_power_domain domain)
+{
+	drm_WARN_ON(&i915->drm, !test_bit(domain, power_domain_set->mask.bits));
+
+	clear_bit(domain, power_domain_set->mask.bits);
+
+	return -1;
+}
+#endif
+
 void
 intel_display_power_get_in_set(struct drm_i915_private *i915,
 			       struct intel_display_power_domain_set *power_domain_set,
 			       enum intel_display_power_domain domain)
 {
-	intel_wakeref_t __maybe_unused wf;
-
-	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
+	intel_wakeref_t wf;
 
 	wf = intel_display_power_get(i915, domain);
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-	power_domain_set->wakerefs[domain] = wf;
-#endif
-	set_bit(domain, power_domain_set->mask.bits);
+
+	add_domain_to_set(i915, power_domain_set, domain, wf);
 }
 
 bool
@@ -853,16 +918,11 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 {
 	intel_wakeref_t wf;
 
-	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
-
 	wf = intel_display_power_get_if_enabled(i915, domain);
 	if (!wf)
 		return false;
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-	power_domain_set->wakerefs[domain] = wf;
-#endif
-	set_bit(domain, power_domain_set->mask.bits);
+	add_domain_to_set(i915, power_domain_set, domain, wf);
 
 	return true;
 }
@@ -874,20 +934,27 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 {
 	enum intel_display_power_domain domain;
 
-	drm_WARN_ON(&i915->drm,
-		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
-
 	for_each_power_domain(domain, mask) {
-		intel_wakeref_t __maybe_unused wf = -1;
+		intel_wakeref_t wf = remove_domain_from_set(i915, power_domain_set, domain);
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
-#endif
 		intel_display_power_put(i915, domain, wf);
-		clear_bit(domain, power_domain_set->mask.bits);
 	}
 }
 
+bool
+intel_display_power_set_disabled(struct drm_i915_private *i915,
+				 struct intel_display_power_domain_set *power_domain_set)
+{
+	if (!bitmap_empty(power_domain_set->mask.bits, POWER_DOMAIN_NUM))
+		return false;
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+	drm_WARN_ON(&i915->drm, power_domain_set->wakerefs);
+#endif
+
+	return true;
+}
+
 static int
 sanitize_disable_power_well_option(const struct drm_i915_private *dev_priv,
 				   int disable_power_well)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 1e77e52c87fec..31b0e9ae863c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -147,7 +147,7 @@ struct i915_power_domains {
 struct intel_display_power_domain_set {
 	struct intel_power_domain_mask mask;
 #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
-	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
+	intel_wakeref_t *wakerefs;
 #endif
 };
 
@@ -243,6 +243,10 @@ intel_display_power_put_all_in_set(struct drm_i915_private *i915,
 	intel_display_power_put_mask_in_set(i915, power_domain_set, &power_domain_set->mask);
 }
 
+bool
+intel_display_power_set_disabled(struct drm_i915_private *i915,
+				 struct intel_display_power_domain_set *power_domain_set);
+
 void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
 
 enum intel_display_power_domain
-- 
2.37.1

