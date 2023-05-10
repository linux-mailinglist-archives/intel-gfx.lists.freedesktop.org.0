Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8B86FE36C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 19:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E75C510E4E7;
	Wed, 10 May 2023 17:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2292E10E4DF;
 Wed, 10 May 2023 17:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683740754; x=1715276754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xwT6hzeQxVz8F1AHtoS7dbmJIlVFJVm1N6vk2g3BPFA=;
 b=HLnWVPx9Ph+IZbl0L2KZ9Ulw9745DuE7LNCcKA6DBrmWWG2XoKLjO0n6
 oZbqk6NCo1Lz5zfklDmAdHvRewbXbQhhapBT9xToixdEp+b73Y2vlPVDE
 xWO7j1fAYYmb2V29NpYxoh6An5eCfg0QXhVZAxRDXuOiUS20ePLKuw+qn
 c7L78rnQi86aTNaWggMpMXW6OCyIpwghruLihX+L8UbKmTsIchnjqdeVJ
 SVKfLQKqj0EytgcTjHh7WtfGuQWQxhXua4lxGy4d2UF3Cd0ZZ9lsEp6j6
 lzma5B++bYAGowLDZtgq/fAgb+olyDqGCot13Ejg0Bg4+tjUBP4qzIWmB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="353352057"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="353352057"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 10:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="945791920"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="945791920"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2023 10:45:52 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 10:45:46 -0700
Message-Id: <20230510174550.986965-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
References: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 4/8] drm/i915/pxp: Add GSC-CS backend to
 send GSC fw messages
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add GSC engine based method for sending PXP firmware packets
to the GSC firmware for MTL (and future) products.

Use the newly added helpers to populate the GSC-CS memory
header and send the message packet to the FW by dispatching
the GSC_HECI_CMD_PKT instruction on the GSC engine.

We use non-priveleged batches for submission to GSC engine
which require two buffers for the request:
     - a buffer for the HECI packet that contains PXP FW commands
     - a batch-buffer that contains the engine instruction for
       sending the HECI packet to the GSC firmware.

Thus, add the allocation and freeing of these buffers in gsccs
init and fini.

The GSC-fw may reply to commands with a SUCCESS but with an
additional pending-bit set in the reply packet. This bit
means the GSC-FW is currently busy and the caller needs to
try again with the gsc_message_handle the fw returned. Thus,
add a wrapper to continuously retry send_message while
replaying the gsc_message_handle. Retries need to follow the
arch-spec count and delay until GSC-FW replies with the real
SUCCESS or timeout after that spec'd delay.

The GSC-fw requires a non-zero host_session_handle provided
by the caller to enable gsc_message_handle tracking. Thus,
allocate the host_session_handle at init and destroy it
at fini (the latter requiring an FYI to the gsc-firmware).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |   3 +-
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c    | 240 +++++++++++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h    |   4 +
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |   6 +
 5 files changed, 254 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
index e790608745d4..ef70e304904a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -51,7 +51,8 @@ struct intel_gsc_mtl_header {
 	 * we distinguish the flags using OUTFLAG or INFLAG
 	 */
 	u32 flags;
-#define GSC_OUTFLAG_MSG_PENDING	1
+#define GSC_OUTFLAG_MSG_PENDING	BIT(0)
+#define GSC_INFLAG_MSG_CLEANUP	BIT(1)
 
 	u32 status;
 } __packed;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
index ad67e3f49c20..c65ada99e54f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
@@ -12,6 +12,9 @@
 /* PXP-Cmd-Op definitions */
 #define PXP43_CMDID_START_HUC_AUTH 0x0000003A
 
