Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E1F3DBF9D
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 22:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D92B6F488;
	Fri, 30 Jul 2021 20:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 595BE6F483;
 Fri, 30 Jul 2021 20:21:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="276939710"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="276939710"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 13:21:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="499741590"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga001.jf.intel.com with ESMTP; 30 Jul 2021 13:21:48 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
Date: Fri, 30 Jul 2021 13:21:09 -0700
Message-Id: <20210730202119.23810-5-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
References: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/14] drm/i915/guc/slpc: Allocate,
 initialize and release SLPC
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

Allocate data structures for SLPC and functions for
initializing on host side.

v2: Address review comments (Michal W)
v3: Remove unnecessary header includes (Michal W)
v4: Rebase
v5: Move allocation of shared data into slpc_init() (Michal W)

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 11 +++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 31 ++++++++++++++++++-
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  2 ++
 3 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 5b0f8c541b69..13d162353b1a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -336,6 +336,12 @@ int intel_guc_init(struct intel_guc *guc)
 			goto err_ct;
 	}
 
+	if (intel_guc_slpc_is_used(guc)) {
+		ret = intel_guc_slpc_init(&guc->slpc);
+		if (ret)
+			goto err_submission;
+	}
+
 	/* now that everything is perma-pinned, initialize the parameters */
 	guc_init_params(guc);
 
@@ -346,6 +352,8 @@ int intel_guc_init(struct intel_guc *guc)
 
 	return 0;
 
+err_submission:
+	intel_guc_submission_fini(guc);
 err_ct:
 	intel_guc_ct_fini(&guc->ct);
 err_ads:
@@ -368,6 +376,9 @@ void intel_guc_fini(struct intel_guc *guc)
 
 	i915_ggtt_disable_guc(gt->ggtt);
 
+	if (intel_guc_slpc_is_used(guc))
+		intel_guc_slpc_fini(&guc->slpc);
+
 	if (intel_guc_submission_is_used(guc))
 		intel_guc_submission_fini(guc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 40950f1bf05c..377e09187e9f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -12,6 +12,16 @@ static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
 	return container_of(slpc, struct intel_guc, slpc);
 }
 
+static inline struct intel_gt *slpc_to_gt(struct intel_guc_slpc *slpc)
+{
+	return guc_to_gt(slpc_to_guc(slpc));
+}
+
+static inline struct drm_i915_private *slpc_to_i915(struct intel_guc_slpc *slpc)
+{
+	return slpc_to_gt(slpc)->i915;
+}
+
 static bool __detect_slpc_supported(struct intel_guc *guc)
 {
 	/* GuC SLPC is unavailable for pre-Gen12 */
@@ -37,9 +47,28 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
 
 int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 {
-	return 0;
+	struct intel_guc *guc = slpc_to_guc(slpc);
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
+	int err;
+
+	GEM_BUG_ON(slpc->vma);
+
+	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
+	if (unlikely(err)) {
+		drm_err(&i915->drm,
+			"Failed to allocate SLPC struct (err=%pe)\n",
+			ERR_PTR(err));
+		return err;
+	}
+
+	return err;
 }
 
 void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
 {
+	if (!slpc->vma)
+		return;
+
+	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
index 769c162305a0..8bd753167234 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
@@ -9,6 +9,8 @@
 #include <linux/types.h>
 
 struct intel_guc_slpc {
+	struct i915_vma *vma;
+	struct slpc_shared_data *vaddr;
 	bool supported;
 	bool selected;
 };
-- 
2.25.0

