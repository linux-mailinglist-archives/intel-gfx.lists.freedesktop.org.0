Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E847C83C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 21:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0060112A20;
	Tue, 21 Dec 2021 20:29:30 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6630112993;
 Tue, 21 Dec 2021 20:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640118568; x=1671654568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q/uZJ3NnHXkS5qy7DMzlLVA12dBN7kMovQHunZpzRz4=;
 b=exwW0T0jDATZpwUpdVzVlExE4hmarIa+o7E5ksO4vwDIyLa/W7OeZwK8
 oMIGwORFIbCbA/5kjLdxMIyDaamYSlPCTs52VbOx3uu5uSBLI+JEvbK1f
 dJhXvtQMw12EUeX9qSG1fsMXZvU2OrPHWWNLGSg6lpzsfURr7bIVI08YZ
 F21W5O/lcmvaQVFq3NdYq/pq10vQx63y9NFJRxwBvMxBaWew63nXVMmnU
 FUnh7R+x8w2qstgRAlt0t78YTkH9SJ4nq3WwZKLDNK+80Re/plb34/Pfh
 +L1gi9mME5kdgIGGughqOAQfd4m0NoyAGkaQTQga+VdzbWvikgFo3G2bW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="227782076"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="227782076"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 12:29:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="607182371"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Dec 2021 12:29:03 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 21 Dec 2021 12:29:01 -0800
Message-Id: <20211221202902.1395588-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211221202902.1395588-1-John.C.Harrison@Intel.com>
References: <20211221202902.1395588-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/guc: Update to GuC version 69.0.3
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Update to the latest GuC release.

The latest GuC firmware introduces a number of interface changes:

GuC may return NO_RESPONSE_RETRY message for requests sent over CTB.
Add support for this reply and try resending the request again as a
new CTB message.

A KLV (key-length-value) mechanism is now used for passing
configuration data such as CTB management.

With the new KLV scheme, the old CTB management actions are no longer
used and are removed.

Register capture on hang is now supported by GuC. Full i915 support
for this will be added by a later patch. A minimum support of
providing capture memory and register lists is required though, so add
that in.

The device id of the current platform needs to be provided at init time.

The 'poll CS' w/a (Wa_22012773006) was blanket enabled by previous
versions of GuC. It must now be explicitly requested by the KMD. So,
add in the code to turn it on when relevant.

The GuC log entry format has changed. This requires adding a new field
to the log header structure to mark the wrap point at the end of the
buffer (as the buffer size is no longer a multiple of the log entry
size).

New CTB notification messages are now sent for some things that were
previously only sent via MMIO notifications.

Of these, the crash dump notification was not really being handled by
i915. It called the log flush code but that only flushed the regular
debug log and then only if relay logging was enabled. So just report
an error message instead.

The 'exception' notification was just being ignored completely. So add
an error message for that as well.

Note that in either the crash dump or the exception case, the GuC is
basically dead. The KMD will detect this via the heartbeat and trigger
both an error log (which will include the crash dump as part of the
GuC log) and a GT reset. So no other processing is really required.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 Documentation/gpu/i915.rst                    |   1 +
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  80 +++++-----
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h |  82 ++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 126 +++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  45 +++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 141 ++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  37 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  31 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   3 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  18 +++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  30 ++--
 12 files changed, 434 insertions(+), 164 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index b7d801993bfa..bcaefc952764 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -539,6 +539,7 @@ GuC ABI
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
 
 HuC
 ---
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index fe5d7d261797..7afdadc7656f 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -7,9 +7,9 @@
 #define _ABI_GUC_ACTIONS_ABI_H
 
 /**
- * DOC: HOST2GUC_REGISTER_CTB
+ * DOC: HOST2GUC_SELF_CFG
  *
- * This message is used as part of the `CTB based communication`_ setup.
+ * This message is used by Host KMD to setup of the `GuC Self Config KLVs`_.
  *
  * This message must be sent as `MMIO HXG Message`_.
  *
@@ -22,20 +22,18 @@
  *  |   +-------+--------------------------------------------------------------+
  *  |   | 27:16 | DATA0 = MBZ                                                  |
  *  |   +-------+--------------------------------------------------------------+
- *  |   |  15:0 | ACTION = _`GUC_ACTION_HOST2GUC_REGISTER_CTB` = 0x4505        |
+ *  |   |  15:0 | ACTION = _`GUC_ACTION_HOST2GUC_SELF_CFG` = 0x0508            |
  *  +---+-------+--------------------------------------------------------------+
- *  | 1 | 31:12 | RESERVED = MBZ                                               |
+ *  | 1 | 31:16 | **KLV_KEY** - KLV key, see `GuC Self Config KLVs`_           |
  *  |   +-------+--------------------------------------------------------------+
- *  |   |  11:8 | **TYPE** - type for the `CT Buffer`_                         |
+ *  |   |  15:0 | **KLV_LEN** - KLV length                                     |
  *  |   |       |                                                              |
- *  |   |       |   - _`GUC_CTB_TYPE_HOST2GUC` = 0                             |
- *  |   |       |   - _`GUC_CTB_TYPE_GUC2HOST` = 1                             |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |   7:0 | **SIZE** - size of the `CT Buffer`_ in 4K units minus 1      |
+ *  |   |       |   - 32 bit KLV = 1                                           |
+ *  |   |       |   - 64 bit KLV = 2                                           |
  *  +---+-------+--------------------------------------------------------------+
- *  | 2 |  31:0 | **DESC_ADDR** - GGTT address of the `CTB Descriptor`_        |
+ *  | 2 |  31:0 | **VALUE32** - Bits 31-0 of the KLV value                     |
  *  +---+-------+--------------------------------------------------------------+
- *  | 3 |  31:0 | **BUFF_ADDF** - GGTT address of the `CT Buffer`_             |
+ *  | 3 |  31:0 | **VALUE64** - Bits 63-32 of the KLV value (**KLV_LEN** = 2)  |
  *  +---+-------+--------------------------------------------------------------+
  *
  *  +---+-------+--------------------------------------------------------------+
@@ -45,28 +43,25 @@
  *  |   +-------+--------------------------------------------------------------+
  *  |   | 30:28 | TYPE = GUC_HXG_TYPE_RESPONSE_SUCCESS_                        |
  *  |   +-------+--------------------------------------------------------------+
- *  |   |  27:0 | DATA0 = MBZ                                                  |
+ *  |   |  27:0 | DATA0 = **NUM** - 1 if KLV was parsed, 0 if not recognized   |
  *  +---+-------+--------------------------------------------------------------+
  */
