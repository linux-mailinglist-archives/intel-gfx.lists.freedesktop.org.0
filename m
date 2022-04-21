Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448BA50A710
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 19:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A48810E754;
	Thu, 21 Apr 2022 17:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB7C410E754
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 17:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650562009; x=1682098009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5qJNBqGWAXf0ST1RTO0dwiuh6SfQ+SXAfkinUjolwK8=;
 b=YM9QUhsU6V/fH9SjUU23Q58f1glsisyGd/5akiUp5xB4efJ+YrAUg+YF
 8Ffi5Nr0LiS1LIhxPem5YW3F4iM6VbWbtIFJBYOBR1CddF4N/ayWpXRle
 s0JfUwYR8X2vjego663H3ry65dxr3rHVTrJdkOihFjyS+rmPU5F2uT0T4
 bk4kHjDri4H/3wRFkeeEKEu99D9p+EYSvrvk2y1uUz/jOihywemcectlQ
 ml/UAT3nuITTC98rhUuhEA35bj5j3eMTlD8pkfsDZTyaKSreUpPIoz1FE
 bvwcEJ744Muy8T+VUMCP0gS8XhEUT6H488SJFD0trCs85LYbx4hSs3LSp w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="263893686"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="263893686"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 10:26:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="577363170"
Received: from jmadhugu-mobl1.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.213.110.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 10:26:46 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Thu, 21 Apr 2022 22:56:35 +0530
Message-Id: <20220421172635.76236-2-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220421172635.76236-1-siva.mullati@intel.com>
References: <20220421172635.76236-1-siva.mullati@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert ct buffer to iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

Convert CT commands and descriptors to use iosys_map rather
than plain pointer and save it in the intel_guc_ct_buffer struct.
This will help with ct_write and ct_read for cmd send and receive
after the initialization by abstracting the IO vs system memory.

Signed-off-by: Siva Mullati <siva.mullati@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 197 +++++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
 2 files changed, 124 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index f01325cd1b62..5bd03d3112f7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -44,6 +44,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
 #define CT_PROBE_ERROR(_ct, _fmt, ...) \
 	i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__)
 
+#define ct_desc_read(desc_map_, field_) \
+	iosys_map_rd_field(desc_map_, 0, struct guc_ct_buffer_desc, field_)
+#define ct_desc_write(desc_map_, field_, val_) \
+	iosys_map_wr_field(desc_map_, 0, struct guc_ct_buffer_desc, field_, val_)
+
 /**
  * DOC: CTB Blob
  *
@@ -76,6 +81,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
 #define CTB_G2H_BUFFER_SIZE	(4 * CTB_H2G_BUFFER_SIZE)
 #define G2H_ROOM_BUFFER_SIZE	(CTB_G2H_BUFFER_SIZE / 4)
 
+#define CTB_SEND_DESC_OFFSET	0u
+#define CTB_RECV_DESC_OFFSET	(CTB_DESC_SIZE)
+#define CTB_SEND_CMDS_OFFSET	(2 * CTB_DESC_SIZE)
+#define CTB_RECV_CMDS_OFFSET	(2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE)
+
 struct ct_request {
 	struct list_head link;
 	u32 fence;
@@ -113,9 +123,9 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 	init_waitqueue_head(&ct->wq);
 }
 
-static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
+static void guc_ct_buffer_desc_init(struct iosys_map *desc)
 {
-	memset(desc, 0, sizeof(*desc));
+	iosys_map_memset(desc, 0, 0, sizeof(struct guc_ct_buffer_desc));
 }
 
 static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
@@ -128,17 +138,18 @@ static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
 	space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size) - ctb->resv_space;
 	atomic_set(&ctb->space, space);
 
-	guc_ct_buffer_desc_init(ctb->desc);
+	guc_ct_buffer_desc_init(&ctb->desc_map);
 }
 
 static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
-			       struct guc_ct_buffer_desc *desc,
-			       u32 *cmds, u32 size_in_bytes, u32 resv_space)
+			       struct iosys_map *desc,
+			       struct iosys_map *cmds,
+			       u32 size_in_bytes, u32 resv_space)
 {
 	GEM_BUG_ON(size_in_bytes % 4);
 
-	ctb->desc = desc;
-	ctb->cmds = cmds;
+	ctb->desc_map = *desc;
+	ctb->cmds_map = *cmds;
 	ctb->size = size_in_bytes / 4;
 	ctb->resv_space = resv_space / 4;
 
@@ -218,12 +229,13 @@ static int ct_register_buffer(struct intel_guc_ct *ct, bool send,
 int intel_guc_ct_init(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
-	struct guc_ct_buffer_desc *desc;
+	struct iosys_map blob_map;
+	struct iosys_map desc_map;
+	struct iosys_map cmds_map;
 	u32 blob_size;
 	u32 cmds_size;
 	u32 resv_space;
 	void *blob;
-	u32 *cmds;
 	int err;
 
 	err = i915_inject_probe_error(guc_to_gt(guc)->i915, -ENXIO);
@@ -242,27 +254,35 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
 
 	CT_DEBUG(ct, "base=%#x size=%u\n", intel_guc_ggtt_offset(guc, ct->vma), blob_size);
 
-	/* store pointers to desc and cmds for send ctb */
-	desc = blob;
-	cmds = blob + 2 * CTB_DESC_SIZE;
+	if (i915_gem_object_is_lmem(ct->vma->obj))
+		iosys_map_set_vaddr_iomem(&blob_map,
+					  (void __iomem *)blob);
+	else
+		iosys_map_set_vaddr(&blob_map, blob);
+
+	/* store sysmap to desc_map and cmds_map for send ctb */
+	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_DESC_OFFSET);
+	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_CMDS_OFFSET);
 	cmds_size = CTB_H2G_BUFFER_SIZE;
 	resv_space = 0;
