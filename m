Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAAD9BF083
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 15:38:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674F510E710;
	Wed,  6 Nov 2024 14:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB9910E710;
 Wed,  6 Nov 2024 14:38:27 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maarten@mblankhorst.nl, Lankhorst@mblankhorst.nl, dev@lankhorst.se
Subject: [PATCH 07/10] drm/xe: Simplify GuC early initialisation
Date: Wed,  6 Nov 2024 15:38:34 +0100
Message-ID: <20241106143837.195642-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
References: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add a 2-stage GuC init. An early one for everything that is needed
for VF, and a full one that loads GuC and is allowed to do allocations.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-7-maarten.lankhorst@linux.intel.com
Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/tests/xe_guc_relay_test.c |  2 +-
 drivers/gpu/drm/xe/xe_device.c               | 16 ------
 drivers/gpu/drm/xe/xe_gt.c                   |  9 +++-
 drivers/gpu/drm/xe/xe_guc.c                  | 51 ++++++++++++--------
 drivers/gpu/drm/xe/xe_guc.h                  |  1 +
 drivers/gpu/drm/xe/xe_guc_ct.c               | 28 +++++++----
 drivers/gpu/drm/xe/xe_guc_ct.h               |  1 +
 drivers/gpu/drm/xe/xe_guc_relay.c            |  6 +--
 drivers/gpu/drm/xe/xe_guc_relay.h            |  2 +-
 drivers/gpu/drm/xe/xe_huc.h                  |  1 +
 drivers/gpu/drm/xe/xe_uc.c                   | 21 ++++++++
 drivers/gpu/drm/xe/xe_uc.h                   |  1 +
 12 files changed, 88 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/xe/tests/xe_guc_relay_test.c b/drivers/gpu/drm/xe/tests/xe_guc_relay_test.c
index 13701451b9235..b951d55ef1b32 100644
--- a/drivers/gpu/drm/xe/tests/xe_guc_relay_test.c
+++ b/drivers/gpu/drm/xe/tests/xe_guc_relay_test.c
@@ -42,7 +42,7 @@ static int relay_test_init(struct kunit *test)
 	kunit_activate_static_stub(test, relay_get_totalvfs,
 				   replacement_relay_get_totalvfs);
 
-	KUNIT_ASSERT_EQ(test, xe_guc_relay_init(relay), 0);
+	KUNIT_ASSERT_EQ(test, xe_guc_relay_init_noalloc(relay), 0);
 	KUNIT_EXPECT_TRUE(test, relay_is_ready(relay));
 	relay->last_rid = TEST_RID - 1;
 
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 450c57dfd297b..adfa6f921ddfc 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -655,25 +655,9 @@ int xe_device_probe(struct xe_device *xe)
 		err = xe_gt_init_early(gt);
 		if (err)
 			return err;
-
-		/*
-		 * Only after this point can GT-specific MMIO operations
-		 * (including things like communication with the GuC)
-		 * be performed.
-		 */
-		xe_gt_mmio_init(gt);
 	}
 
 	for_each_tile(tile, xe, id) {
-		if (IS_SRIOV_VF(xe)) {
-			xe_guc_comm_init_early(&tile->primary_gt->uc.guc);
-			err = xe_gt_sriov_vf_bootstrap(tile->primary_gt);
-			if (err)
-				return err;
-			err = xe_gt_sriov_vf_query_config(tile->primary_gt);
-			if (err)
-				return err;
-		}
 		err = xe_ggtt_init_early(tile->mem.ggtt);
 		if (err)
 			return err;
diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index df2fe4005d85a..9cb0738b62497 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -386,7 +386,14 @@ int xe_gt_init_early(struct xe_gt *gt)
 	xe_force_wake_init_gt(gt, gt_to_fw(gt));
 	spin_lock_init(&gt->global_invl_lock);
 
-	return 0;
+	/*
+	 * Only after this point can GT-specific MMIO operations
+	 * (including things like communication with the GuC)
+	 * be performed.
+	 */
+	xe_gt_mmio_init(gt);
+
+	return xe_uc_init_noalloc(&gt->uc);
 }
 
 static void dump_pat_on_error(struct xe_gt *gt)
diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
index 731f718761bb9..eac5ac737bc95 100644
--- a/drivers/gpu/drm/xe/xe_guc.c
+++ b/drivers/gpu/drm/xe/xe_guc.c
@@ -298,21 +298,11 @@ static int xe_guc_realloc_post_hwconfig(struct xe_guc *guc)
 	return 0;
 }
 
-static int vf_guc_init(struct xe_guc *guc)
+static int vf_guc_init_noalloc(struct xe_guc *guc)
 {
 	struct xe_gt *gt = guc_to_gt(guc);
 	int err;
 
-	xe_guc_comm_init_early(guc);
-
-	err = xe_guc_ct_init(&guc->ct);
-	if (err)
-		return err;
-
-	err = xe_guc_relay_init(&guc->relay);
-	if (err)
-		return err;
-
 	err = xe_gt_sriov_vf_bootstrap(gt);
 	if (err)
 		return err;
@@ -324,6 +314,35 @@ static int vf_guc_init(struct xe_guc *guc)
 	return 0;
 }
 
+int xe_guc_init_noalloc(struct xe_guc *guc)
+{
+	struct xe_device *xe = guc_to_xe(guc);
+	struct xe_gt *gt = guc_to_gt(guc);
+	int ret;
+
+	xe_guc_comm_init_early(guc);
+
+	ret = xe_guc_ct_init_noalloc(&guc->ct);
+	if (ret)
+		goto out;
+
+	ret = xe_guc_relay_init_noalloc(&guc->relay);
+	if (ret)
+		goto out;
+
+	if (IS_SRIOV_VF(xe)) {
+		ret = vf_guc_init_noalloc(guc);
+		if (ret)
+			goto out;
+	}
+
+	return 0;
+
+out:
+	xe_gt_err(gt, "GuC init failed with %pe\n", ERR_PTR(ret));
+	return ret;
+}
+
 int xe_guc_init(struct xe_guc *guc)
 {
 	struct xe_device *xe = guc_to_xe(guc);
@@ -333,13 +352,13 @@ int xe_guc_init(struct xe_guc *guc)
 	guc->fw.type = XE_UC_FW_TYPE_GUC;
 	ret = xe_uc_fw_init(&guc->fw);
 	if (ret)
-		goto out;
+		return ret;
 
 	if (!xe_uc_fw_is_enabled(&guc->fw))
 		return 0;
 
 	if (IS_SRIOV_VF(xe)) {
-		ret = vf_guc_init(guc);
+		ret = xe_guc_ct_init(&guc->ct);
 		if (ret)
 			goto out;
 		return 0;
@@ -361,10 +380,6 @@ int xe_guc_init(struct xe_guc *guc)
 	if (ret)
 		goto out;
 
-	ret = xe_guc_relay_init(&guc->relay);
-	if (ret)
-		goto out;
-
 	xe_uc_fw_change_status(&guc->fw, XE_UC_FIRMWARE_LOADABLE);
 
 	ret = devm_add_action_or_reset(xe->drm.dev, guc_fini_hw, guc);
@@ -373,8 +388,6 @@ int xe_guc_init(struct xe_guc *guc)
 
 	guc_init_params(guc);
 
-	xe_guc_comm_init_early(guc);
-
 	return 0;
 
 out:
diff --git a/drivers/gpu/drm/xe/xe_guc.h b/drivers/gpu/drm/xe/xe_guc.h
index 58338be445585..965bf72912009 100644
--- a/drivers/gpu/drm/xe/xe_guc.h
+++ b/drivers/gpu/drm/xe/xe_guc.h
@@ -26,6 +26,7 @@
 struct drm_printer;
 
 void xe_guc_comm_init_early(struct xe_guc *guc);
+int xe_guc_init_noalloc(struct xe_guc *guc);
 int xe_guc_init(struct xe_guc *guc);
 int xe_guc_init_post_hwconfig(struct xe_guc *guc);
 int xe_guc_post_load_init(struct xe_guc *guc);
diff --git a/drivers/gpu/drm/xe/xe_guc_ct.c b/drivers/gpu/drm/xe/xe_guc_ct.c
index c7673f56d4133..275113bdfbe46 100644
--- a/drivers/gpu/drm/xe/xe_guc_ct.c
+++ b/drivers/gpu/drm/xe/xe_guc_ct.c
@@ -203,12 +203,10 @@ static void primelockdep(struct xe_guc_ct *ct)
 	fs_reclaim_release(GFP_KERNEL);
 }
 
-int xe_guc_ct_init(struct xe_guc_ct *ct)
+int xe_guc_ct_init_noalloc(struct xe_guc_ct *ct)
 {
 	struct xe_device *xe = ct_to_xe(ct);
 	struct xe_gt *gt = ct_to_gt(ct);
-	struct xe_tile *tile = gt_to_tile(gt);
-	struct xe_bo *bo;
 	int err;
 
 	xe_gt_assert(gt, !(guc_ct_size() % PAGE_SIZE));
@@ -234,6 +232,23 @@ int xe_guc_ct_init(struct xe_guc_ct *ct)
 
 	primelockdep(ct);
 
+	err = drmm_add_action_or_reset(&xe->drm, guc_ct_fini, ct);
+	if (err)
+		return err;
+
+	xe_gt_assert(gt, ct->state == XE_GUC_CT_STATE_NOT_INITIALIZED);
+	ct->state = XE_GUC_CT_STATE_DISABLED;
+	return 0;
+}
+ALLOW_ERROR_INJECTION(xe_guc_ct_init_noalloc, ERRNO); /* See xe_pci_probe() */
+
+int xe_guc_ct_init(struct xe_guc_ct *ct)
+{
+	struct xe_device *xe = ct_to_xe(ct);
+	struct xe_gt *gt = ct_to_gt(ct);
+	struct xe_tile *tile = gt_to_tile(gt);
+	struct xe_bo *bo;
+
 	bo = xe_managed_bo_create_pin_map(xe, tile, guc_ct_size(),
 					  XE_BO_FLAG_SYSTEM |
 					  XE_BO_FLAG_GGTT |
@@ -242,13 +257,6 @@ int xe_guc_ct_init(struct xe_guc_ct *ct)
 		return PTR_ERR(bo);
 
 	ct->bo = bo;
-
-	err = drmm_add_action_or_reset(&xe->drm, guc_ct_fini, ct);
-	if (err)
-		return err;
-
-	xe_gt_assert(gt, ct->state == XE_GUC_CT_STATE_NOT_INITIALIZED);
-	ct->state = XE_GUC_CT_STATE_DISABLED;
 	return 0;
 }
 ALLOW_ERROR_INJECTION(xe_guc_ct_init, ERRNO); /* See xe_pci_probe() */
diff --git a/drivers/gpu/drm/xe/xe_guc_ct.h b/drivers/gpu/drm/xe/xe_guc_ct.h
index 338f0b75d29f9..b48a5d056e923 100644
--- a/drivers/gpu/drm/xe/xe_guc_ct.h
+++ b/drivers/gpu/drm/xe/xe_guc_ct.h
@@ -11,6 +11,7 @@
 struct drm_printer;
 struct xe_device;
 
+int xe_guc_ct_init_noalloc(struct xe_guc_ct *ct);
 int xe_guc_ct_init(struct xe_guc_ct *ct);
 int xe_guc_ct_enable(struct xe_guc_ct *ct);
 void xe_guc_ct_disable(struct xe_guc_ct *ct);
diff --git a/drivers/gpu/drm/xe/xe_guc_relay.c b/drivers/gpu/drm/xe/xe_guc_relay.c
index 8f62de026724c..b778d0e0253de 100644
--- a/drivers/gpu/drm/xe/xe_guc_relay.c
+++ b/drivers/gpu/drm/xe/xe_guc_relay.c
@@ -322,7 +322,7 @@ static void __fini_relay(struct drm_device *drm, void *arg)
 }
 
 /**
- * xe_guc_relay_init - Initialize a &xe_guc_relay
+ * xe_guc_relay_init_noalloc - Initialize a &xe_guc_relay
  * @relay: the &xe_guc_relay to initialize
  *
  * Initialize remaining members of &xe_guc_relay that may depend
@@ -330,7 +330,7 @@ static void __fini_relay(struct drm_device *drm, void *arg)
  *
  * Return: 0 on success or a negative error code on failure.
  */
-int xe_guc_relay_init(struct xe_guc_relay *relay)
+int xe_guc_relay_init_noalloc(struct xe_guc_relay *relay)
 {
 	const int XE_RELAY_MEMPOOL_MIN_NUM = 1;
 	struct xe_device *xe = relay_to_xe(relay);
@@ -356,7 +356,7 @@ int xe_guc_relay_init(struct xe_guc_relay *relay)
 
 	return drmm_add_action_or_reset(&xe->drm, __fini_relay, relay);
 }
-ALLOW_ERROR_INJECTION(xe_guc_relay_init, ERRNO); /* See xe_pci_probe() */
+ALLOW_ERROR_INJECTION(xe_guc_relay_init_noalloc, ERRNO); /* See xe_pci_probe() */
 
 static u32 to_relay_error(int err)
 {
diff --git a/drivers/gpu/drm/xe/xe_guc_relay.h b/drivers/gpu/drm/xe/xe_guc_relay.h
index 385429aa188ab..e0afff4542cfc 100644
--- a/drivers/gpu/drm/xe/xe_guc_relay.h
+++ b/drivers/gpu/drm/xe/xe_guc_relay.h
@@ -11,7 +11,7 @@
 
 struct xe_guc_relay;
 
-int xe_guc_relay_init(struct xe_guc_relay *relay);
+int xe_guc_relay_init_noalloc(struct xe_guc_relay *relay);
 
 int xe_guc_relay_send_to_pf(struct xe_guc_relay *relay,
 			    const u32 *msg, u32 len, u32 *buf, u32 buf_size);
diff --git a/drivers/gpu/drm/xe/xe_huc.h b/drivers/gpu/drm/xe/xe_huc.h
index fa1c45e704432..bc6f93028c2b6 100644
--- a/drivers/gpu/drm/xe/xe_huc.h
+++ b/drivers/gpu/drm/xe/xe_huc.h
@@ -17,6 +17,7 @@ enum xe_huc_auth_types {
 	XE_HUC_AUTH_TYPES_COUNT
 };
 
+int xe_huc_init_noalloc(struct xe_huc *huc);
 int xe_huc_init(struct xe_huc *huc);
 int xe_huc_init_post_hwconfig(struct xe_huc *huc);
 int xe_huc_upload(struct xe_huc *huc);
diff --git a/drivers/gpu/drm/xe/xe_uc.c b/drivers/gpu/drm/xe/xe_uc.c
index 0d073a9987c2e..45d0c2f26754c 100644
--- a/drivers/gpu/drm/xe/xe_uc.c
+++ b/drivers/gpu/drm/xe/xe_uc.c
@@ -32,6 +32,27 @@ uc_to_xe(struct xe_uc *uc)
 }
 
 /* Should be called once at driver load only */
+int xe_uc_init_noalloc(struct xe_uc *uc)
+{
+	int ret;
+
+	/*
+	 * We call the GuC/HuC/GSC init functions even if GuC submission is off
+	 * to correctly move our tracking of the FW state to "disabled".
+	 */
+	ret = xe_guc_init_noalloc(&uc->guc);
+	if (ret)
+		goto err;
+
+	/* HuC and GSC have no early dependencies and can be completely initialised during full xe_uc_init(). */
+
+	return 0;
+
+err:
+	xe_gt_err(uc_to_gt(uc), "Failed to early initialize uC (%pe)\n", ERR_PTR(ret));
+	return ret;
+}
+
 int xe_uc_init(struct xe_uc *uc)
 {
 	int ret;
diff --git a/drivers/gpu/drm/xe/xe_uc.h b/drivers/gpu/drm/xe/xe_uc.h
index 506517c113339..650e95585b4ba 100644
--- a/drivers/gpu/drm/xe/xe_uc.h
+++ b/drivers/gpu/drm/xe/xe_uc.h
@@ -8,6 +8,7 @@
 
 struct xe_uc;
 
+int xe_uc_init_noalloc(struct xe_uc *uc);
 int xe_uc_init(struct xe_uc *uc);
 int xe_uc_init_hwconfig(struct xe_uc *uc);
 int xe_uc_init_post_hwconfig(struct xe_uc *uc);
-- 
2.45.2

