Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338A061FB24
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FCF10E4E5;
	Mon,  7 Nov 2022 17:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16EFD10E4E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841776; x=1699377776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UJKkRwxkNyvqERX4reEnIaBmiEVuuPmpPew/qpvFaWE=;
 b=PkZuD33v9UgQ9KwqFUkEQeb34XpfmiYHuK1Ks+M3dFZuiRA1yzPT1uGZ
 zAjSGN8K8+cFSieEiEtkYmJUHbv9sq2kFhWqXoKtV8ZdZmTQMFf60oldx
 ZTsp8+BzatUh8EqDJvvmpbzSAcWMMuGtWzAbPgaLdTep5Vo5kFagLPOeq
 Am28KxQ2OetTHsASlb9mnYVHLQY1Y/KRjXl68ZDHjkw16nuM9ZpEufLJ0
 adHfkVehWj3umdq3UjnFCXj38mIiHG797vdJvO9w695UsW2tKdPiLirXX
 pU3Ka3nelK4LMufuj21SWbqnmu4E+/2jGKXzGnFvmBgyghje0gg3vNSCW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247085"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247085"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248442"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248442"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:22 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:09 +0200
Message-Id: <20221107170917.3566758-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
References: <20221107170917.3566758-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915: Allocate power domain set
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
size close 1kB, can be allocated on the stack, it's better to allocate
the per-domain wakeref pointer array - used for debugging - within the
struct dynamically, so do this.

The memory freeing is guaranteed by the fact that the acquired domain
references tracked by struct can't be leaked either.

v2:
- Don't use fetch_and_zero() when freeing the wakerefs array. (Jani)
- Simplify intel_display_power_get/put_in_set(). (Jani)
- Check in intel_crtc_destroy() that the wakerefs array has been freed.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +
 .../drm/i915/display/intel_display_power.c    | 95 +++++++++++++++----
 .../drm/i915/display/intel_display_power.h    |  2 +-
 3 files changed, 79 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 037fc140b585c..2c8d564e73182 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -205,6 +205,10 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
 	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
 
 	drm_crtc_cleanup(&crtc->base);
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+	drm_WARN_ON(crtc->base.dev, crtc->enabled_power_domains.wakerefs);
+#endif
 	kfree(crtc);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4c1de91e56ff9..db235b79c9629 100644
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
@@ -874,17 +934,10 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
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
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 1e77e52c87fec..662123d260a7a 100644
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
 
-- 
2.37.1

