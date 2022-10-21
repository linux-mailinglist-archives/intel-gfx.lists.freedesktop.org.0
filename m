Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD11607DA3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 19:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CEDC10E5E0;
	Fri, 21 Oct 2022 17:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA75210E5CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666373852; x=1697909852;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lPpNg4CmlVHAe9O4HpC7t0rmFyNjdkQC66qZoPVPgxI=;
 b=eGqnGK6U0x1m119XpldTV3ieAY9+fgSIY3hFd7J5ZPmhjOFQJgw7vssM
 K2+iSAMSyK07YAXuHttabuWQyalVGlw8SI51oJXzDFWixWS71DMYdFHZi
 CX1xQGgLNReyq0Nqu24CRPJD0mRajSfAdaZ1IYJdIFfRra6vyVZ90xU4N
 H4HVC9/IAROY6jDdn1QK3p7nvlCVNOQ4G14eu6M31h7uwLwwjy0Ya2uQF
 3aly1hvlB5SqLsCDWLxzPkfKIv1i8cYYsQflgBFyxSklrsUCywMjW6jIs
 kauiqhLt+agCCKudjBTdiRFiP3MXBhBgygXH6izij+Aot0yoHzHauXMQ2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286781665"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286781665"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 10:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="755898788"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="755898788"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2022 10:37:32 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 10:39:43 -0700
Message-Id: <20221021173946.366210-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915/pxp: Make intel_pxp_is_active
 implicitly sort PXP-owning-GT
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

Make intel_pxp_is_active a global check and implicitly find
the PXP-owning-GT.

As per prior two patches, callers of this function shall now
pass in i915 since PXP is a global GPU feature. Make
intel_pxp_is_active implicitly find the right gt so it's transparent
for global view callers (like display or gem-exec).

However we also need to expose the per-gt variation of this for internal
pxp files to use (like what intel_pxp_is_active was prior) so also expose
a new intel_gtpxp_is_active function for replacement.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 14 ++++++++++++--
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  2 +-
 5 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 72f47ebda75f..798e77398acc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -271,7 +271,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 		 */
 		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
+		if (!intel_pxp_is_active(i915))
 			ret = intel_pxp_start(&to_gt(i915)->pxp);
 	}
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index f7c909fce97c..15f7983f6da8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -97,11 +97,21 @@ bool intel_pxp_is_enabled(struct drm_i915_private *i915)
 	return intel_gtpxp_is_enabled(&gt->pxp);
 }
 
-bool intel_pxp_is_active(const struct intel_pxp *pxp)
+bool intel_gtpxp_is_active(const struct intel_pxp *pxp)
 {
 	return pxp->arb_is_valid;
 }
 
+bool intel_pxp_is_active(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = _i915_to_pxp_gt(i915);
+
+	if (!gt)
+		return false;
+
+	return intel_gtpxp_is_active(&gt->pxp);
+}
+
 /* KCR register definitions */
 #define KCR_INIT _MMIO(0x320f0)
 /* Setting KCR Init bit is required after system boot */
@@ -300,7 +310,7 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
 			bool assign)
 {
-	if (!intel_pxp_is_active(pxp))
+	if (!intel_gtpxp_is_active(pxp))
 		return -ENODEV;
 
 	if (!i915_gem_object_is_protected(obj))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 61472018bc45..70383394adb4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -16,9 +16,10 @@ struct drm_i915_private;
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
 bool intel_gtpxp_is_supported(struct intel_pxp *pxp);
 bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp);
+bool intel_gtpxp_is_active(const struct intel_pxp *pxp);
 
 bool intel_pxp_is_enabled(struct drm_i915_private *i915);
-bool intel_pxp_is_active(const struct intel_pxp *pxp);
+bool intel_pxp_is_active(struct drm_i915_private *i915);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 13f517f94bae..7f304b421633 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -25,7 +25,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
 		return 0;
 	}
 
-	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp)));
+	drm_printf(&p, "active: %s\n", str_yes_no(intel_gtpxp_is_active(pxp)));
 	drm_printf(&p, "instance counter: %u\n", pxp->key_instance);
 
 	return 0;
@@ -43,7 +43,7 @@ static int pxp_terminate_set(void *data, u64 val)
 	struct intel_pxp *pxp = data;
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	if (!intel_pxp_is_active(pxp))
+	if (!intel_gtpxp_is_active(pxp))
 		return -ENODEV;
 
 	/* simulate a termination interrupt */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 8e8e5645e4fc..cd97f8d8cc10 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -86,7 +86,7 @@ void intel_pxp_irq_disable(struct intel_pxp *pxp)
 	 * called in a path were the driver consider the session as valid and
 	 * doesn't call a termination on restart.
 	 */
-	GEM_WARN_ON(intel_pxp_is_active(pxp));
+	GEM_WARN_ON(intel_gtpxp_is_active(pxp));
 
 	spin_lock_irq(gt->irq_lock);
 
-- 
2.34.1