-	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "send",
-		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
-		 resv_space);
+	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "send",
+		 CTB_SEND_DESC_OFFSET, (u32)CTB_SEND_CMDS_OFFSET,
+		 cmds_size, resv_space);
 
-	guc_ct_buffer_init(&ct->ctbs.send, desc, cmds, cmds_size, resv_space);
+	guc_ct_buffer_init(&ct->ctbs.send,
+			   &desc_map, &cmds_map, cmds_size, resv_space);
 
-	/* store pointers to desc and cmds for recv ctb */
-	desc = blob + CTB_DESC_SIZE;
-	cmds = blob + 2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE;
+	/* store sysmap to desc_map and cmds_map for recv ctb */
+	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_DESC_OFFSET);
+	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_CMDS_OFFSET);
 	cmds_size = CTB_G2H_BUFFER_SIZE;
 	resv_space = G2H_ROOM_BUFFER_SIZE;
-	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "recv",
-		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
-		 resv_space);
+	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "recv",
+		 (u32)CTB_RECV_DESC_OFFSET, (u32)CTB_RECV_CMDS_OFFSET,
+		 cmds_size, resv_space);
 
-	guc_ct_buffer_init(&ct->ctbs.recv, desc, cmds, cmds_size, resv_space);
+	guc_ct_buffer_init(&ct->ctbs.recv,
+			   &desc_map, &cmds_map, cmds_size, resv_space);
 
 	return 0;
 }
@@ -291,8 +311,8 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
 int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
+	struct iosys_map blob_map;
 	u32 base, desc, cmds, size;
-	void *blob;
 	int err;
 
 	GEM_BUG_ON(ct->enabled);
@@ -302,9 +322,14 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(ct->vma->obj));
 	base = intel_guc_ggtt_offset(guc, ct->vma);
 
+	if (i915_gem_object_is_lmem(ct->vma->obj))
+		iosys_map_set_vaddr_iomem(&blob_map, (void __iomem *)
+					  __px_vaddr(ct->vma->obj));
+	else
+		iosys_map_set_vaddr(&blob_map, __px_vaddr(ct->vma->obj));
+
 	/* blob should start with send descriptor */
-	blob = __px_vaddr(ct->vma->obj);
-	GEM_BUG_ON(blob != ct->ctbs.send.desc);
+	GEM_BUG_ON(!iosys_map_is_equal(&blob_map, &ct->ctbs.send.desc_map));
 
 	/* (re)initialize descriptors */
 	guc_ct_buffer_reset(&ct->ctbs.send);
@@ -314,15 +339,15 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	 * Register both CT buffers starting with RECV buffer.
 	 * Descriptors are in first half of the blob.
 	 */
-	desc = base + ptrdiff(ct->ctbs.recv.desc, blob);
-	cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
+	desc = base + CTB_RECV_DESC_OFFSET;
+	cmds = base + CTB_RECV_CMDS_OFFSET;
 	size = ct->ctbs.recv.size * 4;
 	err = ct_register_buffer(ct, false, desc, cmds, size);
 	if (unlikely(err))
 		goto err_out;
 