-#define GUC_ACTION_HOST2GUC_REGISTER_CTB		0x4505
+#define GUC_ACTION_HOST2GUC_SELF_CFG			0x0508
 
-#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 3u)
-#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
-#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_MBZ		(0xfffff << 12)
-#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_TYPE	(0xf << 8)
-#define   GUC_CTB_TYPE_HOST2GUC				0u
-#define   GUC_CTB_TYPE_GUC2HOST				1u
-#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_SIZE	(0xff << 0)
-#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR	GUC_HXG_REQUEST_MSG_n_DATAn
-#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_3_BUFF_ADDR	GUC_HXG_REQUEST_MSG_n_DATAn
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 3u)
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY		(0xffff << 16)
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_LEN		(0xffff << 0)
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_2_VALUE32		GUC_HXG_REQUEST_MSG_n_DATAn
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_3_VALUE64		GUC_HXG_REQUEST_MSG_n_DATAn
 
-#define HOST2GUC_REGISTER_CTB_RESPONSE_MSG_LEN		GUC_HXG_RESPONSE_MSG_MIN_LEN
-#define HOST2GUC_REGISTER_CTB_RESPONSE_MSG_0_MBZ	GUC_HXG_RESPONSE_MSG_0_DATA0
+#define HOST2GUC_SELF_CFG_RESPONSE_MSG_LEN		GUC_HXG_RESPONSE_MSG_MIN_LEN
+#define HOST2GUC_SELF_CFG_RESPONSE_MSG_0_NUM		GUC_HXG_RESPONSE_MSG_0_DATA0
 
 /**
- * DOC: HOST2GUC_DEREGISTER_CTB
+ * DOC: HOST2GUC_CONTROL_CTB
  *
- * This message is used as part of the `CTB based communication`_ teardown.
+ * This H2G action allows Vf Host to enable or disable H2G and G2H `CT Buffer`_.
  *
  * This message must be sent as `MMIO HXG Message`_.
  *
@@ -79,15 +74,12 @@
  *  |   +-------+--------------------------------------------------------------+
  *  |   | 27:16 | DATA0 = MBZ                                                  |
  *  |   +-------+--------------------------------------------------------------+
- *  |   |  15:0 | ACTION = _`GUC_ACTION_HOST2GUC_DEREGISTER_CTB` = 0x4506      |
+ *  |   |  15:0 | ACTION = _`GUC_ACTION_HOST2GUC_CONTROL_CTB` = 0x4509         |
  *  +---+-------+--------------------------------------------------------------+
- *  | 1 | 31:12 | RESERVED = MBZ                                               |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  11:8 | **TYPE** - type of the `CT Buffer`_                          |
+ *  | 1 |  31:0 | **CONTROL** - control `CTB based communication`_             |
  *  |   |       |                                                              |
- *  |   |       | see `GUC_ACTION_HOST2GUC_REGISTER_CTB`_                      |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |   7:0 | RESERVED = MBZ                                               |
+ *  |   |       |   - _`GUC_CTB_CONTROL_DISABLE` = 0                           |
+ *  |   |       |   - _`GUC_CTB_CONTROL_ENABLE` = 1                            |
  *  +---+-------+--------------------------------------------------------------+
  *
  *  +---+-------+--------------------------------------------------------------+
@@ -100,16 +92,16 @@
  *  |   |  27:0 | DATA0 = MBZ                                                  |
  *  +---+-------+--------------------------------------------------------------+
  */
-#define GUC_ACTION_HOST2GUC_DEREGISTER_CTB		0x4506
+#define GUC_ACTION_HOST2GUC_CONTROL_CTB			0x4509
 
-#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 1u)
-#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_0_MBZ	GUC_HXG_REQUEST_MSG_0_DATA0
-#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_MBZ	(0xfffff << 12)
-#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_TYPE	(0xf << 8)
-#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_MBZ2	(0xff << 0)
+#define HOST2GUC_CONTROL_CTB_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 1u)
+#define HOST2GUC_CONTROL_CTB_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
+#define HOST2GUC_CONTROL_CTB_REQUEST_MSG_1_CONTROL	GUC_HXG_REQUEST_MSG_n_DATAn
+#define   GUC_CTB_CONTROL_DISABLE			0u
+#define   GUC_CTB_CONTROL_ENABLE			1u
 
-#define HOST2GUC_DEREGISTER_CTB_RESPONSE_MSG_LEN	GUC_HXG_RESPONSE_MSG_MIN_LEN
-#define HOST2GUC_DEREGISTER_CTB_RESPONSE_MSG_0_MBZ	GUC_HXG_RESPONSE_MSG_0_DATA0
+#define HOST2GUC_CONTROL_CTB_RESPONSE_MSG_LEN		GUC_HXG_RESPONSE_MSG_MIN_LEN
+#define HOST2GUC_CONTROL_CTB_RESPONSE_MSG_0_MBZ		GUC_HXG_RESPONSE_MSG_0_DATA0
 
 /* legacy definitions */
 
@@ -143,8 +135,12 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER = 0x4506,
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE = 0x4600,
 	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
-	INTEL_GUC_ACTION_RESET_CLIENT = 0x5507,
+	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
 	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
