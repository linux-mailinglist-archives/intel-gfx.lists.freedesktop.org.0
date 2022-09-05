Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB2B5AD5A6
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527ED10E403;
	Mon,  5 Sep 2022 15:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 668C810E3FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 15:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662390083; x=1693926083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TgwE4z40T06EiD597ErS6zwygdoRfSbpM1/KBqxaMzQ=;
 b=XGmpzwppuFicZfwZTaJtR4YKYuE+IyaVpmhTmqlrL5/B3egN5N2alB/h
 YG+jw9JJ42zcXDJ6GeRl3fDs26hLhsqkfvRrB0m9OVlxiLcxzuOlsXfQX
 KH3NDYyZB0q7n+Cte4X34coM8Mcp7Td9/OXfcUXii4tuqmePbMnAybm/W
 aOqDij1ZVbwod1OSXJYiDFu5fyrZopN1Nqcq0/SHZcGfp2hV4vv53QOpZ
 S5l5LR0Pi/dTzhHcwNmjSALL756EOhFZbyVWBPUvCoCa8WMZvFcl/OdUS
 uHHYV1e7Q/dEDm1JsfPG2wf9nALIJQ/PBzpaEb6PhLw+lKLHKm2hG9tsC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="358120855"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="358120855"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675321000"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 18:00:51 +0300
Message-Id: <2c89e7e0a3528caf7ba9ffa29b2bb9f13f2357d1.1662390010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662390010.git.jani.nikula@intel.com>
References: <cover.1662390010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: un-inline
 i915_gem_drain_workqueue()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_drain_workqueue() is not used on any hot paths. Un-unline it.

Replace the do-while with a for loop while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 22 +---------------------
 drivers/gpu/drm/i915/i915_gem.c | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 54898faa9b72..911164dae182 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -992,27 +992,7 @@ static inline void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
 	}
 }
 
-static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
-{
-	/*
-	 * Similar to objects above (see i915_gem_drain_freed-objects), in
-	 * general we have workers that are armed by RCU and then rearm
-	 * themselves in their callbacks. To be paranoid, we need to
-	 * drain the workqueue a second time after waiting for the RCU
-	 * grace period so that we catch work queued via RCU from the first
-	 * pass. As neither drain_workqueue() nor flush_workqueue() report
-	 * a result, we make an assumption that we only don't require more
-	 * than 3 passes to catch all _recursive_ RCU delayed work.
-	 *
-	 */
-	int pass = 3;
-	do {
-		flush_workqueue(i915->wq);
-		rcu_barrier();
-		i915_gem_drain_freed_objects(i915);
-	} while (--pass);
-	drain_workqueue(i915->wq);
-}
+void i915_gem_drain_workqueue(struct drm_i915_private *i915);
 
 struct i915_vma * __must_check
 i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index c2d6172ba4bb..4c89b33ada95 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1085,6 +1085,28 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	return err;
 }
 
+/*
+ * Similar to objects above (see i915_gem_drain_freed-objects), in general we
+ * have workers that are armed by RCU and then rearm themselves in their
+ * callbacks. To be paranoid, we need to drain the workqueue a second time after
+ * waiting for the RCU grace period so that we catch work queued via RCU from
+ * the first pass. As neither drain_workqueue() nor flush_workqueue() report a
+ * result, we make an assumption that we only don't require more than 3 passes
+ * to catch all _recursive_ RCU delayed work.
+ */
+void i915_gem_drain_workqueue(struct drm_i915_private *i915)
+{
+	int i;
+
+	for (i = 0; i < 3; i++) {
+		flush_workqueue(i915->wq);
+		rcu_barrier();
+		i915_gem_drain_freed_objects(i915);
+	}
+
+	drain_workqueue(i915->wq);
+}
+
 int i915_gem_init(struct drm_i915_private *dev_priv)
 {
 	int ret;
-- 
2.34.1

