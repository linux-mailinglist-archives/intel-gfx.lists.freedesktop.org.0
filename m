Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2D0375A9B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38DB66EDA9;
	Thu,  6 May 2021 18:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0686ECE7;
 Thu,  6 May 2021 18:57:11 +0000 (UTC)
IronPort-SDR: QEQvXoHQhxcbYkUo83GsjlfKGy2CwBIeFPwH0FQ3cLh+QoklaW8FvJe7Uodp9sIFVKmUJdnOQe
 brU03SIrjjJA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196530988"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="196530988"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:10 -0700
IronPort-SDR: G3VaTdOlOpxa5yrQwPHB19Z7oHZ8sGUUA88x+aw9jUNlBUnOSuE+9cQyaY/K71VEv/YEAY5PrQ
 vBjb+gTF17yg==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583388"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:08 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:13:25 -0700
Message-Id: <20210506191451.77768-12-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 11/97] drm/i915/guc: Only rely on own CTB
 size
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

In upcoming GuC firmware, CTB size will be removed from the CTB
descriptor so we must keep it locally for any calculations.

While around, improve some debug messages and helpers.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 55 +++++++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  2 +
 2 files changed, 43 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 4cc8c0b71699..dbece569fbe4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -90,6 +90,24 @@ static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
 	desc->owner = CTB_OWNER_HOST;
 }
 
+static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb, u32 cmds_addr)
+{
+	guc_ct_buffer_desc_init(ctb->desc, cmds_addr, ctb->size);
+}
+
+static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
+			       struct guc_ct_buffer_desc *desc,
+			       u32 *cmds, u32 size)
+{
+	GEM_BUG_ON(size % 4);
+
+	ctb->desc = desc;
+	ctb->cmds = cmds;
+	ctb->size = size;
+
+	guc_ct_buffer_reset(ctb, 0);
+}
+
 static int guc_action_register_ct_buffer(struct intel_guc *guc,
 					 u32 desc_addr,
 					 u32 type)
@@ -148,7 +166,10 @@ static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
 int intel_guc_ct_init(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
+	struct guc_ct_buffer_desc *desc;
+	u32 blob_size;
 	void *blob;
+	u32 *cmds;
 	int err;
 	int i;
 
@@ -176,19 +197,24 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
 	 * other code will need updating as well.
 	 */
 
-	err = intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ct->vma, &blob);
+	blob_size = PAGE_SIZE;
+	err = intel_guc_allocate_and_map_vma(guc, blob_size, &ct->vma, &blob);
 	if (unlikely(err)) {
-		CT_ERROR(ct, "Failed to allocate CT channel (err=%d)\n", err);
+		CT_PROBE_ERROR(ct, "Failed to allocate %u for CTB data (%pe)\n",
+			       blob_size, ERR_PTR(err));
 		return err;
 	}
 
-	CT_DEBUG(ct, "vma base=%#x\n", intel_guc_ggtt_offset(guc, ct->vma));
+	CT_DEBUG(ct, "base=%#x size=%u\n", intel_guc_ggtt_offset(guc, ct->vma), blob_size);
 
 	/* store pointers to desc and cmds */
 	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
 		GEM_BUG_ON((i !=  CTB_SEND) && (i != CTB_RECV));
-		ct->ctbs[i].desc = blob + PAGE_SIZE/4 * i;
-		ct->ctbs[i].cmds = blob + PAGE_SIZE/4 * i + PAGE_SIZE/2;
+
+		desc = blob + PAGE_SIZE / 4 * i;
+		cmds = blob + PAGE_SIZE / 4 * i + PAGE_SIZE / 2;
+
+		guc_ct_buffer_init(&ct->ctbs[i], desc, cmds, PAGE_SIZE / 4);
 	}
 
 	return 0;
@@ -217,7 +243,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
 int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
-	u32 base, cmds, size;
+	u32 base, cmds;
 	int err;
 	int i;
 
@@ -232,10 +258,11 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	 */
 	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
 		GEM_BUG_ON((i != CTB_SEND) && (i != CTB_RECV));
+
 		cmds = base + PAGE_SIZE / 4 * i + PAGE_SIZE / 2;
-		size = PAGE_SIZE / 4;
-		CT_DEBUG(ct, "%d: addr=%#x size=%u\n", i, cmds, size);
-		guc_ct_buffer_desc_init(ct->ctbs[i].desc, cmds, size);
+		CT_DEBUG(ct, "%d: cmds addr=%#x\n", i, cmds);
+
+		guc_ct_buffer_reset(&ct->ctbs[i], cmds);
 	}
 
 	/*
@@ -259,7 +286,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 err_deregister:
 	ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
 err_out:
-	CT_PROBE_ERROR(ct, "Failed to open channel (err=%d)\n", err);
+	CT_PROBE_ERROR(ct, "Failed to enable CTB (%pe)\n", ERR_PTR(err));
 	return err;
 }
 
@@ -314,7 +341,7 @@ static int ct_write(struct intel_guc_ct *ct,
 	struct guc_ct_buffer_desc *desc = ctb->desc;
 	u32 head = desc->head;
 	u32 tail = desc->tail;
-	u32 size = desc->size;
+	u32 size = ctb->size;
 	u32 used;
 	u32 header;
 	u32 *cmds = ctb->cmds;
@@ -323,7 +350,7 @@ static int ct_write(struct intel_guc_ct *ct,
 	if (unlikely(desc->is_in_error))
 		return -EPIPE;
 
-	if (unlikely(!IS_ALIGNED(head | tail | size, 4) ||
+	if (unlikely(!IS_ALIGNED(head | tail, 4) ||
 		     (tail | head) >= size))
 		goto corrupted;
 
@@ -530,7 +557,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
 	struct guc_ct_buffer_desc *desc = ctb->desc;
 	u32 head = desc->head;
 	u32 tail = desc->tail;
-	u32 size = desc->size;
+	u32 size = ctb->size;
 	u32 *cmds = ctb->cmds;
 	s32 available;
 	unsigned int len;
@@ -539,7 +566,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
 	if (unlikely(desc->is_in_error))
 		return -EPIPE;
 
-	if (unlikely(!IS_ALIGNED(head | tail | size, 4) ||
+	if (unlikely(!IS_ALIGNED(head | tail, 4) ||
 		     (tail | head) >= size))
 		goto corrupted;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 494a51a5200f..4009e2dd0de4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -29,10 +29,12 @@ struct intel_guc;
  *
  * @desc: pointer to the buffer descriptor
  * @cmds: pointer to the commands buffer
+ * @size: size of the commands buffer
  */
 struct intel_guc_ct_buffer {
 	struct guc_ct_buffer_desc *desc;
 	u32 *cmds;
+	u32 size;
 };
 
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