+	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
+	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
+	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
+	INTEL_GUC_ACTION_NOTIFY_EXCEPTION = 0x8005,
 	INTEL_GUC_ACTION_LIMIT
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
new file mode 100644
index 000000000000..f0814a57c191
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _ABI_GUC_KLVS_ABI_H
+#define _ABI_GUC_KLVS_ABI_H
+
+/**
+ * DOC: GuC KLV
+ *
+ *  +---+-------+--------------------------------------------------------------+
+ *  |   | Bits  | Description                                                  |
+ *  +===+=======+==============================================================+
+ *  | 0 | 31:16 | **KEY** - KLV key identifier                                 |
+ *  |   |       |   - `GuC Self Config KLVs`_                                  |
+ *  |   |       |                                                              |
+ *  |   +-------+--------------------------------------------------------------+
+ *  |   |  15:0 | **LEN** - length of VALUE (in 32bit dwords)                  |
+ *  +---+-------+--------------------------------------------------------------+
+ *  | 1 |  31:0 | **VALUE** - actual value of the KLV (format depends on KEY)  |
+ *  +---+-------+                                                              |
+ *  |...|       |                                                              |
+ *  +---+-------+                                                              |
+ *  | n |  31:0 |                                                              |
+ *  +---+-------+--------------------------------------------------------------+
+ */
+
+#define GUC_KLV_LEN_MIN				1u
+#define GUC_KLV_0_KEY				(0xffff << 16)
+#define GUC_KLV_0_LEN				(0xffff << 0)
+#define GUC_KLV_n_VALUE				(0xffffffff << 0)
+
+/**
+ * DOC: GuC Self Config KLVs
+ *
+ * `GuC KLV`_ keys available for use with HOST2GUC_SELF_CFG_.
+ *
+ * _`GUC_KLV_SELF_CFG_H2G_CTB_ADDR` : 0x0902
+ *      Refers to 64 bit Global Gfx address of H2G `CT Buffer`_.
+ *      Should be above WOPCM address but below APIC base address for native mode.
+ *
+ * _`GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR` : 0x0903
+ *      Refers to 64 bit Global Gfx address of H2G `CTB Descriptor`_.
+ *      Should be above WOPCM address but below APIC base address for native mode.
+ *
+ * _`GUC_KLV_SELF_CFG_H2G_CTB_SIZE` : 0x0904
+ *      Refers to size of H2G `CT Buffer`_ in bytes.
+ *      Should be a multiple of 4K.
+ *
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_ADDR` : 0x0905
+ *      Refers to 64 bit Global Gfx address of G2H `CT Buffer`_.
+ *      Should be above WOPCM address but below APIC base address for native mode.
+ *
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR` : 0x0906
+ *      Refers to 64 bit Global Gfx address of G2H `CTB Descriptor`_.
+ *      Should be above WOPCM address but below APIC base address for native mode.
+ *
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_SIZE` : 0x0907
+ *      Refers to size of G2H `CT Buffer`_ in bytes.
+ *      Should be a multiple of 4K.
+ */
+
+#define GUC_KLV_SELF_CFG_H2G_CTB_ADDR_KEY		0x0902
+#define GUC_KLV_SELF_CFG_H2G_CTB_ADDR_LEN		2u
+
+#define GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR_KEY	0x0903
+#define GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR_LEN	2u
+
+#define GUC_KLV_SELF_CFG_H2G_CTB_SIZE_KEY		0x0904
+#define GUC_KLV_SELF_CFG_H2G_CTB_SIZE_LEN		1u
+
+#define GUC_KLV_SELF_CFG_G2H_CTB_ADDR_KEY		0x0905
+#define GUC_KLV_SELF_CFG_G2H_CTB_ADDR_LEN		2u
+
+#define GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR_KEY	0x0906
+#define GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR_LEN	2u
+
+#define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_KEY		0x0907
+#define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_LEN		1u
+
+#endif /* _ABI_GUC_KLVS_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 6e228343e8cb..cbec51f4dec3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -182,6 +182,9 @@ void intel_guc_init_early(struct intel_guc *guc)
 		guc->send_regs.count = GUC_MAX_MMIO_MSG_LEN;
 		BUILD_BUG_ON(GUC_MAX_MMIO_MSG_LEN > SOFT_SCRATCH_COUNT);
 	}
+
+	intel_guc_enable_msg(guc, INTEL_GUC_RECV_MSG_EXCEPTION |
+				  INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED);
 }
 
 void intel_guc_init_late(struct intel_guc *guc)
@@ -222,32 +225,48 @@ static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
 	u32 flags;
 
 	#if (((CRASH_BUFFER_SIZE) % SZ_1M) == 0)
-	#define UNIT SZ_1M
-	#define FLAG GUC_LOG_ALLOC_IN_MEGABYTE
+	#define LOG_UNIT SZ_1M
+	#define LOG_FLAG GUC_LOG_LOG_ALLOC_UNITS
 	#else
-	#define UNIT SZ_4K
-	#define FLAG 0
+	#define LOG_UNIT SZ_4K
+	#define LOG_FLAG 0
+	#endif
+
+	#if (((CAPTURE_BUFFER_SIZE) % SZ_1M) == 0)
+	#define CAPTURE_UNIT SZ_1M
+	#define CAPTURE_FLAG GUC_LOG_CAPTURE_ALLOC_UNITS
+	#else
+	#define CAPTURE_UNIT SZ_4K
+	#define CAPTURE_FLAG 0
 	#endif
 
 	BUILD_BUG_ON(!CRASH_BUFFER_SIZE);
-	BUILD_BUG_ON(!IS_ALIGNED(CRASH_BUFFER_SIZE, UNIT));
+	BUILD_BUG_ON(!IS_ALIGNED(CRASH_BUFFER_SIZE, LOG_UNIT));
 	BUILD_BUG_ON(!DEBUG_BUFFER_SIZE);
-	BUILD_BUG_ON(!IS_ALIGNED(DEBUG_BUFFER_SIZE, UNIT));
+	BUILD_BUG_ON(!IS_ALIGNED(DEBUG_BUFFER_SIZE, LOG_UNIT));
+	BUILD_BUG_ON(!CAPTURE_BUFFER_SIZE);
+	BUILD_BUG_ON(!IS_ALIGNED(CAPTURE_BUFFER_SIZE, CAPTURE_UNIT));
 
-	BUILD_BUG_ON((CRASH_BUFFER_SIZE / UNIT - 1) >
+	BUILD_BUG_ON((CRASH_BUFFER_SIZE / LOG_UNIT - 1) >
 			(GUC_LOG_CRASH_MASK >> GUC_LOG_CRASH_SHIFT));
-	BUILD_BUG_ON((DEBUG_BUFFER_SIZE / UNIT - 1) >
+	BUILD_BUG_ON((DEBUG_BUFFER_SIZE / LOG_UNIT - 1) >
 			(GUC_LOG_DEBUG_MASK >> GUC_LOG_DEBUG_SHIFT));
+	BUILD_BUG_ON((CAPTURE_BUFFER_SIZE / CAPTURE_UNIT - 1) >
+			(GUC_LOG_CAPTURE_MASK >> GUC_LOG_CAPTURE_SHIFT));
 
 	flags = GUC_LOG_VALID |
 		GUC_LOG_NOTIFY_ON_HALF_FULL |
-		FLAG |
-		((CRASH_BUFFER_SIZE / UNIT - 1) << GUC_LOG_CRASH_SHIFT) |
-		((DEBUG_BUFFER_SIZE / UNIT - 1) << GUC_LOG_DEBUG_SHIFT) |
+		CAPTURE_FLAG |
+		LOG_FLAG |
+		((CRASH_BUFFER_SIZE / LOG_UNIT - 1) << GUC_LOG_CRASH_SHIFT) |
+		((DEBUG_BUFFER_SIZE / LOG_UNIT - 1) << GUC_LOG_DEBUG_SHIFT) |
+		((CAPTURE_BUFFER_SIZE / CAPTURE_UNIT - 1) << GUC_LOG_CAPTURE_SHIFT) |
 		(offset << GUC_LOG_BUF_ADDR_SHIFT);
 
-	#undef UNIT
-	#undef FLAG
+	#undef LOG_UNIT
+	#undef LOG_FLAG
+	#undef CAPTURE_UNIT
+	#undef CAPTURE_FLAG
 
 	return flags;
 }
@@ -260,6 +279,26 @@ static u32 guc_ctl_ads_flags(struct intel_guc *guc)
 	return flags;
 }
 
