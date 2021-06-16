Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFD83A8CED
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 01:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD92892BD;
	Tue, 15 Jun 2021 23:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC52892BD;
 Tue, 15 Jun 2021 23:55:13 +0000 (UTC)
IronPort-SDR: wTISWnJT3VAQ2KQ0po46wupsslctp9IHrNoTsTXsNATJRFtk3VYE/TaugtO1ST0vaQgDSXB867
 a6dxJ0pV/2SA==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="267236626"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="267236626"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 16:55:12 -0700
IronPort-SDR: bGEz7W+LqeVYao9VE+hm54Ih7Sp+lLZqnaUSrP/TONHkYoaW3EBxGtDt34pw9Iuk3UQ4d3sGip
 Q+TzyNsQkUbA==
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="452138647"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 16:55:11 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 15 Jun 2021 17:13:01 -0700
Message-Id: <20210616001302.84233-3-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210616001302.84233-1-matthew.brost@intel.com>
References: <20210616001302.84233-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/guc: Update firmware to v62.0.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Most of the changes to the 62.0.0 firmware revolved around CTB
communication channel. Conform to the new (stable) CTB protocol.

v2:
 (Michal)
  Add values back to kernel DOC for actions
 (Docs)
  Add 'CT buffer' back in to fix warning

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  | 107 ++++++
 .../gt/uc/abi/guc_communication_ctb_abi.h     | 126 +++++--
 .../gt/uc/abi/guc_communication_mmio_abi.h    |  65 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 107 ++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  45 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 356 +++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  75 +---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  29 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  26 +-
 11 files changed, 527 insertions(+), 421 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 90efef8a73e4..2d6198e63ebe 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -6,6 +6,113 @@
 #ifndef _ABI_GUC_ACTIONS_ABI_H
 #define _ABI_GUC_ACTIONS_ABI_H
 