-	desc = base + ptrdiff(ct->ctbs.send.desc, blob);
-	cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
+	desc = base + CTB_SEND_DESC_OFFSET;
+	cmds = base + CTB_SEND_CMDS_OFFSET;
 	size = ct->ctbs.send.size * 4;
 	err = ct_register_buffer(ct, true, desc, cmds, size);
 	if (unlikely(err))
@@ -371,31 +396,32 @@ static int ct_write(struct intel_guc_ct *ct,
 		    u32 fence, u32 flags)
 {
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
-	struct guc_ct_buffer_desc *desc = ctb->desc;
 	u32 tail = ctb->tail;
 	u32 size = ctb->size;
 	u32 header;
 	u32 hxg;
 	u32 type;
-	u32 *cmds = ctb->cmds;
+	u32 status = ct_desc_read(&ctb->desc_map, status);
 	unsigned int i;
 
-	if (unlikely(desc->status))
+	if (unlikely(status))
 		goto corrupted;
 
 	GEM_BUG_ON(tail > size);
 
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
-	if (unlikely(tail != READ_ONCE(desc->tail))) {
+	if (unlikely(tail != ct_desc_read(&ctb->desc_map, tail))) {
 		CT_ERROR(ct, "Tail was modified %u != %u\n",
-			 desc->tail, tail);
-		desc->status |= GUC_CTB_STATUS_MISMATCH;
+			 ct_desc_read(&ctb->desc_map, tail), tail);
+		status |= GUC_CTB_STATUS_MISMATCH;
+		ct_desc_write(&ctb->desc_map, status, status);
 		goto corrupted;
 	}
-	if (unlikely(READ_ONCE(desc->head) >= size)) {
+	if (unlikely(ct_desc_read(&ctb->desc_map, head) >= size)) {
 		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
-			 desc->head, size);
-		desc->status |= GUC_CTB_STATUS_OVERFLOW;
+			 ct_desc_read(&ctb->desc_map, head), size);
+		status |= GUC_CTB_STATUS_OVERFLOW;
+		ct_desc_write(&ctb->desc_map, status, status);
 		goto corrupted;
 	}
 #endif
@@ -418,14 +444,15 @@ static int ct_write(struct intel_guc_ct *ct,
 	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
 		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
 
-	cmds[tail] = header;
+	iosys_map_wr(&ctb->cmds_map, sizeof(u32) * tail, u32, header);
 	tail = (tail + 1) % size;
 
-	cmds[tail] = hxg;
+	iosys_map_wr(&ctb->cmds_map, sizeof(u32) * tail, u32, hxg);
 	tail = (tail + 1) % size;
 
 	for (i = 1; i < len; i++) {
-		cmds[tail] = action[i];
+		iosys_map_wr(&ctb->cmds_map,
+			     sizeof(u32) * tail, u32, action[i]);
 		tail = (tail + 1) % size;
 	}
 	GEM_BUG_ON(tail > size);
@@ -442,13 +469,14 @@ static int ct_write(struct intel_guc_ct *ct,
 	atomic_sub(len + GUC_CTB_HDR_LEN, &ctb->space);
 
 	/* now update descriptor */
-	WRITE_ONCE(desc->tail, tail);
+	ct_desc_write(&ctb->desc_map, tail, tail);
 
 	return 0;
 
 corrupted:
 	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
-		 desc->head, desc->tail, desc->status);
+		 ct_desc_read(&ctb->desc_map, head), ct_desc_read(&ctb->desc_map, tail),
+		 ct_desc_read(&ctb->desc_map, status));
 	ctb->broken = true;
 	return -EPIPE;
 }
@@ -499,20 +527,22 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
 	bool ret = ktime_ms_delta(ktime_get(), ct->stall_time) > timeout;
 
 	if (unlikely(ret)) {
-		struct guc_ct_buffer_desc *send = ct->ctbs.send.desc;
-		struct guc_ct_buffer_desc *recv = ct->ctbs.send.desc;
-
 		CT_ERROR(ct, "Communication stalled for %lld ms, desc status=%#x,%#x\n",
 			 ktime_ms_delta(ktime_get(), ct->stall_time),
-			 send->status, recv->status);
+			 ct_desc_read(&ct->ctbs.send.desc_map, status),
+			 ct_desc_read(&ct->ctbs.recv.desc_map, status));
 		CT_ERROR(ct, "H2G Space: %u (Bytes)\n",
 			 atomic_read(&ct->ctbs.send.space) * 4);