+/* PXP-Packet sizes for MTL's GSCCS-HECI instruction */
+#define PXP43_MAX_HECI_INOUT_SIZE (SZ_32K)
+
 /* PXP-Input-Packet: HUC-Authentication */
 struct pxp43_start_huc_auth_in {
 	struct pxp_cmd_header header;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index bad55719a7ac..16e3b73d0653 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -6,23 +6,232 @@
 #include "gem/i915_gem_internal.h"
 
 #include "gt/intel_context.h"
+#include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 
 #include "i915_drv.h"
 #include "intel_pxp_cmd_interface_43.h"
 #include "intel_pxp_gsccs.h"
 #include "intel_pxp_types.h"
 
+static int
+gsccs_send_message(struct intel_pxp *pxp,
+		   void *msg_in, size_t msg_in_size,
+		   void *msg_out, size_t msg_out_size_max,
+		   size_t *msg_out_len,
+		   u64 *gsc_msg_handle_retry)
+{
+	struct intel_gt *gt = pxp->ctrl_gt;
+	struct drm_i915_private *i915 = gt->i915;
+	struct gsccs_session_resources *exec_res =  &pxp->gsccs_res;
+	struct intel_gsc_mtl_header *header = exec_res->pkt_vaddr;
+	struct intel_gsc_heci_non_priv_pkt pkt;
+	size_t max_msg_size;
+	u32 reply_size;
+	int ret;
+
+	if (!exec_res->ce)
+		return -ENODEV;
+
+	max_msg_size = PXP43_MAX_HECI_INOUT_SIZE - sizeof(*header);
+
+	if (msg_in_size > max_msg_size || msg_out_size_max > max_msg_size)
+		return -ENOSPC;
+
+	if (!exec_res->pkt_vma || !exec_res->bb_vma)
+		return -ENOENT;
+
+	GEM_BUG_ON(exec_res->pkt_vma->size < (2 * PXP43_MAX_HECI_INOUT_SIZE));
+
+	mutex_lock(&pxp->tee_mutex);
+
+	memset(header, 0, sizeof(*header));
+	intel_gsc_uc_heci_cmd_emit_mtl_header(header, HECI_MEADDRESS_PXP,
+					      msg_in_size + sizeof(*header),
+					      exec_res->host_session_handle);
+
+	/* check if this is a host-session-handle cleanup call (empty packet) */
+	if (!msg_in && !msg_out)
+		header->flags |= GSC_INFLAG_MSG_CLEANUP;
+
+	/* copy caller provided gsc message handle if this is polling for a prior msg completion */
+	header->gsc_message_handle = *gsc_msg_handle_retry;
+
+	/* NOTE: zero size packets are used for session-cleanups */
+	if (msg_in && msg_in_size)
+		memcpy(exec_res->pkt_vaddr + sizeof(*header), msg_in, msg_in_size);
+
+	pkt.addr_in = i915_vma_offset(exec_res->pkt_vma);
+	pkt.size_in = header->message_size;
+	pkt.addr_out = pkt.addr_in + PXP43_MAX_HECI_INOUT_SIZE;
+	pkt.size_out = msg_out_size_max + sizeof(*header);
+	pkt.heci_pkt_vma = exec_res->pkt_vma;
+	pkt.bb_vma = exec_res->bb_vma;
+
+	/*
+	 * Before submitting, let's clear-out the validity marker on the reply offset.
+	 * We use offset PXP43_MAX_HECI_INOUT_SIZE for reply location so point header there.
+	 */
+	header = exec_res->pkt_vaddr + PXP43_MAX_HECI_INOUT_SIZE;
+	header->validity_marker = 0;
+
+	ret = intel_gsc_uc_heci_cmd_submit_nonpriv(&gt->uc.gsc,
+						   exec_res->ce, &pkt, exec_res->bb_vaddr,
+						   GSC_REPLY_LATENCY_MS);
+	if (ret) {
+		drm_err(&i915->drm, "failed to send gsc PXP msg (%d)\n", ret);
+		goto unlock;
+	}
+
+	/* Response validity marker, status and busyness */
+	if (header->validity_marker != GSC_HECI_VALIDITY_MARKER) {
+		drm_err(&i915->drm, "gsc PXP reply with invalid validity marker\n");
+		ret = -EINVAL;
+		goto unlock;
+	}
+	if (header->status != 0) {
+		drm_dbg(&i915->drm, "gsc PXP reply status has error = 0x%08x\n",
+			header->status);
+		ret = -EINVAL;
+		goto unlock;
+	}
+	if (header->flags & GSC_OUTFLAG_MSG_PENDING) {
+		drm_dbg(&i915->drm, "gsc PXP reply is busy\n");
+		/*
+		 * When the GSC firmware replies with pending bit, it means that the requested
+		 * operation has begun but the completion is pending and the caller needs
+		 * to re-request with the gsc_message_handle that was returned by the firmware.
+		 * until the pending bit is turned off.
+		 */
+		*gsc_msg_handle_retry = header->gsc_message_handle;
+		ret = -EAGAIN;
+		goto unlock;
+	}
+
+	reply_size = header->message_size - sizeof(*header);
+	if (reply_size > msg_out_size_max) {
+		drm_warn(&i915->drm, "caller with insufficient PXP reply size %u (%ld)\n",
+			 reply_size, msg_out_size_max);
+		reply_size = msg_out_size_max;
+	}
+
+	if (msg_out)
+		memcpy(msg_out, exec_res->pkt_vaddr + PXP43_MAX_HECI_INOUT_SIZE + sizeof(*header),
+		       reply_size);
+	if (msg_out_len)
+		*msg_out_len = reply_size;
+
+unlock:
+	mutex_unlock(&pxp->tee_mutex);
+	return ret;
+}
+
+static int
+gsccs_send_message_retry_complete(struct intel_pxp *pxp,
+				  void *msg_in, size_t msg_in_size,
+				  void *msg_out, size_t msg_out_size_max,
+				  size_t *msg_out_len)
+{
+	u64 gsc_session_retry = 0;
+	int ret, tries = 0;
+
+	/*
+	 * Keep sending request if GSC firmware was busy. Based on fw specs +
+	 * sw overhead (and testing) we expect a worst case pending-bit delay of
+	 * GSC_PENDING_RETRY_MAXCOUNT x GSC_PENDING_RETRY_PAUSE_MS millisecs.
+	 */
+	do {
+		ret = gsccs_send_message(pxp, msg_in, msg_in_size, msg_out, msg_out_size_max,
+					 msg_out_len, &gsc_session_retry);
+		/* Only try again if gsc says so */
+		if (ret != -EAGAIN)
+			break;
+
+		msleep(GSC_PENDING_RETRY_PAUSE_MS);
+	} while (++tries < GSC_PENDING_RETRY_MAXCOUNT);
+
+	return ret;
+}
+
+static void
+gsccs_cleanup_fw_host_session_handle(struct intel_pxp *pxp)
+{
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
+	int ret;
+
+	ret = gsccs_send_message_retry_complete(pxp, NULL, 0, NULL, 0, NULL);
+	if (ret)
+		drm_dbg(&i915->drm, "Failed to send gsccs msg host-session-cleanup: ret=[%d]\n",
+			ret);
+}
+
 static void
 gsccs_destroy_execution_resource(struct intel_pxp *pxp)
 {
 	struct gsccs_session_resources *exec_res = &pxp->gsccs_res;
 
+	if (exec_res->host_session_handle)
+		gsccs_cleanup_fw_host_session_handle(pxp);
 	if (exec_res->ce)
 		intel_context_put(exec_res->ce);
+	if (exec_res->bb_vma)
+		i915_vma_unpin_and_release(&exec_res->bb_vma, I915_VMA_RELEASE_MAP);
+	if (exec_res->pkt_vma)
+		i915_vma_unpin_and_release(&exec_res->pkt_vma, I915_VMA_RELEASE_MAP);
 
 	memset(exec_res, 0, sizeof(*exec_res));
 }
 
+static int
+gsccs_create_buffer(struct intel_gt *gt,
+		    const char *bufname, size_t size,
+		    struct i915_vma **vma, void **map)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct drm_i915_gem_object *obj;
+	int err = 0;
+
+	obj = i915_gem_object_create_internal(i915, size);
+	if (IS_ERR(obj)) {
+		drm_err(&i915->drm, "Failed to allocate gsccs backend %s.\n", bufname);
+		err = PTR_ERR(obj);
+		goto out_none;
+	}
+
+	*vma = i915_vma_instance(obj, gt->vm, NULL);
+	if (IS_ERR(*vma)) {
+		drm_err(&i915->drm, "Failed to vma-instance gsccs backend %s.\n", bufname);
+		err = PTR_ERR(*vma);
+		goto out_put;
+	}
+
+	/* return a virtual pointer */
+	*map = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
+	if (IS_ERR(*map)) {
+		drm_err(&i915->drm, "Failed to map gsccs backend %s.\n", bufname);
+		err = PTR_ERR(*map);
+		goto out_put;
+	}
+
+	/* all PXP sessions commands are treated as non-privileged */
+	err = i915_vma_pin(*vma, 0, 0, PIN_USER);
+	if (err) {
+		drm_err(&i915->drm, "Failed to vma-pin gsccs backend %s.\n", bufname);
+		goto out_unmap;
+	}
+
+	return 0;
+
+out_unmap:
+	i915_gem_object_unpin_map(obj);
+out_put:
+	i915_gem_object_put(obj);
+out_none:
+	*vma = NULL;
+	*map = NULL;
+
+	return err;
+}
+
 static int
 gsccs_allocate_execution_resource(struct intel_pxp *pxp)
 {
@@ -30,6 +239,7 @@ gsccs_allocate_execution_resource(struct intel_pxp *pxp)
 	struct gsccs_session_resources *exec_res = &pxp->gsccs_res;
 	struct intel_engine_cs *engine = gt->engine[GSC0];
 	struct intel_context *ce;
+	int err = 0;
 
 	/*
 	 * First, ensure the GSC engine is present.
@@ -38,18 +248,46 @@ gsccs_allocate_execution_resource(struct intel_pxp *pxp)
 	if (!engine)
 		return -ENODEV;
 
+	/*
+	 * Now, allocate, pin and map two objects, one for the heci message packet
+	 * and another for the batch buffer we submit into GSC engine (that includes the packet).
+	 * NOTE: GSC-CS backend is currently only supported on MTL, so we allocate shmem.
+	 */
+	err = gsccs_create_buffer(pxp->ctrl_gt, "Heci Packet",
+				  2 * PXP43_MAX_HECI_INOUT_SIZE,
+				  &exec_res->pkt_vma, &exec_res->pkt_vaddr);
+	if (err)
+		return err;
+
+	err = gsccs_create_buffer(pxp->ctrl_gt, "Batch Buffer", PAGE_SIZE,
+				  &exec_res->bb_vma, &exec_res->bb_vaddr);
+	if (err)
+		goto free_pkt;
+
 	/* Finally, create an intel_context to be used during the submission */
 	ce = intel_context_create(engine);
 	if (IS_ERR(ce)) {
 		drm_err(&gt->i915->drm, "Failed creating gsccs backend ctx\n");
-		return PTR_ERR(ce);
+		err = PTR_ERR(ce);
+		goto free_batch;
 	}
 
 	i915_vm_put(ce->vm);
 	ce->vm = i915_vm_get(pxp->ctrl_gt->vm);
 	exec_res->ce = ce;
 
+	/* initialize host-session-handle (for all i915-to-gsc-firmware PXP cmds) */
+	get_random_bytes(&exec_res->host_session_handle, sizeof(exec_res->host_session_handle));
+
 	return 0;
+
+free_batch:
+	i915_vma_unpin_and_release(&exec_res->bb_vma, I915_VMA_RELEASE_MAP);
+free_pkt:
+	i915_vma_unpin_and_release(&exec_res->pkt_vma, I915_VMA_RELEASE_MAP);
+	memset(exec_res, 0, sizeof(*exec_res));
+
+	return err;
 }
 
 void intel_pxp_gsccs_fini(struct intel_pxp *pxp)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
index 354ea9a8f940..bd1c028bc80f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
@@ -10,6 +10,10 @@
 
 struct intel_pxp;
 
+#define GSC_REPLY_LATENCY_MS 200
+#define GSC_PENDING_RETRY_MAXCOUNT 40
+#define GSC_PENDING_RETRY_PAUSE_MS 50
+
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_gsccs_fini(struct intel_pxp *pxp);
 int intel_pxp_gsccs_init(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 87d0d8da98cd..1a8765866b8b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -38,6 +38,12 @@ struct intel_pxp {
 	struct gsccs_session_resources {
 		u64 host_session_handle; /* used by firmware to link commands to sessions */
 		struct intel_context *ce; /* context for gsc command submission */
+
+		struct i915_vma *pkt_vma; /* GSC FW cmd packet vma */
+		void *pkt_vaddr;  /* GSC FW cmd packet virt pointer */
+
+		struct i915_vma *bb_vma; /* HECI_PKT batch buffer vma */
+		void *bb_vaddr; /* HECI_PKT batch buffer virt pointer */
 	} gsccs_res;
 
 	/**
-- 
2.39.0