+/**
+ * DOC: HOST2GUC_REGISTER_CTB
+ *
+ * This message is used as part of the `CTB based communication`_ setup.
+ *
+ * This message must be sent as `MMIO HXG Message`_.
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 |    31 | ORIGIN = GUC_HXG_ORIGIN_HOST_                                |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 30:28 | TYPE = GUC_HXG_TYPE_REQUEST_                                 |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 27:16 | DATA0 = MBZ                                                  |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  15:0 | ACTION = _`GUC_ACTION_HOST2GUC_REGISTER_CTB` = 0x4505        |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 1 | 31:12 | RESERVED = MBZ                                               |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  11:8 | **TYPE** - type for the `CT Buffer`_                         |
+ *  |   |       |                                                              |
+ *  |   |       |   - _`GUC_CTB_TYPE_HOST2GUC` = 0                             |
+ *  |   |       |   - _`GUC_CTB_TYPE_GUC2HOST` = 1                             |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |   7:0 | **SIZE** - size of the `CT Buffer`_ in 4K units minus 1      |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 2 |  31:0 | **DESC_ADDR** - GGTT address of the `CTB Descriptor`_        |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 3 |  31:0 | **BUFF_ADDF** - GGTT address of the `CT Buffer`_             |
+ *  +---+-------+--------------------------------------------------------------+
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 |    31 | ORIGIN = GUC_HXG_ORIGIN_GUC_                                 |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 30:28 | TYPE = GUC_HXG_TYPE_RESPONSE_SUCCESS_                        |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  27:0 | DATA0 = MBZ                                                  |
+ *  +---+-------+--------------------------------------------------------------+
+ */
+#define GUC_ACTION_HOST2GUC_REGISTER_CTB		0x4505
+
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 3u)
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_MBZ		(0xfffff << 12)
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_TYPE	(0xf << 8)
+#define   GUC_CTB_TYPE_HOST2GUC				0u
+#define   GUC_CTB_TYPE_GUC2HOST				1u
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_SIZE	(0xff << 0)
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR	GUC_HXG_REQUEST_MSG_n_DATAn
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_3_BUFF_ADDR	GUC_HXG_REQUEST_MSG_n_DATAn
+
+#define HOST2GUC_REGISTER_CTB_RESPONSE_MSG_LEN		GUC_HXG_RESPONSE_MSG_MIN_LEN
+#define HOST2GUC_REGISTER_CTB_RESPONSE_MSG_0_MBZ	GUC_HXG_RESPONSE_MSG_0_DATA0
+
+/**
+ * DOC: HOST2GUC_DEREGISTER_CTB
+ *
+ * This message is used as part of the `CTB based communication`_ teardown.
+ *
+ * This message must be sent as `MMIO HXG Message`_.
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 |    31 | ORIGIN = GUC_HXG_ORIGIN_HOST_                                |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 30:28 | TYPE = GUC_HXG_TYPE_REQUEST_                                 |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 27:16 | DATA0 = MBZ                                                  |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  15:0 | ACTION = _`GUC_ACTION_HOST2GUC_DEREGISTER_CTB` = 0x4506      |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 1 | 31:12 | RESERVED = MBZ                                               |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  11:8 | **TYPE** - type of the `CT Buffer`_                          |
+ *  |   |       |                                                              |
+ *  |   |       | see `GUC_ACTION_HOST2GUC_REGISTER_CTB`_                      |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |   7:0 | RESERVED = MBZ                                               |
+ *  +---+-------+--------------------------------------------------------------+
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 |    31 | ORIGIN = GUC_HXG_ORIGIN_GUC_                                 |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 30:28 | TYPE = GUC_HXG_TYPE_RESPONSE_SUCCESS_                        |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  27:0 | DATA0 = MBZ                                                  |
+ *  +---+-------+--------------------------------------------------------------+
+ */
+#define GUC_ACTION_HOST2GUC_DEREGISTER_CTB		0x4506
+
+#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 1u)
+#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_0_MBZ	GUC_HXG_REQUEST_MSG_0_DATA0
+#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_MBZ	(0xfffff << 12)
+#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_TYPE	(0xf << 8)
+#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_MBZ2	(0xff << 0)
+
+#define HOST2GUC_DEREGISTER_CTB_RESPONSE_MSG_LEN	GUC_HXG_RESPONSE_MSG_MIN_LEN
+#define HOST2GUC_DEREGISTER_CTB_RESPONSE_MSG_0_MBZ	GUC_HXG_RESPONSE_MSG_0_DATA0
+
+/* legacy definitions */
+
 enum intel_guc_action {
 	INTEL_GUC_ACTION_DEFAULT = 0x0,
 	INTEL_GUC_ACTION_REQUEST_PREEMPTION = 0x2,
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
index d38935f47ecf..29fc93a8b5be 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
@@ -7,6 +7,110 @@
 #define _ABI_GUC_COMMUNICATION_CTB_ABI_H
 
 #include <linux/types.h>
+#include <linux/build_bug.h>
+
+#include "guc_messages_abi.h"
+
+/**
+ * DOC: CT Buffer
+ *
+ * Circular buffer used to send / receive CTBs (H2G or G2H)
+ */
+
+/**
+ * DOC: CTB Descriptor
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 |  31:0 | **HEAD** - offset (in dwords) to the last dword that was     |
+ *  |   |       | read from the `CT Buffer`_.                                  |
+ *  |   |       | It can only be updated by the receiver.                      |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 1 |  31:0 | **TAIL** - offset (in dwords) to the last dword that was     |
+ *  |   |       | written to the `CT Buffer`_.                                 |
+ *  |   |       | It can only be updated by the sender.                        |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 2 |  31:0 | **STATUS** - status of the CTB                               |
+ *  |   |       |                                                              |
+ *  |   |       |   - _`GUC_CTB_STATUS_NO_ERROR` = 0 (normal operation)        |
+ *  |   |       |   - _`GUC_CTB_STATUS_OVERFLOW` = 1 (head/tail too large)     |
+ *  |   |       |   - _`GUC_CTB_STATUS_UNDERFLOW` = 2 (truncated message)      |
+ *  |   |       |   - _`GUC_CTB_STATUS_MISMATCH` = 4 (head/tail modified)      |
+ *  +---+-------+--------------------------------------------------------------+
+ *  |...|       | RESERVED = MBZ                                               |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 15|  31:0 | RESERVED = MBZ                                               |
+ *  +---+-------+--------------------------------------------------------------+
+ */
+
+struct guc_ct_buffer_desc {
+	u32 head;
+	u32 tail;
+	u32 status;
+#define GUC_CTB_STATUS_NO_ERROR				0
+#define GUC_CTB_STATUS_OVERFLOW				(1 << 0)
+#define GUC_CTB_STATUS_UNDERFLOW			(1 << 1)
+#define GUC_CTB_STATUS_MISMATCH				(1 << 2)
+	u32 reserved[13];
+} __packed;
+static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
+
+/**
+ * DOC: CTB Message
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 | 31:16 | **FENCE** - message identifier                               |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 15:12 | **FORMAT** - format of the CTB message                       |
+ *  |   |       |  - _`GUC_CTB_FORMAT_HXG` = 0 - see `CTB HXG Message`_        |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  11:8 | **RESERVED**                                                 |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |   7:0 | **NUM_DWORDS** - length of the CTB message (w/o header)      |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 1 |  31:0 | optional (depends on FORMAT)                                 |
+ *  +---+-------+                                                              |
+ *  |...|       |                                                              |
+ *  +---+-------+                                                              |
+ *  | n |  31:0 |                                                              |
+ *  +---+-------+--------------------------------------------------------------+
+ */
+
+#define GUC_CTB_MSG_MIN_LEN			1u
+#define GUC_CTB_MSG_MAX_LEN			256u
+#define GUC_CTB_MSG_0_FENCE			(0xffff << 16)
+#define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
+#define   GUC_CTB_FORMAT_HXG			0u
+#define GUC_CTB_MSG_0_RESERVED			(0xf << 8)
+#define GUC_CTB_MSG_0_NUM_DWORDS		(0xff << 0)
+
+/**
+ * DOC: CTB HXG Message
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 | 31:16 | FENCE                                                        |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   | 15:12 | FORMAT = GUC_CTB_FORMAT_HXG_                                 |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  11:8 | RESERVED = MBZ                                               |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |   7:0 | NUM_DWORDS = length (in dwords) of the embedded HXG message  |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 1 |  31:0 |  +--------------------------------------------------------+  |
+ *  +---+-------+  |                                                        |  |
+ *  |...|       |  |  Embedded `HXG Message`_                               |  |
+ *  +---+-------+  |                                                        |  |
+ *  | n |  31:0 |  +--------------------------------------------------------+  |
+ *  +---+-------+--------------------------------------------------------------+
+ */
+
+#define GUC_CTB_HXG_MSG_MIN_LEN		(GUC_CTB_MSG_MIN_LEN + GUC_HXG_MSG_MIN_LEN)
+#define GUC_CTB_HXG_MSG_MAX_LEN		GUC_CTB_MSG_MAX_LEN
 
 /**
  * DOC: CTB based communication
@@ -60,28 +164,6 @@
  * - **flags**, holds various bits to control message handling
  */
 
-/*
- * Describes single command transport buffer.
- * Used by both guc-master and clients.
- */
-struct guc_ct_buffer_desc {
-	u32 addr;		/* gfx address */
-	u64 host_private;	/* host private data */
-	u32 size;		/* size in bytes */
-	u32 head;		/* offset updated by GuC*/
-	u32 tail;		/* offset updated by owner */
-	u32 is_in_error;	/* error indicator */
-	u32 reserved1;
-	u32 reserved2;
-	u32 owner;		/* id of the channel owner */
-	u32 owner_sub_id;	/* owner-defined field for extra tracking */
-	u32 reserved[5];
-} __packed;
-
-/* Type of command transport buffer */
-#define INTEL_GUC_CT_BUFFER_TYPE_SEND	0x0u
-#define INTEL_GUC_CT_BUFFER_TYPE_RECV	0x1u
-
 /*
  * Definition of the command transport message header (DW0)
  *
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
index be066a62e9e0..bbf1ddb77434 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
@@ -7,46 +7,43 @@
 #define _ABI_GUC_COMMUNICATION_MMIO_ABI_H
 
 /**
- * DOC: MMIO based communication
+ * DOC: GuC MMIO based communication
  *
- * The MMIO based communication between Host and GuC uses software scratch
- * registers, where first register holds data treated as message header,
- * and other registers are used to hold message payload.
+ * The MMIO based communication between Host and GuC relies on special
+ * hardware registers which format could be defined by the software
+ * (so called scratch registers).
  *
- * For Gen9+, GuC uses software scratch registers 0xC180-0xC1B8,
- * but no H2G command takes more than 8 parameters and the GuC FW
- * itself uses an 8-element array to store the H2G message.
+ * Each MMIO based message, both Host to GuC (H2G) and GuC to Host (G2H)
+ * messages, which maximum length depends on number of available scratch
+ * registers, is directly written into those scratch registers.
  *
- *      +-----------+---------+---------+---------+
- *      |  MMIO[0]  | MMIO[1] |   ...   | MMIO[n] |
- *      +-----------+---------+---------+---------+
- *      | header    |      optional payload       |
- *      +======+====+=========+=========+=========+
- *      | 31:28|type|         |         |         |
- *      +------+----+         |         |         |
- *      | 27:16|data|         |         |         |
- *      +------+----+         |         |         |
- *      |  15:0|code|         |         |         |
- *      +------+----+---------+---------+---------+
+ * For Gen9+, there are 16 software scratch registers 0xC180-0xC1B8,
+ * but no H2G command takes more than 4 parameters and the GuC firmware
+ * itself uses an 4-element array to store the H2G message.
  *
- * The message header consists of:
+ * For Gen11+, there are additional 4 registers 0x190240-0x19024C, which
+ * are, regardless on lower count, preferred over legacy ones.
  *
- * - **type**, indicates message type
- * - **code**, indicates message code, is specific for **type**
- * - **data**, indicates message data, optional, depends on **code**
- *
- * The following message **types** are supported:
- *
- * - **REQUEST**, indicates Host-to-GuC request, requested GuC action code
- *   must be priovided in **code** field. Optional action specific parameters
- *   can be provided in remaining payload registers or **data** field.
- *
- * - **RESPONSE**, indicates GuC-to-Host response from earlier GuC request,
- *   action response status will be provided in **code** field. Optional
- *   response data can be returned in remaining payload registers or **data**
- *   field.
+ * The MMIO based communication is mainly used during driver initialization
+ * phase to setup the `CTB based communication`_ that will be used afterwards.
  */
 
-#define GUC_MAX_MMIO_MSG_LEN		8
+#define GUC_MAX_MMIO_MSG_LEN		4
+
+/**
+ * DOC: MMIO HXG Message
+ *
+ * Format of the MMIO messages follows definitions of `HXG Message`_.
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 |  31:0 |  +--------------------------------------------------------+  |
+ *  +---+-------+  |                                                        |  |
+ *  |...|       |  |  Embedded `HXG Message`_                               |  |
+ *  +---+-------+  |                                                        |  |
+ *  | n |  31:0 |  +--------------------------------------------------------+  |
+ *  +---+-------+--------------------------------------------------------------+
+ */
 
 #endif /* _ABI_GUC_COMMUNICATION_MMIO_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index f147cb389a20..6661dcb02239 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -219,24 +219,19 @@ static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
 
 	BUILD_BUG_ON(!CRASH_BUFFER_SIZE);
 	BUILD_BUG_ON(!IS_ALIGNED(CRASH_BUFFER_SIZE, UNIT));
-	BUILD_BUG_ON(!DPC_BUFFER_SIZE);
-	BUILD_BUG_ON(!IS_ALIGNED(DPC_BUFFER_SIZE, UNIT));
-	BUILD_BUG_ON(!ISR_BUFFER_SIZE);
-	BUILD_BUG_ON(!IS_ALIGNED(ISR_BUFFER_SIZE, UNIT));
+	BUILD_BUG_ON(!DEBUG_BUFFER_SIZE);
+	BUILD_BUG_ON(!IS_ALIGNED(DEBUG_BUFFER_SIZE, UNIT));
 
 	BUILD_BUG_ON((CRASH_BUFFER_SIZE / UNIT - 1) >
 			(GUC_LOG_CRASH_MASK >> GUC_LOG_CRASH_SHIFT));
-	BUILD_BUG_ON((DPC_BUFFER_SIZE / UNIT - 1) >
-			(GUC_LOG_DPC_MASK >> GUC_LOG_DPC_SHIFT));
-	BUILD_BUG_ON((ISR_BUFFER_SIZE / UNIT - 1) >
-			(GUC_LOG_ISR_MASK >> GUC_LOG_ISR_SHIFT));
+	BUILD_BUG_ON((DEBUG_BUFFER_SIZE / UNIT - 1) >
+			(GUC_LOG_DEBUG_MASK >> GUC_LOG_DEBUG_SHIFT));
 
 	flags = GUC_LOG_VALID |
 		GUC_LOG_NOTIFY_ON_HALF_FULL |
 		FLAG |
 		((CRASH_BUFFER_SIZE / UNIT - 1) << GUC_LOG_CRASH_SHIFT) |
-		((DPC_BUFFER_SIZE / UNIT - 1) << GUC_LOG_DPC_SHIFT) |
-		((ISR_BUFFER_SIZE / UNIT - 1) << GUC_LOG_ISR_SHIFT) |
+		((DEBUG_BUFFER_SIZE / UNIT - 1) << GUC_LOG_DEBUG_SHIFT) |
 		(offset << GUC_LOG_BUF_ADDR_SHIFT);
 
 	#undef UNIT
@@ -376,29 +371,27 @@ void intel_guc_fini(struct intel_guc *guc)
 /*
  * This function implements the MMIO based host to GuC interface.
  */
-int intel_guc_send_mmio(struct intel_guc *guc, const u32 *action, u32 len,
+int intel_guc_send_mmio(struct intel_guc *guc, const u32 *request, u32 len,
 			u32 *response_buf, u32 response_buf_size)
 {
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct intel_uncore *uncore = guc_to_gt(guc)->uncore;
-	u32 status;
+	u32 header;
 	int i;
 	int ret;
 
 	GEM_BUG_ON(!len);
 	GEM_BUG_ON(len > guc->send_regs.count);
 
-	/* We expect only action code */
-	GEM_BUG_ON(*action & ~INTEL_GUC_MSG_CODE_MASK);
-
-	/* If CT is available, we expect to use MMIO only during init/fini */
-	GEM_BUG_ON(*action != INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER &&
-		   *action != INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER);
+	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, request[0]) != GUC_HXG_ORIGIN_HOST);
+	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_TYPE, request[0]) != GUC_HXG_TYPE_REQUEST);
 
 	mutex_lock(&guc->send_mutex);
 	intel_uncore_forcewake_get(uncore, guc->send_regs.fw_domains);
 