-		CT_ERROR(ct, "Head: %u (Dwords)\n", ct->ctbs.send.desc->head);
-		CT_ERROR(ct, "Tail: %u (Dwords)\n", ct->ctbs.send.desc->tail);
+		CT_ERROR(ct, "Head: %u (Dwords)\n",
+			 ct_desc_read(&ct->ctbs.send.desc_map, head));
+		CT_ERROR(ct, "Tail: %u (Dwords)\n",
+			 ct_desc_read(&ct->ctbs.send.desc_map, tail));
 		CT_ERROR(ct, "G2H Space: %u (Bytes)\n",
 			 atomic_read(&ct->ctbs.recv.space) * 4);
-		CT_ERROR(ct, "Head: %u\n (Dwords)", ct->ctbs.recv.desc->head);
-		CT_ERROR(ct, "Tail: %u\n (Dwords)", ct->ctbs.recv.desc->tail);
+		CT_ERROR(ct, "Head: %u\n (Dwords)",
+			 ct_desc_read(&ct->ctbs.recv.desc_map, head));
+		CT_ERROR(ct, "Tail: %u\n (Dwords)",
+			 ct_desc_read(&ct->ctbs.recv.desc_map, tail));
 
 		ct->ctbs.send.broken = true;
 	}
@@ -549,18 +579,19 @@ static inline void g2h_release_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
 static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
 {
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
-	struct guc_ct_buffer_desc *desc = ctb->desc;
 	u32 head;
 	u32 space;
+	u32 status = ct_desc_read(&ctb->desc_map, status);
 
 	if (atomic_read(&ctb->space) >= len_dw)
 		return true;
 
-	head = READ_ONCE(desc->head);
+	head = ct_desc_read(&ctb->desc_map, head);
 	if (unlikely(head > ctb->size)) {
 		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
 			 head, ctb->size);
-		desc->status |= GUC_CTB_STATUS_OVERFLOW;
+		status |= GUC_CTB_STATUS_OVERFLOW;
+		ct_desc_write(&ctb->desc_map, status, status);
 		ctb->broken = true;
 		return false;
 	}
@@ -803,11 +834,10 @@ static void ct_free_msg(struct ct_incoming_msg *msg)
 static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 {
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs.recv;
-	struct guc_ct_buffer_desc *desc = ctb->desc;
 	u32 head = ctb->head;
-	u32 tail = READ_ONCE(desc->tail);
+	u32 tail = ct_desc_read(&ctb->desc_map, tail);
 	u32 size = ctb->size;
-	u32 *cmds = ctb->cmds;
+	u32 status = ct_desc_read(&ctb->desc_map, status);
 	s32 available;
 	unsigned int len;
 	unsigned int i;
@@ -816,23 +846,25 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	if (unlikely(ctb->broken))
 		return -EPIPE;
 
-	if (unlikely(desc->status))
+	if (unlikely(status))
 		goto corrupted;
 
 	GEM_BUG_ON(head > size);
 
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
-	if (unlikely(head != READ_ONCE(desc->head))) {
+	if (unlikely(head != ct_desc_read(&ctb->desc_map, head))) {
 		CT_ERROR(ct, "Head was modified %u != %u\n",
-			 desc->head, head);
-		desc->status |= GUC_CTB_STATUS_MISMATCH;
+			 ct_desc_read(&ctb->desc_map, head), head);
+		status |= GUC_CTB_STATUS_MISMATCH;
+		ct_desc_write(&ctb->desc_map, status, status);
 		goto corrupted;
 	}
 #endif
 	if (unlikely(tail >= size)) {
 		CT_ERROR(ct, "Invalid tail offset %u >= %u)\n",
 			 tail, size);
-		desc->status |= GUC_CTB_STATUS_OVERFLOW;
+		status |= GUC_CTB_STATUS_OVERFLOW;
+		ct_desc_write(&ctb->desc_map, status, status);
 		goto corrupted;
 	}
 
@@ -849,7 +881,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
 	GEM_BUG_ON(available < 0);
 
-	header = cmds[head];
+	header = iosys_map_rd(&ctb->cmds_map, sizeof(u32) * head, u32);
 	head = (head + 1) % size;
 
 	/* message len with header */
@@ -857,11 +889,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	if (unlikely(len > (u32)available)) {
 		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
 			 4, &header,
+			 4 * (head + available - 1 > size ? size - head :
+			      available - 1), ((__px_vaddr(ct->vma->obj) +
+			      CTB_RECV_CMDS_OFFSET) + (4 * head)),
 			 4 * (head + available - 1 > size ?
-			      size - head : available - 1), &cmds[head],
-			 4 * (head + available - 1 > size ?
-			      available - 1 - size + head : 0), &cmds[0]);
-		desc->status |= GUC_CTB_STATUS_UNDERFLOW;
+			      available - 1 - size + head : 0),
+			      (__px_vaddr(ct->vma->obj) + CTB_RECV_CMDS_OFFSET));
+		status = ct_desc_read(&ctb->desc_map, status) |
+			GUC_CTB_STATUS_UNDERFLOW;
+		ct_desc_write(&ctb->desc_map, status, status);
 		goto corrupted;
 	}
 
