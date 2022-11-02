Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A19616A5E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC9010E546;
	Wed,  2 Nov 2022 17:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F92C10E52E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667409341; x=1698945341;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cCzzzyPxAFslSM3H0VtH0Gmeu69VcgV1/x/CRUWHDoQ=;
 b=S0z0zIEOrcNwa1BWqdhtcW6p3+96MAvtFwEIZ74qnTcGamz01o1yuFqR
 bIB1rkXBFWMYa4Ca/ZqL+g/oJfmreJoSndSm2itaGALZk2SI2LXLB4ECZ
 /yNNtM3xvNyMh1iBMPk4rSTLD8iAM5XmoJ6rQsr0vO9jrNitbgOrHGoHJ
 H5F02u2db3A/LAApuhMDWQqPcLuNIMmA6gaXIqfVk+nPGTc+2lXe8q52L
 FvPJxppg53t1tkTDI2bz4V3qHkD1oxXqRXD/KuIUim6Jbygnto4ecmjn3
 81dq2p1sbFSX02r8TM2PX8Vvq2cIRns3mdpi+pmFZ/YWZodExytpH5bMl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296918897"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296918897"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636857831"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636857831"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:15:24 +0200
Message-Id: <20221102171530.3261282-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221102171530.3261282-1-imre.deak@intel.com>
References: <20221102171530.3261282-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Allocate power domain set
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the intel_display_power_domain_set struct, currently its current
size close 1kB, can be allocated on the stack, it's better to allocate
the per-domain wakeref pointer array - used for debugging - within the
struct dynamically, so do this.

The memory freeing is guaranteed by the fact that the acquired domain
references tracked by struct can't be leaked either.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 61 ++++++++++++++++---
 .../drm/i915/display/intel_display_power.h    |  2 +-
 2 files changed, 53 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4c1de91e56ff9..e2da91c2a9638 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -830,19 +830,58 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
 }
 #endif
 
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+static intel_wakeref_t *
+get_debug_wakerefs(struct drm_i915_private *i915,
+		   struct intel_display_power_domain_set *power_domain_set)
+{
+	if (power_domain_set->wakerefs)
+		return power_domain_set->wakerefs;
+
+	power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
+					     sizeof(*power_domain_set->wakerefs),
+					     GFP_KERNEL);
+
+	drm_WARN_ON_ONCE(&i915->drm, !power_domain_set->wakerefs);
+
+	return power_domain_set->wakerefs;
+}
+
+static void
+free_empty_debug_wakerefs(struct intel_display_power_domain_set *power_domain_set)
+{
+	if (power_domain_set->wakerefs &&
+	    bitmap_empty(power_domain_set->mask.bits, POWER_DOMAIN_NUM))
+		kfree(fetch_and_zero(&power_domain_set->wakerefs));
+}
+#else
+static intel_wakeref_t *
+get_debug_wakerefs(struct drm_i915_private *i915,
+		   struct intel_display_power_domain_set *power_domain_set)
+{
+	return NULL;
+}
+
+static void
+free_empty_debug_wakerefs(struct intel_display_power_domain_set *power_domain_set)
+{
+}
+#endif
+
 void
 intel_display_power_get_in_set(struct drm_i915_private *i915,
 			       struct intel_display_power_domain_set *power_domain_set,
 			       enum intel_display_power_domain domain)
 {
 	intel_wakeref_t __maybe_unused wf;
+	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
 
 	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
 
 	wf = intel_display_power_get(i915, domain);
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-	power_domain_set->wakerefs[domain] = wf;
-#endif
+	if (debug_wakerefs)
+		debug_wakerefs[domain] = wf;
+
 	set_bit(domain, power_domain_set->mask.bits);
 }
 
@@ -852,6 +891,7 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 					  enum intel_display_power_domain domain)
 {
 	intel_wakeref_t wf;
+	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
 
 	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
 
@@ -859,9 +899,9 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 	if (!wf)
 		return false;
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-	power_domain_set->wakerefs[domain] = wf;
-#endif
+	if (debug_wakerefs)
+		debug_wakerefs[domain] = wf;
+
 	set_bit(domain, power_domain_set->mask.bits);
 
 	return true;
@@ -873,6 +913,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 				    struct intel_power_domain_mask *mask)
 {
 	enum intel_display_power_domain domain;
+	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
 
 	drm_WARN_ON(&i915->drm,
 		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
@@ -880,12 +921,14 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	for_each_power_domain(domain, mask) {
 		intel_wakeref_t __maybe_unused wf = -1;
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
-#endif
+		if (debug_wakerefs)
+			wf = fetch_and_zero(&debug_wakerefs[domain]);
+
 		intel_display_power_put(i915, domain, wf);
 		clear_bit(domain, power_domain_set->mask.bits);
 	}
+
+	free_empty_debug_wakerefs(power_domain_set);
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 7136ea3f233e9..c847aab7b2f88 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -146,7 +146,7 @@ struct i915_power_domains {
 struct intel_display_power_domain_set {
 	struct intel_power_domain_mask mask;
 #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
-	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
+	intel_wakeref_t *wakerefs;
 #endif
 };
 
-- 
2.37.1