+retry:
 	for (i = 0; i < len; i++)
-		intel_uncore_write(uncore, guc_send_reg(guc, i), action[i]);
+		intel_uncore_write(uncore, guc_send_reg(guc, i), request[i]);
 
 	intel_uncore_posting_read(uncore, guc_send_reg(guc, i - 1));
 
@@ -410,30 +403,74 @@ int intel_guc_send_mmio(struct intel_guc *guc, const u32 *action, u32 len,
 	 */
 	ret = __intel_wait_for_register_fw(uncore,
 					   guc_send_reg(guc, 0),
-					   INTEL_GUC_MSG_TYPE_MASK,
-					   INTEL_GUC_MSG_TYPE_RESPONSE <<
-					   INTEL_GUC_MSG_TYPE_SHIFT,
-					   10, 10, &status);
-	/* If GuC explicitly returned an error, convert it to -EIO */
-	if (!ret && !INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(status))
-		ret = -EIO;
+					   GUC_HXG_MSG_0_ORIGIN,
+					   FIELD_PREP(GUC_HXG_MSG_0_ORIGIN,
+						      GUC_HXG_ORIGIN_GUC),
+					   10, 10, &header);
+	if (unlikely(ret)) {
+timeout:
+		drm_err(&i915->drm, "mmio request %#x: no reply %x\n",
+			request[0], header);
+		goto out;
+	}
 
-	if (ret) {
-		DRM_ERROR("MMIO: GuC action %#x failed with error %d %#x\n",
-			  action[0], ret, status);
+	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, header) == GUC_HXG_TYPE_NO_RESPONSE_BUSY) {
+#define done ({ header = intel_uncore_read(uncore, guc_send_reg(guc, 0)); \
+		FIELD_GET(GUC_HXG_MSG_0_ORIGIN, header) != GUC_HXG_ORIGIN_GUC || \
+		FIELD_GET(GUC_HXG_MSG_0_TYPE, header) != GUC_HXG_TYPE_NO_RESPONSE_BUSY; })
+
+		ret = wait_for(done, 1000);
+		if (unlikely(ret))
+			goto timeout;
+		if (unlikely(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, header) !=
+				       GUC_HXG_ORIGIN_GUC))
+			goto proto;
+#undef done
+	}
+
+	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, header) == GUC_HXG_TYPE_NO_RESPONSE_RETRY) {
+		u32 reason = FIELD_GET(GUC_HXG_RETRY_MSG_0_REASON, header);
+
+		drm_dbg(&i915->drm, "mmio request %#x: retrying, reason %u\n",
+			request[0], reason);
+		goto retry;
+	}
+
+	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, header) == GUC_HXG_TYPE_RESPONSE_FAILURE) {
+		u32 hint = FIELD_GET(GUC_HXG_FAILURE_MSG_0_HINT, header);
+		u32 error = FIELD_GET(GUC_HXG_FAILURE_MSG_0_ERROR, header);
+
+		drm_err(&i915->drm, "mmio request %#x: failure %x/%u\n",
+			request[0], error, hint);
+		ret = -ENXIO;
+		goto out;
+	}
+
+	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, header) != GUC_HXG_TYPE_RESPONSE_SUCCESS) {
+proto:
+		drm_err(&i915->drm, "mmio request %#x: unexpected reply %#x\n",
+			request[0], header);
+		ret = -EPROTO;
 		goto out;
 	}
 
 	if (response_buf) {
-		int count = min(response_buf_size, guc->send_regs.count - 1);
+		int count = min(response_buf_size, guc->send_regs.count);
 
-		for (i = 0; i < count; i++)
+		GEM_BUG_ON(!count);
+
+		response_buf[0] = header;
+
+		for (i = 1; i < count; i++)
 			response_buf[i] = intel_uncore_read(uncore,
-							    guc_send_reg(guc, i + 1));
-	}
+							    guc_send_reg(guc, i));
 
-	/* Use data from the GuC response as our return value */
-	ret = INTEL_GUC_MSG_TO_DATA(status);
+		/* Use number of copied dwords as our return value */
+		ret = count;
+	} else {
+		/* Use data from the GuC response as our return value */
+		ret = FIELD_GET(GUC_HXG_RESPONSE_MSG_0_DATA0, header);
+	}
 
 out:
 	intel_uncore_forcewake_put(uncore, guc->send_regs.fw_domains);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 9abfbc6edbd6..b82145652d57 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -24,10 +24,6 @@
  *      +---------------------------------------+
  *      | guc_gt_system_info                    |
  *      +---------------------------------------+
- *      | guc_clients_info                      |
- *      +---------------------------------------+
- *      | guc_ct_pool_entry[size]               |
- *      +---------------------------------------+
  *      | padding                               |
  *      +---------------------------------------+ <== 4K aligned
  *      | private data                          |