+static u32 guc_ctl_wa_flags(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	u32 flags = 0;
+
+	/* Wa_22012773006:gen11,gen12 < XeHP */
+	if (GRAPHICS_VER(gt->i915) >= 11 &&
+	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
+		flags |= GUC_WA_POLLCS;
+
+	return flags;
+}
+
+static u32 guc_ctl_devid(struct intel_guc *guc)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+
+	return (INTEL_DEVID(i915) << 16) | INTEL_REVID(i915);
+}
+
 /*
  * Initialise the GuC parameter block before starting the firmware
  * transfer. These parameters are read by the firmware on startup
@@ -276,6 +315,8 @@ static void guc_init_params(struct intel_guc *guc)
 	params[GUC_CTL_FEATURE] = guc_ctl_feature_flags(guc);
 	params[GUC_CTL_DEBUG] = guc_ctl_debug_flags(guc);
 	params[GUC_CTL_ADS] = guc_ctl_ads_flags(guc);
+	params[GUC_CTL_WA] = guc_ctl_wa_flags(guc);
+	params[GUC_CTL_DEVID] = guc_ctl_devid(guc);
 
 	for (i = 0; i < GUC_CTL_MAX_DWORDS; i++)
 		DRM_DEBUG_DRIVER("param[%2d] = %#x\n", i, params[i]);
@@ -513,9 +554,10 @@ int intel_guc_to_host_process_recv_msg(struct intel_guc *guc,
 	/* Make sure to handle only enabled messages */
 	msg = payload[0] & guc->msg_enabled_mask;
 
-	if (msg & (INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER |
-		   INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED))
-		intel_guc_log_handle_flush_event(&guc->log);
+	if (msg & INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED)
+		drm_err(&guc_to_gt(guc)->i915->drm, "Received early GuC crash dump notification!\n");
+	if (msg & INTEL_GUC_RECV_MSG_EXCEPTION)
+		drm_err(&guc_to_gt(guc)->i915->drm, "Received early GuC exception notification!\n");
 
 	return 0;
 }
@@ -549,7 +591,7 @@ int intel_guc_suspend(struct intel_guc *guc)
 {
 	int ret;
 	u32 action[] = {
-		INTEL_GUC_ACTION_RESET_CLIENT,
+		INTEL_GUC_ACTION_CLIENT_SOFT_RESET,
 	};
 
 	if (!intel_guc_is_ready(guc))
@@ -713,6 +755,56 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 	return 0;
 }
 
+static int __guc_action_self_cfg(struct intel_guc *guc, u16 key, u16 len, u64 value)
+{
+	u32 request[HOST2GUC_SELF_CFG_REQUEST_MSG_LEN] = {
+		FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, GUC_HXG_ORIGIN_HOST) |
+		FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
+		FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, GUC_ACTION_HOST2GUC_SELF_CFG),
+		FIELD_PREP(HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY, key) |
+		FIELD_PREP(HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_LEN, len),
+		FIELD_PREP(HOST2GUC_SELF_CFG_REQUEST_MSG_2_VALUE32, lower_32_bits(value)),
+		FIELD_PREP(HOST2GUC_SELF_CFG_REQUEST_MSG_3_VALUE64, upper_32_bits(value)),
+	};
+	int ret;
+
+	GEM_BUG_ON(len > 2);
+	GEM_BUG_ON(len == 1 && upper_32_bits(value));
+
+	/* Self config must go over MMIO */
+	ret = intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
+
+	if (unlikely(ret < 0))
+		return ret;
+	if (unlikely(ret > 1))
+		return -EPROTO;
+	if (unlikely(!ret))
+		return -ENOKEY;
+
+	return 0;
+}
+
+static int __guc_self_cfg(struct intel_guc *guc, u16 key, u16 len, u64 value)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	int err = __guc_action_self_cfg(guc, key, len, value);
+
+	if (unlikely(err))
+		i915_probe_error(i915, "Unsuccessful self-config (%pe) key %#hx value %#llx\n",
+				 ERR_PTR(err), key, value);
+	return err;
+}
+
+int intel_guc_self_cfg32(struct intel_guc *guc, u16 key, u32 value)
+{
+	return __guc_self_cfg(guc, key, 1, value);
+}
+
+int intel_guc_self_cfg64(struct intel_guc *guc, u16 key, u64 value)
+{
+	return __guc_self_cfg(guc, key, 2, value);
+}
+
 /**
  * intel_guc_load_status - dump information about GuC load status
  * @guc: the GuC
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index f9240d4baa69..9d26a86fe557 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -328,6 +328,8 @@ int intel_guc_resume(struct intel_guc *guc);
 struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size);
 int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 				   struct i915_vma **out_vma, void **out_vaddr);
+int intel_guc_self_cfg32(struct intel_guc *guc, u16 key, u32 value);
+int intel_guc_self_cfg64(struct intel_guc *guc, u16 key, u64 value);
 
 static inline bool intel_guc_is_supported(struct intel_guc *guc)
 {
@@ -404,6 +406,8 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
 					const u32 *msg, u32 len);
 int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 					 const u32 *msg, u32 len);
+int intel_guc_error_capture_process_msg(struct intel_guc *guc,
+					const u32 *msg, u32 len);
 
 void intel_guc_find_hung_context(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 1a1edae67e4e..aa767540ca2a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -40,6 +40,10 @@
  *      +---------------------------------------+
  *      | padding                               |
  *      +---------------------------------------+ <== 4K aligned
+ *      | capture lists                         |
+ *      +---------------------------------------+
+ *      | padding                               |
+ *      +---------------------------------------+ <== 4K aligned
  *      | private data                          |
  *      +---------------------------------------+
  *      | padding                               |
@@ -65,6 +69,12 @@ static u32 guc_ads_golden_ctxt_size(struct intel_guc *guc)
 	return PAGE_ALIGN(guc->ads_golden_ctxt_size);
 }
 
+static u32 guc_ads_capture_size(struct intel_guc *guc)
+{
+	/* FIXME: Allocate a proper capture list */
+	return PAGE_ALIGN(PAGE_SIZE);
+}
+
 static u32 guc_ads_private_data_size(struct intel_guc *guc)
 {
 	return PAGE_ALIGN(guc->fw.private_data_size);
@@ -85,7 +95,7 @@ static u32 guc_ads_golden_ctxt_offset(struct intel_guc *guc)
 	return PAGE_ALIGN(offset);
 }
 