@@ -869,17 +905,20 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	if (!*msg) {
 		CT_ERROR(ct, "No memory for message %*ph %*ph %*ph\n",
 			 4, &header,
+			 4 * (head + available - 1 > size ? size - head :
+			      available - 1), ((__px_vaddr(ct->vma->obj) +
+			      CTB_RECV_CMDS_OFFSET) + (4 * head)),
 			 4 * (head + available - 1 > size ?
-			      size - head : available - 1), &cmds[head],
-			 4 * (head + available - 1 > size ?
-			      available - 1 - size + head : 0), &cmds[0]);
+			      available - 1 - size + head : 0),
+			      (__px_vaddr(ct->vma->obj) + CTB_RECV_CMDS_OFFSET));
 		return available;
 	}
 
 	(*msg)->msg[0] = header;
 
 	for (i = 1; i < len; i++) {
-		(*msg)->msg[i] = cmds[head];
+		(*msg)->msg[i] = iosys_map_rd(&ctb->cmds_map,
+					      sizeof(u32) * head, u32);
 		head = (head + 1) % size;
 	}
 	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
@@ -888,13 +927,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	ctb->head = head;
 
 	/* now update descriptor */
-	WRITE_ONCE(desc->head, head);
+	ct_desc_write(&ctb->desc_map, head, head);
 
 	return available - len;
 
 corrupted:
 	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
-		 desc->head, desc->tail, desc->status);
+		 ct_desc_read(&ctb->desc_map, head),
+		 ct_desc_read(&ctb->desc_map, tail),
+		 ct_desc_read(&ctb->desc_map, status));
 	ctb->broken = true;
 	return -EPIPE;
 }
@@ -1211,13 +1252,13 @@ void intel_guc_ct_print_info(struct intel_guc_ct *ct,
 	drm_printf(p, "H2G Space: %u\n",
 		   atomic_read(&ct->ctbs.send.space) * 4);
 	drm_printf(p, "Head: %u\n",
-		   ct->ctbs.send.desc->head);
+		   ct_desc_read(&ct->ctbs.send.desc_map, head));
 	drm_printf(p, "Tail: %u\n",
-		   ct->ctbs.send.desc->tail);
+		   ct_desc_read(&ct->ctbs.send.desc_map, tail));
 	drm_printf(p, "G2H Space: %u\n",
 		   atomic_read(&ct->ctbs.recv.space) * 4);
 	drm_printf(p, "Head: %u\n",
-		   ct->ctbs.recv.desc->head);
+		   ct_desc_read(&ct->ctbs.recv.desc_map, head));
 	drm_printf(p, "Tail: %u\n",
-		   ct->ctbs.recv.desc->tail);
+		   ct_desc_read(&ct->ctbs.recv.desc_map, tail));
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index f709a19c7e21..867fe13fb47d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -7,6 +7,7 @@
 #define _INTEL_GUC_CT_H_
 
 #include <linux/interrupt.h>
+#include <linux/iosys-map.h>
 #include <linux/spinlock.h>
 #include <linux/workqueue.h>
 #include <linux/ktime.h>
@@ -32,8 +33,8 @@ struct drm_printer;
  * holds the commands.
  *
  * @lock: protects access to the commands buffer and buffer descriptor
- * @desc: pointer to the buffer descriptor
- * @cmds: pointer to the commands buffer
+ * @desc: iosys map to the buffer descriptor
+ * @cmds: iosys map to the commands buffer
  * @size: size of the commands buffer in dwords
  * @resv_space: reserved space in buffer in dwords
  * @head: local shadow copy of head in dwords
@@ -43,8 +44,8 @@ struct drm_printer;
  */
 struct intel_guc_ct_buffer {
 	spinlock_t lock;
-	struct guc_ct_buffer_desc *desc;
-	u32 *cmds;
+	struct iosys_map desc_map;
+	struct iosys_map cmds_map;
 	u32 size;
 	u32 resv_space;
 	u32 tail;
-- 
2.33.0