@@ -39,8 +35,6 @@ struct __guc_ads_blob {
 	struct guc_ads ads;
 	struct guc_policies policies;
 	struct guc_gt_system_info system_info;
-	struct guc_clients_info clients_info;
-	struct guc_ct_pool_entry ct_pool[GUC_CT_POOL_SIZE];
 } __packed;
 
 static u32 guc_ads_private_data_size(struct intel_guc *guc)
@@ -59,38 +53,15 @@ static u32 guc_ads_blob_size(struct intel_guc *guc)
 	       guc_ads_private_data_size(guc);
 }
 
-static void guc_policy_init(struct guc_policy *policy)
-{
-	policy->execution_quantum = POLICY_DEFAULT_EXECUTION_QUANTUM_US;
-	policy->preemption_time = POLICY_DEFAULT_PREEMPTION_TIME_US;
-	policy->fault_time = POLICY_DEFAULT_FAULT_TIME_US;
-	policy->policy_flags = 0;
-}
-
 static void guc_policies_init(struct guc_policies *policies)
 {
-	struct guc_policy *policy;
-	u32 p, i;
-
-	policies->dpc_promote_time = POLICY_DEFAULT_DPC_PROMOTE_TIME_US;
-	policies->max_num_work_items = POLICY_MAX_NUM_WI;
-
-	for (p = 0; p < GUC_CLIENT_PRIORITY_NUM; p++) {
-		for (i = 0; i < GUC_MAX_ENGINE_CLASSES; i++) {
-			policy = &policies->policy[p][i];
-
-			guc_policy_init(policy);
-		}
-	}
-
+	policies->dpc_promote_time = GLOBAL_POLICY_DEFAULT_DPC_PROMOTE_TIME_US;
+	policies->max_num_work_items = GLOBAL_POLICY_MAX_NUM_WI;
+	/* Disable automatic resets as not yet supported. */
+	policies->global_flags = GLOBAL_POLICY_DISABLE_ENGINE_RESET;
 	policies->is_valid = 1;
 }
 
-static void guc_ct_pool_entries_init(struct guc_ct_pool_entry *pool, u32 num)
-{
-	memset(pool, 0, num * sizeof(*pool));
-}
-
 static void guc_mapping_table_init(struct intel_gt *gt,
 				   struct guc_gt_system_info *system_info)
 {
@@ -178,17 +149,9 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
-	/* Clients info  */
-	guc_ct_pool_entries_init(blob->ct_pool, ARRAY_SIZE(blob->ct_pool));
-
-	blob->clients_info.clients_num = 1;
-	blob->clients_info.ct_pool_addr = base + ptr_offset(blob, ct_pool);
-	blob->clients_info.ct_pool_count = ARRAY_SIZE(blob->ct_pool);
-
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
 	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
-	blob->ads.clients_info = base + ptr_offset(blob, clients_info);
 
 	/* Private Data */
 	blob->ads.private_data = base + guc_ads_private_data_offset(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 8f7b148fef58..43409044528e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -103,61 +103,66 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 static inline const char *guc_ct_buffer_type_to_str(u32 type)
 {
 	switch (type) {
-	case INTEL_GUC_CT_BUFFER_TYPE_SEND:
+	case GUC_CTB_TYPE_HOST2GUC:
 		return "SEND";
-	case INTEL_GUC_CT_BUFFER_TYPE_RECV:
+	case GUC_CTB_TYPE_GUC2HOST:
 		return "RECV";
 	default:
 		return "<invalid>";
 	}
 }
 
-static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
-				    u32 cmds_addr, u32 size)
+static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
 {
 	memset(desc, 0, sizeof(*desc));
-	desc->addr = cmds_addr;
-	desc->size = size;
-	desc->owner = CTB_OWNER_HOST;
 }
 
-static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb, u32 cmds_addr)
+static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
 {
-	guc_ct_buffer_desc_init(ctb->desc, cmds_addr, ctb->size);
+	ctb->broken = false;
+	guc_ct_buffer_desc_init(ctb->desc);
 }
 
 static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
 			       struct guc_ct_buffer_desc *desc,
-			       u32 *cmds, u32 size)
+			       u32 *cmds, u32 size_in_bytes)
 {
-	GEM_BUG_ON(size % 4);
+	GEM_BUG_ON(size_in_bytes % 4);
 
 	ctb->desc = desc;
 	ctb->cmds = cmds;
-	ctb->size = size;
+	ctb->size = size_in_bytes / 4;
 
-	guc_ct_buffer_reset(ctb, 0);
+	guc_ct_buffer_reset(ctb);
 }
 
-static int guc_action_register_ct_buffer(struct intel_guc *guc,
-					 u32 desc_addr,
-					 u32 type)
+static int guc_action_register_ct_buffer(struct intel_guc *guc, u32 type,
+					 u32 desc_addr, u32 buff_addr, u32 size)
 {
-	u32 action[] = {
-		INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER,
-		desc_addr,
-		sizeof(struct guc_ct_buffer_desc),
-		type
+	u32 request[HOST2GUC_REGISTER_CTB_REQUEST_MSG_LEN] = {
+		FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, GUC_HXG_ORIGIN_HOST) |
+		FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
+		FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, GUC_ACTION_HOST2GUC_REGISTER_CTB),
+		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_SIZE, size / SZ_4K - 1) |
+		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_TYPE, type),
+		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR, desc_addr),
+		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_3_BUFF_ADDR, buff_addr),
 	};
 
-	/* Can't use generic send(), CT registration must go over MMIO */
-	return intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+	GEM_BUG_ON(type != GUC_CTB_TYPE_HOST2GUC && type != GUC_CTB_TYPE_GUC2HOST);
+	GEM_BUG_ON(size % SZ_4K);
+
+	/* CT registration must go over MMIO */
+	return intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
 }
 
-static int ct_register_buffer(struct intel_guc_ct *ct, u32 desc_addr, u32 type)
+static int ct_register_buffer(struct intel_guc_ct *ct, u32 type,
+			      u32 desc_addr, u32 buff_addr, u32 size)
 {
-	int err = guc_action_register_ct_buffer(ct_to_guc(ct), desc_addr, type);
+	int err;
 
+	err = guc_action_register_ct_buffer(ct_to_guc(ct), type,
+					    desc_addr, buff_addr, size);
 	if (unlikely(err))
 		CT_ERROR(ct, "Failed to register %s buffer (err=%d)\n",
 			 guc_ct_buffer_type_to_str(type), err);
@@ -166,14 +171,17 @@ static int ct_register_buffer(struct intel_guc_ct *ct, u32 desc_addr, u32 type)
 
 static int guc_action_deregister_ct_buffer(struct intel_guc *guc, u32 type)
 {
-	u32 action[] = {
-		INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER,
-		CTB_OWNER_HOST,
-		type
+	u32 request[HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_LEN] = {
+		FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, GUC_HXG_ORIGIN_HOST) |
+		FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
+		FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, GUC_ACTION_HOST2GUC_DEREGISTER_CTB),
+		FIELD_PREP(HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_TYPE, type),
 	};
 
-	/* Can't use generic send(), CT deregistration must go over MMIO */
-	return intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+	GEM_BUG_ON(type != GUC_CTB_TYPE_HOST2GUC && type != GUC_CTB_TYPE_GUC2HOST);
+
+	/* CT deregistration must go over MMIO */
+	return intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
 }
 
 static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
@@ -261,7 +269,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
 int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
-	u32 base, cmds;
+	u32 base, desc, cmds;
 	void *blob;
 	int err;
 
@@ -277,23 +285,26 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	GEM_BUG_ON(blob != ct->ctbs.send.desc);
 
 	/* (re)initialize descriptors */
-	cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
-	guc_ct_buffer_reset(&ct->ctbs.send, cmds);
-
-	cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
-	guc_ct_buffer_reset(&ct->ctbs.recv, cmds);
+	guc_ct_buffer_reset(&ct->ctbs.send);
+	guc_ct_buffer_reset(&ct->ctbs.recv);
 
 	/*
 	 * Register both CT buffers starting with RECV buffer.
 	 * Descriptors are in first half of the blob.
 	 */
