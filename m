Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CB65F5A87
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00C210E756;
	Wed,  5 Oct 2022 19:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C10010E750
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664997403; x=1696533403;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2EEpq7Z43h2kUej5zHfIg6p+mLBsWZ9wAHyq7cWVZ4g=;
 b=FoUeRa5AMwUXiU8GJ+srBv4ZNoRQU3AhWX+n/gUVWXDN9cZDHhEPeXQf
 XxEI+5dcKMhFyYpHmgTYptNCnANbsuhnsvXEo24RvxHbZizNx742mUJOz
 AN/yYrU5f3qwEizA1wDsQYqOs6Ueb6/tfP+2wcBSfrLCxL/3zz0LIMx2/
 A3UEVGLVU9lwHN/QGj7wNkT1QMOlC2jgZ9E9yS/3rJdSuZKWBcu5EJC1b
 9g2AUZNO/yfUZW/EqIwhFzHgQZoTozIfTnY614uFc/66iPBfnoedyu9e3
 30JqEYnW6J4MHjAoiA5HG2TbEK3/Cxw9SWh1rUdf7U6DR2kLqUxJ3CyB5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="283618490"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="283618490"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="602132217"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="602132217"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2022 12:16:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 12:18:35 -0700
Message-Id: <20221005191838.466351-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
References: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/pxp: Make intel_pxp_is_active
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

Make intel_pxp_is_active implicitly find the PXP-owning-GT.
As per prior two patches, callers of this function shall now
pass in i915 since PXP is a global GPU feature. Make
intel_pxp_is_active implicitly find the right gt to check if
PXP is active so it's transparent to the callers.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 11 ++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  2 +-
 5 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index df03c1c7feb9..8443b485c62f 100644
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
index 93e9bc383461..57b4e9f9e4d1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -72,9 +72,14 @@ bool intel_pxp_is_enabled(struct drm_i915_private *i915)
 	return _pxp_is_enabled(&gt->pxp);
 }
 
-bool intel_pxp_is_active(const struct intel_pxp *pxp)
+bool intel_pxp_is_active(struct drm_i915_private *i915)
 {
-	return pxp->arb_is_valid;
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+
+	if (!gt)
+		return false;
+
+	return gt->pxp.arb_is_valid;
 }
 
 /* KCR register definitions */
@@ -292,7 +297,7 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
 			bool assign)
 {
-	if (!intel_pxp_is_active(pxp))
+	if (!intel_pxp_is_active(pxp_to_gt(pxp)->i915))
 		return -ENODEV;
 
 	if (!i915_gem_object_is_protected(obj))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index e82154a147b9..0219ff285788 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -16,7 +16,7 @@ struct drm_i915_private;
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
 struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
 bool intel_pxp_is_enabled(struct drm_i915_private *i915);
-bool intel_pxp_is_active(const struct intel_pxp *pxp);
+bool intel_pxp_is_active(struct drm_i915_private *i915);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 907d3aba7a9c..210dd2f28c42 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -25,7 +25,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
 		return 0;
 	}
 
-	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp)));
+	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp_to_gt(pxp)->i915)));
 	drm_printf(&p, "instance counter: %u\n", pxp->key_instance);
 
 	return 0;
@@ -43,7 +43,7 @@ static int pxp_terminate_set(void *data, u64 val)
 	struct intel_pxp *pxp = data;
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	if (!intel_pxp_is_active(pxp))
+	if (!intel_pxp_is_active(gt->i915))
 		return -ENODEV;
 
 	/* simulate a termination interrupt */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 6f515c163d2f..a8baffb51389 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -89,7 +89,7 @@ void intel_pxp_irq_disable(struct intel_pxp *pxp)
 	 * called in a path were the driver consider the session as valid and
 	 * doesn't call a termination on restart.
 	 */
-	GEM_WARN_ON(intel_pxp_is_active(pxp));
+	GEM_WARN_ON(intel_pxp_is_active(gt->i915));
 
 	spin_lock_irq(gt->irq_lock);
 
-- 
2.34.1

