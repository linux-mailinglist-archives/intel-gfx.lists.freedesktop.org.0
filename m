Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6200362CF94
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC1D10E50C;
	Thu, 17 Nov 2022 00:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BFEA10E4F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668644890; x=1700180890;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IGxxnbzXiVkz2wbvhQhw69WtTK/OvzTQBpcbQxVP9qc=;
 b=HHnz0YKd2hHFdtFN3zaPpGL93OBkb1ZHgfmpz0o8e3Jw4PxE+nWG9Sjk
 fuIw/IBYLZhuLmRV2Nz3rdQc0LXyAPoEz3asu+8S6T8TqOWYvzRsp/a4A
 O7jDbTPgSMlvNWmWzfrSgsaPK7TIexcuJuyBEDaelGpwoO7pRru6lcQrV
 FobTeOecQ/PTUoe9D9+gd+6pub/HM9LG9n+0PWqrTaVdccT+KsPsE90Zu
 TuchLp67UBJgFAC9ZqlFXCR1RfsUI9n570dCSTAZ5PaNHvuBeRs+NUU8e
 /YryzHy1WNhsdJkY1bjmxOh8oSrp3mo4eqZfyUKiNgDg2E6wdkLB400fR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312722094"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312722094"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:27:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="781985084"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="781985084"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2022 16:27:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 16:30:15 -0800
Message-Id: <20221117003018.1433115-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/6] drm/i915/pxp: Make intel_pxp_is_active
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
index c123f4847b19..165be45a3c13 100644
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
index 88105101af79..76a924587543 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -87,11 +87,21 @@ bool intel_pxp_is_enabled(struct drm_i915_private *i915)
 	return intel_pxp_is_enabled_on_gt(&gt->pxp);
 }
 
-bool intel_pxp_is_active(const struct intel_pxp *pxp)
+bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp)
 {
 	return pxp->arb_is_valid;
 }
 
+bool intel_pxp_is_active(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = i915_to_pxp_gt(i915);
+
+	if (!gt)
+		return false;
+
+	return intel_pxp_is_active_on_gt(&gt->pxp);
+}
+
 /* KCR register definitions */
 #define KCR_INIT _MMIO(0x320f0)
 /* Setting KCR Init bit is required after system boot */
@@ -287,7 +297,7 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
 			bool assign)
 {
-	if (!intel_pxp_is_active(pxp))
+	if (!intel_pxp_is_active_on_gt(pxp))
 		return -ENODEV;
 
 	if (!i915_gem_object_is_protected(obj))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 3f71b1653f74..fe981eebf0ec 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -19,7 +19,8 @@ bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
 
 bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp);
 bool intel_pxp_is_enabled(struct drm_i915_private *i915);
-bool intel_pxp_is_active(const struct intel_pxp *pxp);
+bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp);
+bool intel_pxp_is_active(struct drm_i915_private *i915);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 4d257055434b..52a808fd4704 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -25,7 +25,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
 		return 0;
 	}
 
-	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp)));
+	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active_on_gt(pxp)));
 	drm_printf(&p, "instance counter: %u\n", pxp->key_instance);
 
 	return 0;
@@ -43,7 +43,7 @@ static int pxp_terminate_set(void *data, u64 val)
 	struct intel_pxp *pxp = data;
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	if (!intel_pxp_is_active(pxp))
+	if (!intel_pxp_is_active_on_gt(pxp))
 		return -ENODEV;
 
 	/* simulate a termination interrupt */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index d3c697bf9aab..c25c1979cccc 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -86,7 +86,7 @@ void intel_pxp_irq_disable(struct intel_pxp *pxp)
 	 * called in a path were the driver consider the session as valid and
 	 * doesn't call a termination on restart.
 	 */
-	GEM_WARN_ON(intel_pxp_is_active(pxp));
+	GEM_WARN_ON(intel_pxp_is_active_on_gt(pxp));
 
 	spin_lock_irq(gt->irq_lock);
 
-- 
2.34.1