-	err = ct_register_buffer(ct, base + ptrdiff(ct->ctbs.recv.desc, blob),
-				 INTEL_GUC_CT_BUFFER_TYPE_RECV);
+	desc = base + ptrdiff(ct->ctbs.recv.desc, blob);
+	cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
+	err = ct_register_buffer(ct, GUC_CTB_TYPE_GUC2HOST,
+				 desc, cmds, ct->ctbs.recv.size * 4);
+
 	if (unlikely(err))
 		goto err_out;
 
-	err = ct_register_buffer(ct, base + ptrdiff(ct->ctbs.send.desc, blob),
-				 INTEL_GUC_CT_BUFFER_TYPE_SEND);
+	desc = base + ptrdiff(ct->ctbs.send.desc, blob);
+	cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
+	err = ct_register_buffer(ct, GUC_CTB_TYPE_HOST2GUC,
+				 desc, cmds, ct->ctbs.send.size * 4);
+
 	if (unlikely(err))
 		goto err_deregister;
 
@@ -302,7 +313,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	return 0;
 
 err_deregister:
-	ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
+	ct_deregister_buffer(ct, GUC_CTB_TYPE_GUC2HOST);
 err_out:
 	CT_PROBE_ERROR(ct, "Failed to enable CTB (%pe)\n", ERR_PTR(err));
 	return err;
@@ -321,8 +332,8 @@ void intel_guc_ct_disable(struct intel_guc_ct *ct)
 	ct->enabled = false;
 
 	if (intel_guc_is_fw_running(guc)) {
-		ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_SEND);
-		ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
+		ct_deregister_buffer(ct, GUC_CTB_TYPE_HOST2GUC);
+		ct_deregister_buffer(ct, GUC_CTB_TYPE_GUC2HOST);
 	}
 }
 
@@ -354,24 +365,6 @@ static void write_barrier(struct intel_guc_ct *ct)
 	}
 }
 
-/**
- * DOC: CTB Host to GuC request
- *
- * Format of the CTB Host to GuC request message is as follows::
- *
- *      +------------+---------+---------+---------+---------+
- *      |   msg[0]   |   [1]   |   [2]   |   ...   |  [n-1]  |
- *      +------------+---------+---------+---------+---------+
- *      |   MESSAGE  |       MESSAGE PAYLOAD                 |
- *      +   HEADER   +---------+---------+---------+---------+
- *      |            |    0    |    1    |   ...   |    n    |
- *      +============+=========+=========+=========+=========+
- *      |  len >= 1  |  FENCE  |     request specific data   |
- *      +------+-----+---------+---------+---------+---------+
- *
- *                   ^-----------------len-------------------^
- */
-
 static int ct_write(struct intel_guc_ct *ct,
 		    const u32 *action,
 		    u32 len /* in dwords */,
@@ -384,20 +377,22 @@ static int ct_write(struct intel_guc_ct *ct,
 	u32 size = ctb->size;
 	u32 used;
 	u32 header;
+	u32 hxg;
 	u32 *cmds = ctb->cmds;
 	unsigned int i;
 
-	if (unlikely(desc->is_in_error))
+	if (unlikely(ctb->broken))
 		return -EPIPE;
 
-	if (unlikely(!IS_ALIGNED(head | tail, 4) ||
-		     (tail | head) >= size))
+	if (unlikely(desc->status))
 		goto corrupted;
 
-	/* later calculations will be done in dwords */
-	head /= 4;
-	tail /= 4;
-	size /= 4;
+	if (unlikely((tail | head) >= size)) {
+		CT_ERROR(ct, "Invalid offsets head=%u tail=%u (size=%u)\n",
+			 head, tail, size);
+		desc->status |= GUC_CTB_STATUS_OVERFLOW;
+		goto corrupted;
+	}
 
 	/*
 	 * tail == head condition indicates empty. GuC FW does not support
@@ -413,22 +408,25 @@ static int ct_write(struct intel_guc_ct *ct,
 		return -ENOSPC;
 
 	/*
-	 * Write the message. The format is the following:
-	 * DW0: header (including action code)
-	 * DW1: fence
-	 * DW2+: action data
+	 * dw0: CT header (including fence)
+	 * dw1: HXG header (including action code)
+	 * dw2+: action data
 	 */
-	header = (len << GUC_CT_MSG_LEN_SHIFT) |
-		 GUC_CT_MSG_SEND_STATUS |
-		 (action[0] << GUC_CT_MSG_ACTION_SHIFT);
+	header = FIELD_PREP(GUC_CTB_MSG_0_FORMAT, GUC_CTB_FORMAT_HXG) |
+		 FIELD_PREP(GUC_CTB_MSG_0_NUM_DWORDS, len) |
+		 FIELD_PREP(GUC_CTB_MSG_0_FENCE, fence);
 
-	CT_DEBUG(ct, "writing %*ph %*ph %*ph\n",
-		 4, &header, 4, &fence, 4 * (len - 1), &action[1]);
+	hxg = FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
+	      FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
+			 GUC_HXG_REQUEST_MSG_0_DATA0, action[0]);
+
+	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
+		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
 
 	cmds[tail] = header;
 	tail = (tail + 1) % size;
 
-	cmds[tail] = fence;
+	cmds[tail] = hxg;
 	tail = (tail + 1) % size;
 
 	for (i = 1; i < len; i++) {
@@ -443,14 +441,15 @@ static int ct_write(struct intel_guc_ct *ct,
 	 */
 	write_barrier(ct);
 
-	/* now update desc tail (back in bytes) */
-	desc->tail = tail * 4;
+	/* now update descriptor */
+	WRITE_ONCE(desc->tail, tail);
+
 	return 0;
 
 corrupted:
-	CT_ERROR(ct, "Corrupted descriptor addr=%#x head=%u tail=%u size=%u\n",
-		 desc->addr, desc->head, desc->tail, desc->size);
-	desc->is_in_error = 1;
+	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
+		 desc->head, desc->tail, desc->status);
+	ctb->broken = true;
 	return -EPIPE;
 }
 
@@ -477,7 +476,9 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 	 * up to that length of time, then switch to a slower sleep-wait loop.
 	 * No GuC command should ever take longer than 10ms.
 	 */
-#define done INTEL_GUC_MSG_IS_RESPONSE(READ_ONCE(req->status))
+#define done \
+	(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, READ_ONCE(req->status)) == \
+	 GUC_HXG_ORIGIN_GUC)
 	err = wait_for_us(done, 10);
 	if (err)
 		err = wait_for(done, 10);
@@ -532,21 +533,21 @@ static int ct_send(struct intel_guc_ct *ct,
 	if (unlikely(err))
 		goto unlink;
 
-	if (!INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(*status)) {
+	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, *status) != GUC_HXG_TYPE_RESPONSE_SUCCESS) {
 		err = -EIO;
 		goto unlink;
 	}
 
 	if (response_buf) {
 		/* There shall be no data in the status */
-		WARN_ON(INTEL_GUC_MSG_TO_DATA(request.status));
+		WARN_ON(FIELD_GET(GUC_HXG_RESPONSE_MSG_0_DATA0, request.status));
 		/* Return actual response len */
 		err = request.response_len;
 	} else {
 		/* There shall be no response payload */
 		WARN_ON(request.response_len);
 		/* Return data decoded from the status dword */
-		err = INTEL_GUC_MSG_TO_DATA(*status);
+		err = FIELD_GET(GUC_HXG_RESPONSE_MSG_0_DATA0, *status);
 	}
 
 unlink:
@@ -583,21 +584,6 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 	return ret;
 }
 