-static u32 guc_ads_private_data_offset(struct intel_guc *guc)
+static u32 guc_ads_capture_offset(struct intel_guc *guc)
 {
 	u32 offset;
 
@@ -95,6 +105,16 @@ static u32 guc_ads_private_data_offset(struct intel_guc *guc)
 	return PAGE_ALIGN(offset);
 }
 
+static u32 guc_ads_private_data_offset(struct intel_guc *guc)
+{
+	u32 offset;
+
+	offset = guc_ads_capture_offset(guc) +
+		 guc_ads_capture_size(guc);
+
+	return PAGE_ALIGN(offset);
+}
+
 static u32 guc_ads_blob_size(struct intel_guc *guc)
 {
 	return guc_ads_private_data_offset(guc) +
@@ -499,6 +519,26 @@ static void guc_init_golden_context(struct intel_guc *guc)
 	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
 }
 
+static void guc_capture_list_init(struct intel_guc *guc, struct __guc_ads_blob *blob)
+{
+	int i, j;
+	u32 addr_ggtt, offset;
+
+	offset = guc_ads_capture_offset(guc);
+	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+
+	/* FIXME: Populate a proper capture list */
+
+	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; i++) {
+		for (j = 0; j < GUC_MAX_ENGINE_CLASSES; j++) {
+			blob->ads.capture_instance[i][j] = addr_ggtt;
+			blob->ads.capture_class[i][j] = addr_ggtt;
+		}
+
+		blob->ads.capture_global[i] = addr_ggtt;
+	}
+}
+
 static void __guc_ads_init(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -532,6 +572,9 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
+	/* Capture list for hang debug */
+	guc_capture_list_init(guc, blob);
+
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
 	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index aa6dd6415202..de89d40abd38 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -112,18 +112,6 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 	init_waitqueue_head(&ct->wq);
 }
 
-static inline const char *guc_ct_buffer_type_to_str(u32 type)
-{
-	switch (type) {
-	case GUC_CTB_TYPE_HOST2GUC:
-		return "SEND";
-	case GUC_CTB_TYPE_GUC2HOST:
-		return "RECV";
-	default:
-		return "<invalid>";
-	}
-}
-
 static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
 {
 	memset(desc, 0, sizeof(*desc));
@@ -156,71 +144,65 @@ static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
 	guc_ct_buffer_reset(ctb);
 }
 
-static int guc_action_register_ct_buffer(struct intel_guc *guc, u32 type,
-					 u32 desc_addr, u32 buff_addr, u32 size)
+static int guc_action_control_ctb(struct intel_guc *guc, u32 control)
 {
-	u32 request[HOST2GUC_REGISTER_CTB_REQUEST_MSG_LEN] = {
+	u32 request[HOST2GUC_CONTROL_CTB_REQUEST_MSG_LEN] = {
 		FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, GUC_HXG_ORIGIN_HOST) |
 		FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
-		FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, GUC_ACTION_HOST2GUC_REGISTER_CTB),
-		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_SIZE, size / SZ_4K - 1) |
-		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_TYPE, type),
-		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR, desc_addr),
-		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_3_BUFF_ADDR, buff_addr),
+		FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, GUC_ACTION_HOST2GUC_CONTROL_CTB),
+		FIELD_PREP(HOST2GUC_CONTROL_CTB_REQUEST_MSG_1_CONTROL, control),
 	};
 	int ret;
 
-	GEM_BUG_ON(type != GUC_CTB_TYPE_HOST2GUC && type != GUC_CTB_TYPE_GUC2HOST);
-	GEM_BUG_ON(size % SZ_4K);
+	GEM_BUG_ON(control != GUC_CTB_CONTROL_DISABLE && control != GUC_CTB_CONTROL_ENABLE);
 
-	/* CT registration must go over MMIO */
+	/* CT control must go over MMIO */
 	ret = intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
 
 	return ret > 0 ? -EPROTO : ret;
 }
 
-static int ct_register_buffer(struct intel_guc_ct *ct, u32 type,
-			      u32 desc_addr, u32 buff_addr, u32 size)
+static int ct_control_enable(struct intel_guc_ct *ct, bool enable)
 {
 	int err;
 
-	err = i915_inject_probe_error(guc_to_gt(ct_to_guc(ct))->i915, -ENXIO);
+	err = guc_action_control_ctb(ct_to_guc(ct), enable ?
+				     GUC_CTB_CONTROL_ENABLE : GUC_CTB_CONTROL_DISABLE);
 	if (unlikely(err))
-		return err;
+		CT_PROBE_ERROR(ct, "Failed to control/%s CTB (%pe)\n",
+			       enabledisable(enable), ERR_PTR(err));
 
-	err = guc_action_register_ct_buffer(ct_to_guc(ct), type,
-					    desc_addr, buff_addr, size);
-	if (unlikely(err))
-		CT_ERROR(ct, "Failed to register %s buffer (%pe)\n",
-			 guc_ct_buffer_type_to_str(type), ERR_PTR(err));
 	return err;
 }
 
