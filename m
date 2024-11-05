Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 678BE9BCC8C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 13:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1132010E589;
	Tue,  5 Nov 2024 12:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8477510E589;
 Tue,  5 Nov 2024 12:18:52 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 6/9] drm/xe/sriov: Move VF bootstrap and query_config to
 vf_guc_init
Date: Tue,  5 Nov 2024 13:18:54 +0100
Message-ID: <20241105121857.17389-6-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241105121857.17389-1-maarten.lankhorst@linux.intel.com>
References: <20241105121857.17389-1-maarten.lankhorst@linux.intel.com>
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

We want to split up GUC init to an alloc and noalloc part to keep the
init path the same for VF and !VF as much as possible.

Everything in vf_guc_init should be done as early as possible, otherwise
VRAM probing becomes impossible.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/xe_gt_sriov_vf.c |  1 -
 drivers/gpu/drm/xe/xe_guc.c         | 17 +++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
index d3baba50f0851..521aaa3631f06 100644
--- a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
+++ b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
@@ -885,7 +885,6 @@ u32 xe_gt_sriov_vf_read32(struct xe_gt *gt, struct xe_reg reg)
 	struct vf_runtime_reg *rr;
 
 	xe_gt_assert(gt, IS_SRIOV_VF(gt_to_xe(gt)));
-	xe_gt_assert(gt, gt->sriov.vf.pf_version.major);
 	xe_gt_assert(gt, !reg.vf);
 
 	if (reg.addr == GMD_ID.addr) {
diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
index 7f704346a8f4d..709c219c6a5b1 100644
--- a/drivers/gpu/drm/xe/xe_guc.c
+++ b/drivers/gpu/drm/xe/xe_guc.c
@@ -301,6 +301,7 @@ static int xe_guc_realloc_post_hwconfig(struct xe_guc *guc)
 
 static int vf_guc_init(struct xe_guc *guc)
 {
+	struct xe_gt *gt = guc_to_gt(guc);
 	int err;
 
 	xe_guc_comm_init_early(guc);
@@ -313,6 +314,14 @@ static int vf_guc_init(struct xe_guc *guc)
 	if (err)
 		return err;
 
+	err = xe_gt_sriov_vf_bootstrap(gt);
+	if (err)
+		return err;
+
+	err = xe_gt_sriov_vf_query_config(gt);
+	if (err)
+		return err;
+
 	return 0;
 }
 
@@ -753,14 +762,6 @@ static int vf_guc_min_load_for_hwconfig(struct xe_guc *guc)
 	struct xe_gt *gt = guc_to_gt(guc);
 	int ret;
 
-	ret = xe_gt_sriov_vf_bootstrap(gt);
-	if (ret)
-		return ret;
-
-	ret = xe_gt_sriov_vf_query_config(gt);
-	if (ret)
-		return ret;
-
 	ret = xe_guc_hwconfig_init(guc);
 	if (ret)
 		return ret;
-- 
2.45.2