-static inline unsigned int ct_header_get_len(u32 header)
-{
-	return (header >> GUC_CT_MSG_LEN_SHIFT) & GUC_CT_MSG_LEN_MASK;
-}
-
-static inline unsigned int ct_header_get_action(u32 header)
-{
-	return (header >> GUC_CT_MSG_ACTION_SHIFT) & GUC_CT_MSG_ACTION_MASK;
-}
-
-static inline bool ct_header_is_response(u32 header)
-{
-	return !!(header & GUC_CT_MSG_IS_RESPONSE);
-}
-
 static struct ct_incoming_msg *ct_alloc_msg(u32 num_dwords)
 {
 	struct ct_incoming_msg *msg;
@@ -630,17 +616,18 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	unsigned int i;
 	u32 header;
 
-	if (unlikely(desc->is_in_error))
+	if (unlikely(ctb->broken))
 		return -EPIPE;
 
-	if (unlikely(!IS_ALIGNED(head | tail, 4) ||
-		     (tail | head) >= size))
+	if (unlikely(desc->status))
 		goto corrupted;
 
-	/* later calculations will be done in dwords */
-	head /= 4;
-	tail /= 4;
-	size /= 4;
+	if (unlikely((tail | head) >= size)) {
+		CT_ERROR(ct, "Invalid offsets head=%u tail=%u (size=%u)\n",
+			 head, tail, size);
+		desc->status |= GUC_CTB_STATUS_OVERFLOW;
+		goto corrupted;
+	}
 
 	/* tail == head condition indicates empty */
 	available = tail - head;
@@ -659,7 +646,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	head = (head + 1) % size;
 
 	/* message len with header */
-	len = ct_header_get_len(header) + 1;
+	len = FIELD_GET(GUC_CTB_MSG_0_NUM_DWORDS, header) + GUC_CTB_MSG_MIN_LEN;
 	if (unlikely(len > (u32)available)) {
 		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
 			 4, &header,
@@ -667,6 +654,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 			      size - head : available - 1), &cmds[head],
 			 4 * (head + available - 1 > size ?
 			      available - 1 - size + head : 0), &cmds[0]);
+		desc->status |= GUC_CTB_STATUS_UNDERFLOW;
 		goto corrupted;
 	}
 
@@ -689,65 +677,36 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	}
 	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
 
-	desc->head = head * 4;
+	/* now update descriptor */
+	WRITE_ONCE(desc->head, head);
+
 	return available - len;
 
 corrupted:
-	CT_ERROR(ct, "Corrupted descriptor addr=%#x head=%u tail=%u size=%u\n",
-		 desc->addr, desc->head, desc->tail, desc->size);
-	desc->is_in_error = 1;
+	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
+		 desc->head, desc->tail, desc->status);
+	ctb->broken = true;
 	return -EPIPE;
 }
 
-/**
- * DOC: CTB GuC to Host response
- *
- * Format of the CTB GuC to Host response message is as follows::
- *
- *      +------------+---------+---------+---------+---------+---------+
- *      |   msg[0]   |   [1]   |   [2]   |   [3]   |   ...   |  [n-1]  |
- *      +------------+---------+---------+---------+---------+---------+
- *      |   MESSAGE  |       MESSAGE PAYLOAD                           |
- *      +   HEADER   +---------+---------+---------+---------+---------+
- *      |            |    0    |    1    |    2    |   ...   |    n    |
- *      +============+=========+=========+=========+=========+=========+
- *      |  len >= 2  |  FENCE  |  STATUS |   response specific data    |
- *      +------+-----+---------+---------+---------+---------+---------+
- *
- *                   ^-----------------------len-----------------------^
- */
-
 static int ct_handle_response(struct intel_guc_ct *ct, struct ct_incoming_msg *response)
 {
-	u32 header = response->msg[0];
-	u32 len = ct_header_get_len(header);
-	u32 fence;
-	u32 status;
-	u32 datalen;
+	u32 len = FIELD_GET(GUC_CTB_MSG_0_NUM_DWORDS, response->msg[0]);
+	u32 fence = FIELD_GET(GUC_CTB_MSG_0_FENCE, response->msg[0]);
+	const u32 *hxg = &response->msg[GUC_CTB_MSG_MIN_LEN];
+	const u32 *data = &hxg[GUC_HXG_MSG_MIN_LEN];
+	u32 datalen = len - GUC_HXG_MSG_MIN_LEN;
 	struct ct_request *req;
 	unsigned long flags;
 	bool found = false;
 	int err = 0;
 
-	GEM_BUG_ON(!ct_header_is_response(header));
-
-	/* Response payload shall at least include fence and status */
-	if (unlikely(len < 2)) {
-		CT_ERROR(ct, "Corrupted response (len %u)\n", len);
-		return -EPROTO;
-	}
-
-	fence = response->msg[1];
-	status = response->msg[2];
-	datalen = len - 2;
-
-	/* Format of the status follows RESPONSE message */
-	if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
-		CT_ERROR(ct, "Corrupted response (status %#x)\n", status);
-		return -EPROTO;
-	}
+	GEM_BUG_ON(len < GUC_HXG_MSG_MIN_LEN);
+	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, hxg[0]) != GUC_HXG_ORIGIN_GUC);
+	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) != GUC_HXG_TYPE_RESPONSE_SUCCESS &&
+		   FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) != GUC_HXG_TYPE_RESPONSE_FAILURE);
 
-	CT_DEBUG(ct, "response fence %u status %#x\n", fence, status);
+	CT_DEBUG(ct, "response fence %u status %#x\n", fence, hxg[0]);
 
 	spin_lock_irqsave(&ct->requests.lock, flags);
 	list_for_each_entry(req, &ct->requests.pending, link) {
@@ -763,9 +722,9 @@ static int ct_handle_response(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 			err = -EMSGSIZE;
 		}
 		if (datalen)
-			memcpy(req->response_buf, response->msg + 3, 4 * datalen);
+			memcpy(req->response_buf, data, 4 * datalen);
 		req->response_len = datalen;
-		WRITE_ONCE(req->status, status);
+		WRITE_ONCE(req->status, hxg[0]);
 		found = true;
 		break;
 	}
@@ -786,14 +745,16 @@ static int ct_handle_response(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *request)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
-	u32 header, action, len;
+	const u32 *hxg;
 	const u32 *payload;
+	u32 hxg_len, action, len;
 	int ret;
 
-	header = request->msg[0];
-	payload = &request->msg[1];
-	action = ct_header_get_action(header);
-	len = ct_header_get_len(header);
+	hxg = &request->msg[GUC_CTB_MSG_MIN_LEN];
+	hxg_len = request->size - GUC_CTB_MSG_MIN_LEN;
+	payload = &hxg[GUC_HXG_MSG_MIN_LEN];
+	action = FIELD_GET(GUC_HXG_EVENT_MSG_0_ACTION, hxg[0]);
+	len = hxg_len - GUC_HXG_MSG_MIN_LEN;
 
 	CT_DEBUG(ct, "request %x %*ph\n", action, 4 * len, payload);
 
@@ -855,29 +816,12 @@ static void ct_incoming_request_worker_func(struct work_struct *w)
 		queue_work(system_unbound_wq, &ct->requests.worker);
 }
 
-/**
- * DOC: CTB GuC to Host request
- *
- * Format of the CTB GuC to Host request message is as follows::
- *
- *      +------------+---------+---------+---------+---------+---------+
- *      |   msg[0]   |   [1]   |   [2]   |   [3]   |   ...   |  [n-1]  |
- *      +------------+---------+---------+---------+---------+---------+
- *      |   MESSAGE  |       MESSAGE PAYLOAD                           |
- *      +   HEADER   +---------+---------+---------+---------+---------+
- *      |            |    0    |    1    |    2    |   ...   |    n    |
- *      +============+=========+=========+=========+=========+=========+
- *      |     len    |            request specific data                |
- *      +------+-----+---------+---------+---------+---------+---------+
- *
- *                   ^-----------------------len-----------------------^
- */
-
-static int ct_handle_request(struct intel_guc_ct *ct, struct ct_incoming_msg *request)
+static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *request)
 {
+	const u32 *hxg = &request->msg[GUC_CTB_MSG_MIN_LEN];
 	unsigned long flags;
 
-	GEM_BUG_ON(ct_header_is_response(request->msg[0]));
+	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) != GUC_HXG_TYPE_EVENT);
 
 	spin_lock_irqsave(&ct->requests.lock, flags);
 	list_add_tail(&request->link, &ct->requests.incoming);