-static int guc_action_deregister_ct_buffer(struct intel_guc *guc, u32 type)
+static int ct_register_buffer(struct intel_guc_ct *ct, bool send,
+			      u32 desc_addr, u32 buff_addr, u32 size)
 {
-	u32 request[HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_LEN] = {
-		FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, GUC_HXG_ORIGIN_HOST) |
-		FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
-		FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, GUC_ACTION_HOST2GUC_DEREGISTER_CTB),
-		FIELD_PREP(HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_TYPE, type),
-	};
-	int ret;
-
-	GEM_BUG_ON(type != GUC_CTB_TYPE_HOST2GUC && type != GUC_CTB_TYPE_GUC2HOST);
-
-	/* CT deregistration must go over MMIO */
-	ret = intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
+	int err;
 
-	return ret > 0 ? -EPROTO : ret;
-}
+	err = intel_guc_self_cfg64(ct_to_guc(ct), send ?
+				   GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR_KEY :
+				   GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR_KEY,
+				   desc_addr);
+	if (unlikely(err))
+		goto failed;
 
-static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
-{
-	int err = guc_action_deregister_ct_buffer(ct_to_guc(ct), type);
+	err = intel_guc_self_cfg64(ct_to_guc(ct), send ?
+				   GUC_KLV_SELF_CFG_H2G_CTB_ADDR_KEY :
+				   GUC_KLV_SELF_CFG_G2H_CTB_ADDR_KEY,
+				   buff_addr);
+	if (unlikely(err))
+		goto failed;
 
+	err = intel_guc_self_cfg32(ct_to_guc(ct), send ?
+				   GUC_KLV_SELF_CFG_H2G_CTB_SIZE_KEY :
+				   GUC_KLV_SELF_CFG_G2H_CTB_SIZE_KEY,
+				   size);
 	if (unlikely(err))
-		CT_ERROR(ct, "Failed to deregister %s buffer (%pe)\n",
-			 guc_ct_buffer_type_to_str(type), ERR_PTR(err));
+failed:
+		CT_PROBE_ERROR(ct, "Failed to register %s buffer (%pe)\n",
+			       send ? "SEND" : "RECV", ERR_PTR(err));
+
 	return err;
 }
 
@@ -308,7 +290,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
 int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
-	u32 base, desc, cmds;
+	u32 base, desc, cmds, size;
 	void *blob;
 	int err;
 
@@ -333,27 +315,27 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	 */
 	desc = base + ptrdiff(ct->ctbs.recv.desc, blob);
 	cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
-	err = ct_register_buffer(ct, GUC_CTB_TYPE_GUC2HOST,
-				 desc, cmds, ct->ctbs.recv.size * 4);
-
+	size = ct->ctbs.recv.size * 4;
+	err = ct_register_buffer(ct, false, desc, cmds, size);
 	if (unlikely(err))
 		goto err_out;
 
 	desc = base + ptrdiff(ct->ctbs.send.desc, blob);
 	cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
-	err = ct_register_buffer(ct, GUC_CTB_TYPE_HOST2GUC,
-				 desc, cmds, ct->ctbs.send.size * 4);
+	size = ct->ctbs.send.size * 4;
+	err = ct_register_buffer(ct, true, desc, cmds, size);
+	if (unlikely(err))
+		goto err_out;
 
+	err = ct_control_enable(ct, true);
 	if (unlikely(err))
-		goto err_deregister;
+		goto err_out;
 
 	ct->enabled = true;
 	ct->stall_time = KTIME_MAX;
 
 	return 0;
 
-err_deregister:
-	ct_deregister_buffer(ct, GUC_CTB_TYPE_GUC2HOST);
 err_out:
 	CT_PROBE_ERROR(ct, "Failed to enable CTB (%pe)\n", ERR_PTR(err));
 	return err;
@@ -372,8 +354,7 @@ void intel_guc_ct_disable(struct intel_guc_ct *ct)
 	ct->enabled = false;
 
 	if (intel_guc_is_fw_running(guc)) {
-		ct_deregister_buffer(ct, GUC_CTB_TYPE_HOST2GUC);
-		ct_deregister_buffer(ct, GUC_CTB_TYPE_GUC2HOST);
+		ct_control_enable(ct, false);
 	}
 }
 
