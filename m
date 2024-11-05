Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE179BCC90
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 13:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42DAF10E0A1;
	Tue,  5 Nov 2024 12:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA2310E57B;
 Tue,  5 Nov 2024 12:18:57 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 8/9] drm/xe: Make it possible to read instance0 MCR registers
 after xe_gt_mcr_init_early
Date: Tue,  5 Nov 2024 13:18:56 +0100
Message-ID: <20241105121857.17389-8-maarten.lankhorst@linux.intel.com>
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

After mcr_init_early, we need to be able to do VRAM and CCS probing
without hwconfig probe. Fortunately the relevant registers are all
instance 0, which fortunately means no dependencies on further initialisation
is required.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/xe_gt_mcr.c   | 47 ++++++++++++++++++--------------
 drivers/gpu/drm/xe/xe_gt_types.h |  2 ++
 2 files changed, 29 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_gt_mcr.c b/drivers/gpu/drm/xe/xe_gt_mcr.c
index 5013d674e17da..4b23c96290046 100644
--- a/drivers/gpu/drm/xe/xe_gt_mcr.c
+++ b/drivers/gpu/drm/xe/xe_gt_mcr.c
@@ -413,12 +413,6 @@ static void init_steering_sqidi_psmi(struct xe_gt *gt)
 	gt->steering[SQIDI_PSMI].instance_target = select & 0x1;
 }
 
-static void init_steering_inst0(struct xe_gt *gt)
-{
-	gt->steering[INSTANCE0].group_target = 0;	/* unused */
-	gt->steering[INSTANCE0].instance_target = 0;	/* unused */
-}
-
 static const struct {
 	const char *name;
 	void (*init)(struct xe_gt *gt);
@@ -429,7 +423,7 @@ static const struct {
 	[DSS] =		{ "DSS",	init_steering_dss },
 	[OADDRM] =	{ "OADDRM / GPMXMT", init_steering_oaddrm },
 	[SQIDI_PSMI] =  { "SQIDI_PSMI", init_steering_sqidi_psmi },
-	[INSTANCE0] =	{ "INSTANCE 0",	init_steering_inst0 },
+	[INSTANCE0] =	{ "INSTANCE 0",	NULL },
 	[IMPLICIT_STEERING] = { "IMPLICIT", NULL },
 };
 
@@ -439,25 +433,17 @@ static const struct {
  *
  * Perform early software only initialization of the MCR lock to allow
  * the synchronization on accessing the STEER_SEMAPHORE register and
- * use the xe_gt_mcr_multicast_write() function.
+ * use the xe_gt_mcr_multicast_write() function, plus the minimum
+ * safe MCR registers required for VRAM/CCS probing.
  */
 void xe_gt_mcr_init_early(struct xe_gt *gt)
 {
+	struct xe_device *xe = gt_to_xe(gt);
+
 	BUILD_BUG_ON(IMPLICIT_STEERING + 1 != NUM_STEERING_TYPES);
 	BUILD_BUG_ON(ARRAY_SIZE(xe_steering_types) != NUM_STEERING_TYPES);
 
 	spin_lock_init(&gt->mcr_lock);
-}
-
-/**
- * xe_gt_mcr_init - Normal initialization of the MCR support
- * @gt: GT structure
- *
- * Perform normal initialization of the MCR for all usages.
- */
-void xe_gt_mcr_init(struct xe_gt *gt)
-{
-	struct xe_device *xe = gt_to_xe(gt);
 
 	if (IS_SRIOV_VF(xe))
 		return;
@@ -498,10 +484,27 @@ void xe_gt_mcr_init(struct xe_gt *gt)
 		}
 	}
 
+	/* Mark instance 0 as initialised, we need this early for VRAM and CCS probe. */
+	gt->steering[INSTANCE0].initialised = true;
+}
+
+/**
+ * xe_gt_mcr_init - Normal initialization of the MCR support
+ * @gt: GT structure
+ *
+ * Perform normal initialization of the MCR for all usages.
+ */
+void xe_gt_mcr_init(struct xe_gt *gt)
+{
+	if (IS_SRIOV_VF(gt_to_xe(gt)))
+		return;
+
 	/* Select non-terminated steering target for each type */
-	for (int i = 0; i < NUM_STEERING_TYPES; i++)
+	for (int i = 0; i < NUM_STEERING_TYPES; i++) {
+		gt->steering[i].initialised = true;
 		if (gt->steering[i].ranges && xe_steering_types[i].init)
 			xe_steering_types[i].init(gt);
+	}
 }
 
 /**
@@ -563,6 +566,10 @@ static bool xe_gt_mcr_get_nonterminated_steering(struct xe_gt *gt,
 
 		for (int i = 0; gt->steering[type].ranges[i].end > 0; i++) {
 			if (xe_mmio_in_range(&gt->mmio, &gt->steering[type].ranges[i], reg)) {
+				drm_WARN(&gt_to_xe(gt)->drm, !gt->steering[type].initialised,
+					 "Uninitialised usage of MCR register %s/%#x\n",
+					 xe_steering_types[type].name, reg.addr);
+
 				*group = gt->steering[type].group_target;
 				*instance = gt->steering[type].instance_target;
 				return true;
diff --git a/drivers/gpu/drm/xe/xe_gt_types.h b/drivers/gpu/drm/xe/xe_gt_types.h
index a287b98ee70b4..4254665366ffe 100644
--- a/drivers/gpu/drm/xe/xe_gt_types.h
+++ b/drivers/gpu/drm/xe/xe_gt_types.h
@@ -375,6 +375,8 @@ struct xe_gt {
 		u16 group_target;
 		/** @steering.instance_target: instance to steer accesses to */
 		u16 instance_target;
+		/** @steering.initialised: Whether this steering range is initialised */
+		bool initialised;
 	} steering[NUM_STEERING_TYPES];
 
 	/**
-- 
2.45.2