@@ -887,15 +831,53 @@ static int ct_handle_request(struct intel_guc_ct *ct, struct ct_incoming_msg *re
 	return 0;
 }
 
-static void ct_handle_msg(struct intel_guc_ct *ct, struct ct_incoming_msg *msg)
+static int ct_handle_hxg(struct intel_guc_ct *ct, struct ct_incoming_msg *msg)
 {
-	u32 header = msg->msg[0];
+	u32 origin, type;
+	u32 *hxg;
 	int err;
 
-	if (ct_header_is_response(header))
+	if (unlikely(msg->size < GUC_CTB_HXG_MSG_MIN_LEN))
+		return -EBADMSG;
+
+	hxg = &msg->msg[GUC_CTB_MSG_MIN_LEN];
+
+	origin = FIELD_GET(GUC_HXG_MSG_0_ORIGIN, hxg[0]);
+	if (unlikely(origin != GUC_HXG_ORIGIN_GUC)) {
+		err = -EPROTO;
+		goto failed;
+	}
+
+	type = FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]);
+	switch (type) {
+	case GUC_HXG_TYPE_EVENT:
+		err = ct_handle_event(ct, msg);
+		break;
+	case GUC_HXG_TYPE_RESPONSE_SUCCESS:
+	case GUC_HXG_TYPE_RESPONSE_FAILURE:
 		err = ct_handle_response(ct, msg);
+		break;
+	default:
+		err = -EOPNOTSUPP;
+	}
+
+	if (unlikely(err)) {
+failed:
+		CT_ERROR(ct, "Failed to handle HXG message (%pe) %*ph\n",
+			 ERR_PTR(err), 4 * GUC_HXG_MSG_MIN_LEN, hxg);
+	}
+	return err;
+}
+
+static void ct_handle_msg(struct intel_guc_ct *ct, struct ct_incoming_msg *msg)
+{
+	u32 format = FIELD_GET(GUC_CTB_MSG_0_FORMAT, msg->msg[0]);
+	int err;
+
+	if (format == GUC_CTB_FORMAT_HXG)
+		err = ct_handle_hxg(ct, msg);
 	else
-		err = ct_handle_request(ct, msg);
+		err = -EOPNOTSUPP;
 
 	if (unlikely(err)) {
 		CT_ERROR(ct, "Failed to process CT message (%pe) %*ph\n",
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index cb222f202301..1ae2dde6db93 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -31,13 +31,15 @@ struct intel_guc;
  * @lock: protects access to the commands buffer and buffer descriptor
  * @desc: pointer to the buffer descriptor
  * @cmds: pointer to the commands buffer
- * @size: size of the commands buffer
+ * @size: size of the commands buffer in dwords
+ * @broken: flag to indicate if descriptor data is broken
  */
 struct intel_guc_ct_buffer {
 	spinlock_t lock;
 	struct guc_ct_buffer_desc *desc;
 	u32 *cmds;
 	u32 size;
+	bool broken;
 };
 
 
@@ -59,7 +61,7 @@ struct intel_guc_ct {
 	struct tasklet_struct receive_tasklet;
 
 	struct {
-		u32 last_fence; /* last fence used to send request */
+		u16 last_fence; /* last fence used to send request */
 
 		spinlock_t lock; /* protects pending requests list */
 		struct list_head pending; /* requests waiting for response */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index e9a9d85e2aa3..617ec601648d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -81,10 +81,8 @@
 #define   GUC_LOG_ALLOC_IN_MEGABYTE	(1 << 3)
 #define   GUC_LOG_CRASH_SHIFT		4
 #define   GUC_LOG_CRASH_MASK		(0x3 << GUC_LOG_CRASH_SHIFT)
-#define   GUC_LOG_DPC_SHIFT		6
-#define   GUC_LOG_DPC_MASK	        (0x7 << GUC_LOG_DPC_SHIFT)
-#define   GUC_LOG_ISR_SHIFT		9
-#define   GUC_LOG_ISR_MASK	        (0x7 << GUC_LOG_ISR_SHIFT)
+#define   GUC_LOG_DEBUG_SHIFT		6
+#define   GUC_LOG_DEBUG_MASK	        (0xF << GUC_LOG_DEBUG_SHIFT)
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
 #define GUC_CTL_WA			1
@@ -247,32 +245,14 @@ struct guc_stage_desc {
 
 /* Scheduling policy settings */
 
-/* Reset engine upon preempt failure */
-#define POLICY_RESET_ENGINE		(1<<0)
-/* Preempt to idle on quantum expiry */
-#define POLICY_PREEMPT_TO_IDLE		(1<<1)
-
-#define POLICY_MAX_NUM_WI 15
-#define POLICY_DEFAULT_DPC_PROMOTE_TIME_US 500000
-#define POLICY_DEFAULT_EXECUTION_QUANTUM_US 1000000
-#define POLICY_DEFAULT_PREEMPTION_TIME_US 500000
-#define POLICY_DEFAULT_FAULT_TIME_US 250000
-
-struct guc_policy {
-	/* Time for one workload to execute. (in micro seconds) */
-	u32 execution_quantum;
-	/* Time to wait for a preemption request to completed before issuing a
-	 * reset. (in micro seconds). */
-	u32 preemption_time;
-	/* How much time to allow to run after the first fault is observed.
-	 * Then preempt afterwards. (in micro seconds) */
-	u32 fault_time;
-	u32 policy_flags;
-	u32 reserved[8];
-} __packed;
+#define GLOBAL_POLICY_MAX_NUM_WI 15
+
+/* Don't reset an engine upon preemption failure */
+#define GLOBAL_POLICY_DISABLE_ENGINE_RESET				BIT(0)
+
+#define GLOBAL_POLICY_DEFAULT_DPC_PROMOTE_TIME_US 500000
 
 struct guc_policies {
-	struct guc_policy policy[GUC_CLIENT_PRIORITY_NUM][GUC_MAX_ENGINE_CLASSES];
 	u32 submission_queue_depth[GUC_MAX_ENGINE_CLASSES];
 	/* In micro seconds. How much time to allow before DPC processing is
 	 * called back via interrupt (to prevent DPC queue drain starving).
@@ -286,6 +266,7 @@ struct guc_policies {
 	 * idle. */
 	u32 max_num_work_items;
 
+	u32 global_flags;
 	u32 reserved[4];
 } __packed;
 
@@ -311,29 +292,13 @@ struct guc_gt_system_info {
 	u32 generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_MAX];
 } __packed;
 
-/* Clients info */
-struct guc_ct_pool_entry {
-	struct guc_ct_buffer_desc desc;
-	u32 reserved[7];
-} __packed;
-
-#define GUC_CT_POOL_SIZE	2
-
-struct guc_clients_info {
-	u32 clients_num;
-	u32 reserved0[13];
-	u32 ct_pool_addr;
-	u32 ct_pool_count;
-	u32 reserved[4];
-} __packed;
-
 /* GuC Additional Data Struct */
 struct guc_ads {
 	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
 	u32 reserved0;
 	u32 scheduler_policies;
 	u32 gt_system_info;
-	u32 clients_info;
+	u32 reserved1;
 	u32 control_data;
 	u32 golden_context_lrca[GUC_MAX_ENGINE_CLASSES];
 	u32 eng_state_size[GUC_MAX_ENGINE_CLASSES];
@@ -344,8 +309,7 @@ struct guc_ads {
 /* GuC logging structures */
 
 enum guc_log_buffer_type {
-	GUC_ISR_LOG_BUFFER,
-	GUC_DPC_LOG_BUFFER,
+	GUC_DEBUG_LOG_BUFFER,
 	GUC_CRASH_DUMP_LOG_BUFFER,
 	GUC_MAX_LOG_BUFFER
 };
@@ -414,23 +378,6 @@ struct guc_shared_ctx_data {
 	struct guc_ctx_report preempt_ctx_report[GUC_MAX_ENGINES_NUM];
 } __packed;
 
-#define __INTEL_GUC_MSG_GET(T, m) \
-	(((m) & INTEL_GUC_MSG_ ## T ## _MASK) >> INTEL_GUC_MSG_ ## T ## _SHIFT)
-#define INTEL_GUC_MSG_TO_TYPE(m)	__INTEL_GUC_MSG_GET(TYPE, m)
-#define INTEL_GUC_MSG_TO_DATA(m)	__INTEL_GUC_MSG_GET(DATA, m)
-#define INTEL_GUC_MSG_TO_CODE(m)	__INTEL_GUC_MSG_GET(CODE, m)
-
-#define __INTEL_GUC_MSG_TYPE_IS(T, m) \
-	(INTEL_GUC_MSG_TO_TYPE(m) == INTEL_GUC_MSG_TYPE_ ## T)
-#define INTEL_GUC_MSG_IS_REQUEST(m)	__INTEL_GUC_MSG_TYPE_IS(REQUEST, m)
-#define INTEL_GUC_MSG_IS_RESPONSE(m)	__INTEL_GUC_MSG_TYPE_IS(RESPONSE, m)
-
-#define INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(m) \
-	 (typecheck(u32, (m)) && \
-	  ((m) & (INTEL_GUC_MSG_TYPE_MASK | INTEL_GUC_MSG_CODE_MASK)) == \
-	  ((INTEL_GUC_MSG_TYPE_RESPONSE << INTEL_GUC_MSG_TYPE_SHIFT) | \
-	   (INTEL_GUC_RESPONSE_STATUS_SUCCESS << INTEL_GUC_MSG_CODE_SHIFT)))
-
 /* This action will be programmed in C1BC - SOFT_SCRATCH_15_REG */
 enum intel_guc_recv_message {
 	INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED = BIT(1),
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index c36d5eb5bbb9..ac0931f0374b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -197,10 +197,8 @@ static bool guc_check_log_buf_overflow(struct intel_guc_log *log,
 static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 {
 	switch (type) {
-	case GUC_ISR_LOG_BUFFER:
-		return ISR_BUFFER_SIZE;
-	case GUC_DPC_LOG_BUFFER:
-		return DPC_BUFFER_SIZE;
+	case GUC_DEBUG_LOG_BUFFER:
+		return DEBUG_BUFFER_SIZE;
 	case GUC_CRASH_DUMP_LOG_BUFFER:
 		return CRASH_BUFFER_SIZE;
 	default:
@@ -245,7 +243,7 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 	src_data += PAGE_SIZE;
 	dst_data += PAGE_SIZE;
 
-	for (type = GUC_ISR_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
+	for (type = GUC_DEBUG_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
 		/*
 		 * Make a copy of the state structure, inside GuC log buffer
 		 * (which is uncached mapped), on the stack to avoid reading
@@ -463,21 +461,16 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	 *  +===============================+ 00B
 	 *  |    Crash dump state header    |
 	 *  +-------------------------------+ 32B
-	 *  |       DPC state header        |
+	 *  |      Debug state header       |
 	 *  +-------------------------------+ 64B
-	 *  |       ISR state header        |
-	 *  +-------------------------------+ 96B
 	 *  |                               |
 	 *  +===============================+ PAGE_SIZE (4KB)
 	 *  |        Crash Dump logs        |
 	 *  +===============================+ + CRASH_SIZE
-	 *  |           DPC logs            |
-	 *  +===============================+ + DPC_SIZE
-	 *  |           ISR logs            |
-	 *  +===============================+ + ISR_SIZE
+	 *  |          Debug logs           |
+	 *  +===============================+ + DEBUG_SIZE
 	 */
-	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DPC_BUFFER_SIZE +
-			ISR_BUFFER_SIZE;
+	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE;
 
 	vma = intel_guc_allocate_vma(guc, guc_log_size);
 	if (IS_ERR(vma)) {
@@ -675,10 +668,8 @@ static const char *
 stringify_guc_log_type(enum guc_log_buffer_type type)
 {
 	switch (type) {
-	case GUC_ISR_LOG_BUFFER:
-		return "ISR";
-	case GUC_DPC_LOG_BUFFER:
-		return "DPC";
+	case GUC_DEBUG_LOG_BUFFER:
+		return "DEBUG";
 	case GUC_CRASH_DUMP_LOG_BUFFER:
 		return "CRASH";
 	default:
@@ -708,7 +699,7 @@ void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)
 
 	drm_printf(p, "\tRelay full count: %u\n", log->relay.full_count);
 
-	for (type = GUC_ISR_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
+	for (type = GUC_DEBUG_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
 		drm_printf(p, "\t%s:\tflush count %10u, overflow count %10u\n",
 			   stringify_guc_log_type(type),
 			   log->stats[type].flush,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index 11fccd0b2294..ac1ee1d5ce10 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -17,12 +17,10 @@ struct intel_guc;
 
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
 #define CRASH_BUFFER_SIZE	SZ_2M
-#define DPC_BUFFER_SIZE		SZ_8M
-#define ISR_BUFFER_SIZE		SZ_8M
+#define DEBUG_BUFFER_SIZE	SZ_16M
 #else
 #define CRASH_BUFFER_SIZE	SZ_8K
-#define DPC_BUFFER_SIZE		SZ_32K
-#define ISR_BUFFER_SIZE		SZ_32K
+#define DEBUG_BUFFER_SIZE	SZ_64K
 #endif
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index df647c9a8d56..9f23e9de3237 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -48,19 +48,19 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * firmware as TGL.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
-	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
-	fw_def(ROCKETLAKE,  0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
-	fw_def(TIGERLAKE,   0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
-	fw_def(JASPERLAKE,  0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ICELAKE,     0, guc_def(icl, 49, 0, 1), huc_def(icl,  9, 0, 0)) \
-	fw_def(COMETLAKE,   5, guc_def(cml, 49, 0, 1), huc_def(cml,  4, 0, 0)) \
-	fw_def(COMETLAKE,   0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
-	fw_def(COFFEELAKE,  0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
-	fw_def(GEMINILAKE,  0, guc_def(glk, 49, 0, 1), huc_def(glk,  4, 0, 0)) \
-	fw_def(KABYLAKE,    0, guc_def(kbl, 49, 0, 1), huc_def(kbl,  4, 0, 0)) \
-	fw_def(BROXTON,     0, guc_def(bxt, 49, 0, 1), huc_def(bxt,  2, 0, 0)) \
-	fw_def(SKYLAKE,     0, guc_def(skl, 49, 0, 1), huc_def(skl,  2, 0, 0))
+	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 62, 0, 0), huc_def(tgl,  7, 5, 0)) \
+	fw_def(ROCKETLAKE,  0, guc_def(tgl, 62, 0, 0), huc_def(tgl,  7, 5, 0)) \
+	fw_def(TIGERLAKE,   0, guc_def(tgl, 62, 0, 0), huc_def(tgl,  7, 5, 0)) \
+	fw_def(JASPERLAKE,  0, guc_def(ehl, 62, 0, 0), huc_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 62, 0, 0), huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,     0, guc_def(icl, 62, 0, 0), huc_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,   5, guc_def(cml, 62, 0, 0), huc_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,   0, guc_def(kbl, 62, 0, 0), huc_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,  0, guc_def(kbl, 62, 0, 0), huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,  0, guc_def(glk, 62, 0, 0), huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,    0, guc_def(kbl, 62, 0, 0), huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,     0, guc_def(bxt, 62, 0, 0), huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,     0, guc_def(skl, 62, 0, 0), huc_def(skl,  2, 0, 0))
 
 #define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_) \
 	"i915/" \
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