@@ -662,6 +643,7 @@ static int ct_send(struct intel_guc_ct *ct,
 	struct ct_request request;
 	unsigned long flags;
 	unsigned int sleep_period_ms = 1;
+	bool send_again;
 	u32 fence;
 	int err;
 
@@ -671,6 +653,9 @@ static int ct_send(struct intel_guc_ct *ct,
 	GEM_BUG_ON(!response_buf && response_buf_size);
 	might_sleep();
 
+resend:
+	send_again = false;
+
 	/*
 	 * We use a lazy spin wait loop here as we believe that if the CT
 	 * buffers are sized correctly the flow control condition should be
@@ -725,6 +710,13 @@ static int ct_send(struct intel_guc_ct *ct,
 		goto unlink;
 	}
 
+	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, *status) == GUC_HXG_TYPE_NO_RESPONSE_RETRY) {
+		CT_DEBUG(ct, "retrying request %#x (%u)\n", *action,
+			 FIELD_GET(GUC_HXG_RETRY_MSG_0_REASON, *status));
+		send_again = true;
+		goto unlink;
+	}
+
 	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, *status) != GUC_HXG_TYPE_RESPONSE_SUCCESS) {
 		err = -EIO;
 		goto unlink;
@@ -747,6 +739,9 @@ static int ct_send(struct intel_guc_ct *ct,
 	list_del(&request.link);
 	spin_unlock_irqrestore(&ct->requests.lock, flags);
 
+	if (unlikely(send_again))
+		goto resend;
+
 	return err;
 }
 
@@ -918,6 +913,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 	GEM_BUG_ON(len < GUC_HXG_MSG_MIN_LEN);
 	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, hxg[0]) != GUC_HXG_ORIGIN_GUC);
 	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) != GUC_HXG_TYPE_RESPONSE_SUCCESS &&
+		   FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) != GUC_HXG_TYPE_NO_RESPONSE_RETRY &&
 		   FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) != GUC_HXG_TYPE_RESPONSE_FAILURE);
 
 	CT_DEBUG(ct, "response fence %u status %#x\n", fence, hxg[0]);
@@ -990,9 +986,27 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 	case INTEL_GUC_ACTION_CONTEXT_RESET_NOTIFICATION:
 		ret = intel_guc_context_reset_process_msg(guc, payload, len);
 		break;
+	case INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION:
+		ret = intel_guc_error_capture_process_msg(guc, payload, len);
+		if (unlikely(ret))
+			CT_ERROR(ct, "error capture notification failed %x %*ph\n",
+				 action, 4 * len, payload);
+		break;
 	case INTEL_GUC_ACTION_ENGINE_FAILURE_NOTIFICATION:
 		ret = intel_guc_engine_failure_process_msg(guc, payload, len);
 		break;
+	case INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE:
+		intel_guc_log_handle_flush_event(&guc->log);
+		ret = 0;
+		break;
+	case INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED:
+		CT_ERROR(ct, "Received GuC crash dump notification!\n");
+		ret = 0;
+		break;
+	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
+		CT_ERROR(ct, "Received GuC exception notification!\n");
+		ret = 0;
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
@@ -1098,6 +1112,7 @@ static int ct_handle_hxg(struct intel_guc_ct *ct, struct ct_incoming_msg *msg)
 		break;
 	case GUC_HXG_TYPE_RESPONSE_SUCCESS:
 	case GUC_HXG_TYPE_RESPONSE_FAILURE:
+	case GUC_HXG_TYPE_NO_RESPONSE_RETRY:
 		err = ct_handle_response(ct, msg);
 		break;
 	default:
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 7072e30e99f4..6a4612a852e2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -16,6 +16,7 @@
 #include "abi/guc_errors_abi.h"
 #include "abi/guc_communication_mmio_abi.h"
 #include "abi/guc_communication_ctb_abi.h"
+#include "abi/guc_klvs_abi.h"
 #include "abi/guc_messages_abi.h"
 
 /* Payload length only i.e. don't include G2H header length */
@@ -84,19 +85,24 @@
 #define GUC_STAGE_DESC_ATTR_TERMINATED	BIT(7)
 
 #define GUC_CTL_LOG_PARAMS		0
-#define   GUC_LOG_VALID			(1 << 0)
-#define   GUC_LOG_NOTIFY_ON_HALF_FULL	(1 << 1)
-#define   GUC_LOG_ALLOC_IN_MEGABYTE	(1 << 3)
+#define   GUC_LOG_VALID			BIT(0)
+#define   GUC_LOG_NOTIFY_ON_HALF_FULL	BIT(1)
+#define   GUC_LOG_CAPTURE_ALLOC_UNITS	BIT(2)
+#define   GUC_LOG_LOG_ALLOC_UNITS	BIT(3)
 #define   GUC_LOG_CRASH_SHIFT		4
 #define   GUC_LOG_CRASH_MASK		(0x3 << GUC_LOG_CRASH_SHIFT)
 #define   GUC_LOG_DEBUG_SHIFT		6
 #define   GUC_LOG_DEBUG_MASK	        (0xF << GUC_LOG_DEBUG_SHIFT)
+#define   GUC_LOG_CAPTURE_SHIFT		10
+#define   GUC_LOG_CAPTURE_MASK	        (0x3 << GUC_LOG_CAPTURE_SHIFT)
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
 #define GUC_CTL_WA			1
+#define   GUC_WA_POLLCS                 BIT(18)
+
 #define GUC_CTL_FEATURE			2
-#define   GUC_CTL_DISABLE_SCHEDULER	(1 << 14)
 #define   GUC_CTL_ENABLE_SLPC		BIT(2)
+#define   GUC_CTL_DISABLE_SCHEDULER	BIT(14)
 
 #define GUC_CTL_DEBUG			3
 #define   GUC_LOG_VERBOSITY_SHIFT	0
@@ -116,6 +122,8 @@
 #define   GUC_ADS_ADDR_SHIFT		1
 #define   GUC_ADS_ADDR_MASK		(0xFFFFF << GUC_ADS_ADDR_SHIFT)
 
+#define GUC_CTL_DEVID			5
+
 #define GUC_CTL_MAX_DWORDS		(SOFT_SCRATCH_COUNT - 2) /* [1..14] */
 
 /* Generic GT SysInfo data types */
@@ -263,7 +271,10 @@ struct guc_mmio_reg {
 	u32 offset;
 	u32 value;
 	u32 flags;
-#define GUC_REGSET_MASKED		(1 << 0)
+	u32 mask;
+#define GUC_REGSET_MASKED		BIT(0)
+#define GUC_REGSET_MASKED_WITH_VALUE	BIT(2)
+#define GUC_REGSET_RESTORE_ONLY		BIT(3)
 } __packed;
 
 /* GuC register sets */
@@ -280,6 +291,12 @@ struct guc_gt_system_info {
 	u32 generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_MAX];
 } __packed;
 
+enum {
+	GUC_CAPTURE_LIST_INDEX_PF = 0,
+	GUC_CAPTURE_LIST_INDEX_VF = 1,
+	GUC_CAPTURE_LIST_INDEX_MAX = 2,
+};
+
 /* GuC Additional Data Struct */
 struct guc_ads {
 	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
@@ -291,7 +308,11 @@ struct guc_ads {
 	u32 golden_context_lrca[GUC_MAX_ENGINE_CLASSES];
 	u32 eng_state_size[GUC_MAX_ENGINE_CLASSES];
 	u32 private_data;
-	u32 reserved[15];
+	u32 reserved2;
+	u32 capture_instance[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u32 capture_class[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u32 capture_global[GUC_CAPTURE_LIST_INDEX_MAX];
+	u32 reserved[14];
 } __packed;
 
 /* Engine usage stats */
@@ -312,6 +333,7 @@ struct guc_engine_usage {
 enum guc_log_buffer_type {
 	GUC_DEBUG_LOG_BUFFER,
 	GUC_CRASH_DUMP_LOG_BUFFER,
+	GUC_CAPTURE_LOG_BUFFER,
 	GUC_MAX_LOG_BUFFER
 };
 
@@ -342,6 +364,7 @@ struct guc_log_buffer_state {
 	u32 write_ptr;
 	u32 size;
 	u32 sampled_write_ptr;
+	u32 wrap_offset;
 	union {
 		struct {
 			u32 flush_to_file:1;
@@ -382,7 +405,7 @@ struct guc_shared_ctx_data {
 /* This action will be programmed in C1BC - SOFT_SCRATCH_15_REG */
 enum intel_guc_recv_message {
 	INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED = BIT(1),
-	INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER = BIT(3)
+	INTEL_GUC_RECV_MSG_EXCEPTION = BIT(30),
 };
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index ac0931f0374b..be35f0570396 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -55,20 +55,6 @@ static int guc_action_control_log(struct intel_guc *guc, bool enable,
 	return intel_guc_send(guc, action, ARRAY_SIZE(action));
 }
 
-static void guc_log_enable_flush_events(struct intel_guc_log *log)
-{
-	intel_guc_enable_msg(log_to_guc(log),
-			     INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER |
-			     INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED);
-}
-
-static void guc_log_disable_flush_events(struct intel_guc_log *log)
-{
-	intel_guc_disable_msg(log_to_guc(log),
-			      INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER |
-			      INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED);
-}
-
 /*
  * Sub buffer switch callback. Called whenever relay has to switch to a new
  * sub buffer, relay stays on the same sub buffer if 0 is returned.
@@ -201,6 +187,8 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 		return DEBUG_BUFFER_SIZE;
 	case GUC_CRASH_DUMP_LOG_BUFFER:
 		return CRASH_BUFFER_SIZE;
+	case GUC_CAPTURE_LOG_BUFFER:
+		return CAPTURE_BUFFER_SIZE;
 	default:
 		MISSING_CASE(type);
 	}
@@ -463,14 +451,19 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	 *  +-------------------------------+ 32B
 	 *  |      Debug state header       |
 	 *  +-------------------------------+ 64B
+	 *  |     Capture state header      |
+	 *  +-------------------------------+ 96B
 	 *  |                               |
 	 *  +===============================+ PAGE_SIZE (4KB)
 	 *  |        Crash Dump logs        |
 	 *  +===============================+ + CRASH_SIZE
 	 *  |          Debug logs           |
 	 *  +===============================+ + DEBUG_SIZE
+	 *  |         Capture logs          |
+	 *  +===============================+ + CAPTURE_SIZE
 	 */
-	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE;
+	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE +
+		       CAPTURE_BUFFER_SIZE;
 
 	vma = intel_guc_allocate_vma(guc, guc_log_size);
 	if (IS_ERR(vma)) {
@@ -592,8 +585,6 @@ int intel_guc_log_relay_start(struct intel_guc_log *log)
 	if (log->relay.started)
 		return -EEXIST;
 
-	guc_log_enable_flush_events(log);
-
 	/*
 	 * When GuC is logging without us relaying to userspace, we're ignoring
 	 * the flush notification. This means that we need to unconditionally
@@ -640,7 +631,6 @@ static void guc_log_relay_stop(struct intel_guc_log *log)
 	if (!log->relay.started)
 		return;
 
-	guc_log_disable_flush_events(log);
 	intel_synchronize_irq(i915);
 
 	flush_work(&log->relay.flush_work);
@@ -661,7 +651,8 @@ void intel_guc_log_relay_close(struct intel_guc_log *log)
 
 void intel_guc_log_handle_flush_event(struct intel_guc_log *log)
 {
-	queue_work(system_highpri_wq, &log->relay.flush_work);
+	if (log->relay.started)
+		queue_work(system_highpri_wq, &log->relay.flush_work);
 }
 
 static const char *
@@ -672,6 +663,8 @@ stringify_guc_log_type(enum guc_log_buffer_type type)
 		return "DEBUG";
 	case GUC_CRASH_DUMP_LOG_BUFFER:
 		return "CRASH";
+	case GUC_CAPTURE_LOG_BUFFER:
+		return "CAPTURE";
 	default:
 		MISSING_CASE(type);
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index fe6ab7550a14..d7e1b6471fed 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -18,12 +18,15 @@ struct intel_guc;
 #if defined(CONFIG_DRM_I915_DEBUG_GUC)
 #define CRASH_BUFFER_SIZE	SZ_2M
 #define DEBUG_BUFFER_SIZE	SZ_16M
+#define CAPTURE_BUFFER_SIZE	SZ_4M
 #elif defined(CONFIG_DRM_I915_DEBUG_GEM)
 #define CRASH_BUFFER_SIZE	SZ_1M
 #define DEBUG_BUFFER_SIZE	SZ_2M
+#define CAPTURE_BUFFER_SIZE	SZ_1M
 #else
 #define CRASH_BUFFER_SIZE	SZ_8K
 #define DEBUG_BUFFER_SIZE	SZ_64K
+#define CAPTURE_BUFFER_SIZE	SZ_16K
 #endif
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e7517206af82..3a0c38f6df93 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4017,6 +4017,24 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
 	return 0;
 }
 
+int intel_guc_error_capture_process_msg(struct intel_guc *guc,
+					const u32 *msg, u32 len)
+{
+	int status;
+
+	if (unlikely(len != 1)) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
+		return -EPROTO;
+	}
+
+	status = msg[0];
+	drm_info(&guc_to_gt(guc)->i915->drm, "Got error capture: status = %d", status);
+
+	/* FIXME: Do something with the capture */
+
+	return 0;
+}
+
 static struct intel_engine_cs *
 guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index a5af05bde6f2..12917421b864 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -49,21 +49,21 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * firmware as TGL.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
-	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 62, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  62, 0, 0)) \
-	fw_def(DG1,          0, guc_def(dg1,  62, 0, 0)) \
-	fw_def(ROCKETLAKE,   0, guc_def(tgl,  62, 0, 0)) \
-	fw_def(TIGERLAKE,    0, guc_def(tgl,  62, 0, 0)) \
-	fw_def(JASPERLAKE,   0, guc_def(ehl,  62, 0, 0)) \
-	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  62, 0, 0)) \
-	fw_def(ICELAKE,      0, guc_def(icl,  62, 0, 0)) \
-	fw_def(COMETLAKE,    5, guc_def(cml,  62, 0, 0)) \
-	fw_def(COMETLAKE,    0, guc_def(kbl,  62, 0, 0)) \
-	fw_def(COFFEELAKE,   0, guc_def(kbl,  62, 0, 0)) \
-	fw_def(GEMINILAKE,   0, guc_def(glk,  62, 0, 0)) \
-	fw_def(KABYLAKE,     0, guc_def(kbl,  62, 0, 0)) \
-	fw_def(BROXTON,      0, guc_def(bxt,  62, 0, 0)) \
-	fw_def(SKYLAKE,      0, guc_def(skl,  62, 0, 0))
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(DG1,          0, guc_def(dg1,  69, 0, 3)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  69, 0, 3)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  69, 0, 3)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  69, 0, 3)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  69, 0, 3)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  69, 0, 3))
 
 #define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
 	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
-- 
2.25.1

