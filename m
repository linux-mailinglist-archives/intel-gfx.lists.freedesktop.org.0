Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 424D14693BC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 11:27:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B276E7ACD6;
	Mon,  6 Dec 2021 10:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03436E9F2;
 Mon,  6 Dec 2021 00:49:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10189"; a="300608528"
X-IronPort-AV: E=Sophos;i="5.87,290,1631602800"; d="scan'208";a="300608528"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2021 16:49:31 -0800
X-IronPort-AV: E=Sophos;i="5.87,290,1631602800"; d="scan'208";a="461625359"
Received: from etrosmax-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.32.248])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2021 16:49:27 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Mon,  6 Dec 2021 02:48:52 +0200
Message-Id: <20211206004901.69729-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211206004901.69729-1-andi.shyti@linux.intel.com>
References: <20211206004901.69729-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/11] drm/i915: Introduce to_gt() helper
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michał Winiarski <michal.winiarski@intel.com>

To allow further refactoring and abstract away the fact that GT is
stored inside i915 private.
No functional changes.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 7 +------
 drivers/gpu/drm/i915/i915_drv.h                | 5 +++++
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index acc49c56a9f3..9db3dcbd917f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -9,11 +9,6 @@
 #include "intel_engine_pm.h"
 #include "intel_gt_buffer_pool.h"
 
-static struct intel_gt *to_gt(struct intel_gt_buffer_pool *pool)
-{
-	return container_of(pool, struct intel_gt, buffer_pool);
-}
-
 static struct list_head *
 bucket_for_size(struct intel_gt_buffer_pool *pool, size_t sz)
 {
@@ -141,7 +136,7 @@ static struct intel_gt_buffer_pool_node *
 node_create(struct intel_gt_buffer_pool *pool, size_t sz,
 	    enum i915_map_type type)
 {
-	struct intel_gt *gt = to_gt(pool);
+	struct intel_gt *gt = container_of(pool, struct intel_gt, buffer_pool);
 	struct intel_gt_buffer_pool_node *node;
 	struct drm_i915_gem_object *obj;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 85bb8d3107f0..d43b08b80b0d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1080,6 +1080,11 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 	return pci_get_drvdata(pdev);
 }
 
+static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
+{
+	return &i915->gt;
+}
+
 /* Simple iterator over all initialised engines */
 #define for_each_engine(engine__, dev_priv__, id__) \
 	for ((id__) = 0; \
-- 
2.34.1

