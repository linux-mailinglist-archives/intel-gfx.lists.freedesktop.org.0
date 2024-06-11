Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8911903ED9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE66110E682;
	Tue, 11 Jun 2024 14:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXpDDwjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E55A10E665;
 Tue, 11 Jun 2024 14:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116250; x=1749652250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ynoKQEKPQsC9r5yW5Uqt15W6HIXUrA7LY0M/Lvmbavs=;
 b=NXpDDwjKwgLb91UgJH821bbIVMqqy4d0KN23t7oBE/hwHYaqciy1J34n
 8xkHGtb2noowbkSMAFhZ1yo2+p5XgCftsbWZTvaG9HEsbp7MW9t81eai7
 i5wQVPjhcNuCJtE5jpUyXq7nSqRrIgCovBeJLQ+mOQ8ShivWMnQybk8PL
 D7s+NvDoDb15Ukhzx7iOdBZiGTQ99QO3S/lLjPZlDxHjo2X9lK9HQoSvC
 uPhNOTlrAeZvqiryLgnYpJbrj6Fb8yO38LNZY9190XN1LNLVJtCi1524Q
 OzrMPBtncSu4EIudVd8k55lGbseH+5F46DETgEDCpnPIEGaP4p145Nh5L w==;
X-CSE-ConnectionGUID: pE5a6SJiQhi9v+unOmY+qQ==
X-CSE-MsgGUID: DVPqKCNNSmWu174jtsrM0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957557"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957557"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:48 -0700
X-CSE-ConnectionGUID: Erp/27YzSq2hAw/OhIoMlQ==
X-CSE-MsgGUID: xlCEhQ6TTBeKGpYYnprLLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357849"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:47 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [RFC 6/7] drm/i915: Use shared GuC ABI definitions
Date: Tue, 11 Jun 2024 16:30:07 +0200
Message-Id: <20240611143008.1900-7-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240611143008.1900-1-michal.wajdeczko@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We no longer need to maintain some of the GuC ABI definitions
inside the i915 driver as the shared one are exactly the same.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   5 +
 .../gt/uc/abi/guc_communication_ctb_abi.h     | 170 -----------
 .../gt/uc/abi/guc_communication_mmio_abi.h    |  49 ----
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 112 --------
 .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 264 ------------------
 5 files changed, 5 insertions(+), 595 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 4022e4499382..7702ad1f59fc 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -15,6 +15,11 @@ subdir-ccflags-y += -DI915
 
 subdir-ccflags-y += -I$(src)
 
+# Shared ABI definitions
+subdir-ccflags-y += \
+	-I$(srctree)/drivers/gpu/drm/intel/guc/ \
+	-I$(srctree)/drivers/gpu/drm/intel/guc/abi
+
 # Please keep these build lists sorted!
 
 # core driver code
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
deleted file mode 100644
index f7d70db16d76..000000000000
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
+++ /dev/null
@@ -1,170 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2014-2021 Intel Corporation
- */
-
-#ifndef _ABI_GUC_COMMUNICATION_CTB_ABI_H
-#define _ABI_GUC_COMMUNICATION_CTB_ABI_H
-
-#include <linux/types.h>
-#include <linux/build_bug.h>
-
-#include "guc_messages_abi.h"
-
-/**
- * DOC: CT Buffer
- *
- * Circular buffer used to send `CTB Message`_
- */
-
-/**
- * DOC: CTB Descriptor
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |  31:0 | **HEAD** - offset (in dwords) to the last dword that was     |
- *  |   |       | read from the `CT Buffer`_.                                  |
- *  |   |       | It can only be updated by the receiver.                      |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 | **TAIL** - offset (in dwords) to the last dword that was     |
- *  |   |       | written to the `CT Buffer`_.                                 |
- *  |   |       | It can only be updated by the sender.                        |
- *  +---+-------+--------------------------------------------------------------+
- *  | 2 |  31:0 | **STATUS** - status of the CTB                               |
- *  |   |       |                                                              |
- *  |   |       |   - _`GUC_CTB_STATUS_NO_ERROR` = 0 (normal operation)        |
- *  |   |       |   - _`GUC_CTB_STATUS_OVERFLOW` = 1 (head/tail too large)     |
- *  |   |       |   - _`GUC_CTB_STATUS_UNDERFLOW` = 2 (truncated message)      |
- *  |   |       |   - _`GUC_CTB_STATUS_MISMATCH` = 4 (head/tail modified)      |
- *  |   |       |   - _`GUC_CTB_STATUS_UNUSED` = 8 (CTB is not in use)         |
- *  +---+-------+--------------------------------------------------------------+
- *  |...|       | RESERVED = MBZ                                               |
- *  +---+-------+--------------------------------------------------------------+
- *  | 15|  31:0 | RESERVED = MBZ                                               |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-struct guc_ct_buffer_desc {
-	u32 head;
-	u32 tail;
-	u32 status;
-#define GUC_CTB_STATUS_NO_ERROR				0
-#define GUC_CTB_STATUS_OVERFLOW				BIT(0)
-#define GUC_CTB_STATUS_UNDERFLOW			BIT(1)
-#define GUC_CTB_STATUS_MISMATCH				BIT(2)
-#define GUC_CTB_STATUS_UNUSED				BIT(3)
-	u32 reserved[13];
-} __packed;
-static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
-
-/**
- * DOC: CTB Message
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 | 31:16 | **FENCE** - message identifier                               |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 15:12 | **FORMAT** - format of the CTB message                       |
- *  |   |       |  - _`GUC_CTB_FORMAT_HXG` = 0 - see `CTB HXG Message`_        |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  11:8 | **RESERVED**                                                 |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |   7:0 | **NUM_DWORDS** - length of the CTB message (w/o header)      |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 | optional (depends on FORMAT)                                 |
- *  +---+-------+                                                              |
- *  |...|       |                                                              |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_CTB_HDR_LEN				1u
-#define GUC_CTB_MSG_MIN_LEN			GUC_CTB_HDR_LEN
-#define GUC_CTB_MSG_MAX_LEN			256u
-#define GUC_CTB_MSG_0_FENCE			(0xffffU << 16)
-#define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
-#define   GUC_CTB_FORMAT_HXG			0u
-#define GUC_CTB_MSG_0_RESERVED			(0xf << 8)
-#define GUC_CTB_MSG_0_NUM_DWORDS		(0xff << 0)
-
-/**
- * DOC: CTB HXG Message
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 | 31:16 | FENCE                                                        |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 15:12 | FORMAT = GUC_CTB_FORMAT_HXG_                                 |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  11:8 | RESERVED = MBZ                                               |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |   7:0 | NUM_DWORDS = length (in dwords) of the embedded HXG message  |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 |                                                              |
- *  +---+-------+                                                              |
- *  |...|       | [Embedded `HXG Message`_]                                    |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_CTB_HXG_MSG_MIN_LEN		(GUC_CTB_MSG_MIN_LEN + GUC_HXG_MSG_MIN_LEN)
-#define GUC_CTB_HXG_MSG_MAX_LEN		GUC_CTB_MSG_MAX_LEN
-
-/**
- * DOC: CTB based communication
- *
- * The CTB (command transport buffer) communication between Host and GuC
- * is based on u32 data stream written to the shared buffer. One buffer can
- * be used to transmit data only in one direction (one-directional channel).
- *
- * Current status of the each buffer is stored in the buffer descriptor.
- * Buffer descriptor holds tail and head fields that represents active data
- * stream. The tail field is updated by the data producer (sender), and head
- * field is updated by the data consumer (receiver)::
- *
- *      +------------+
- *      | DESCRIPTOR |          +=================+============+========+
- *      +============+          |                 | MESSAGE(s) |        |
- *      | address    |--------->+=================+============+========+
- *      +------------+
- *      | head       |          ^-----head--------^
- *      +------------+
- *      | tail       |          ^---------tail-----------------^
- *      +------------+
- *      | size       |          ^---------------size--------------------^
- *      +------------+
- *
- * Each message in data stream starts with the single u32 treated as a header,
- * followed by optional set of u32 data that makes message specific payload::
- *
- *      +------------+---------+---------+---------+
- *      |         MESSAGE                          |
- *      +------------+---------+---------+---------+
- *      |   msg[0]   |   [1]   |   ...   |  [n-1]  |
- *      +------------+---------+---------+---------+
- *      |   MESSAGE  |       MESSAGE PAYLOAD       |
- *      +   HEADER   +---------+---------+---------+
- *      |            |    0    |   ...   |    n    |
- *      +======+=====+=========+=========+=========+
- *      | 31:16| code|         |         |         |
- *      +------+-----+         |         |         |
- *      |  15:5|flags|         |         |         |
- *      +------+-----+         |         |         |
- *      |   4:0|  len|         |         |         |
- *      +------+-----+---------+---------+---------+
- *
- *                   ^-------------len-------------^
- *
- * The message header consists of:
- *
- * - **len**, indicates length of the message payload (in u32)
- * - **code**, indicates message code
- * - **flags**, holds various bits to control message handling
- */
-
-#endif /* _ABI_GUC_COMMUNICATION_CTB_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
deleted file mode 100644
index 9baa3cb07d13..000000000000
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
+++ /dev/null
@@ -1,49 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2014-2021 Intel Corporation
- */
-
-#ifndef _ABI_GUC_COMMUNICATION_MMIO_ABI_H
-#define _ABI_GUC_COMMUNICATION_MMIO_ABI_H
-
-/**
- * DOC: GuC MMIO based communication
- *
- * The MMIO based communication between Host and GuC relies on special
- * hardware registers which format could be defined by the software
- * (so called scratch registers).
- *
- * Each MMIO based message, both Host to GuC (H2G) and GuC to Host (G2H)
- * messages, which maximum length depends on number of available scratch
- * registers, is directly written into those scratch registers.
- *
- * For Gen9+, there are 16 software scratch registers 0xC180-0xC1B8,
- * but no H2G command takes more than 4 parameters and the GuC firmware
- * itself uses an 4-element array to store the H2G message.
- *
- * For Gen11+, there are additional 4 registers 0x190240-0x19024C, which
- * are, regardless on lower count, preferred over legacy ones.
- *
- * The MMIO based communication is mainly used during driver initialization
- * phase to setup the `CTB based communication`_ that will be used afterwards.
- */
-
-#define GUC_MAX_MMIO_MSG_LEN		4
-
-/**
- * DOC: MMIO HXG Message
- *
- * Format of the MMIO messages follows definitions of `HXG Message`_.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |  31:0 |                                                              |
- *  +---+-------+                                                              |
- *  |...|       | [Embedded `HXG Message`_]                                    |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#endif /* _ABI_GUC_COMMUNICATION_MMIO_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
deleted file mode 100644
index 37ff539a6963..000000000000
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+++ /dev/null
@@ -1,112 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#ifndef _ABI_GUC_KLVS_ABI_H
-#define _ABI_GUC_KLVS_ABI_H
-
-#include <linux/types.h>
-
-/**
- * DOC: GuC KLV
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 | 31:16 | **KEY** - KLV key identifier                                 |
- *  |   |       |   - `GuC Self Config KLVs`_                                  |
- *  |   |       |                                                              |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  15:0 | **LEN** - length of VALUE (in 32bit dwords)                  |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 | **VALUE** - actual value of the KLV (format depends on KEY)  |
- *  +---+-------+                                                              |
- *  |...|       |                                                              |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_KLV_LEN_MIN				1u
-#define GUC_KLV_0_KEY				(0xffffu << 16)
-#define GUC_KLV_0_LEN				(0xffffu << 0)
-#define GUC_KLV_n_VALUE				(0xffffffffu << 0)
-
-/**
- * DOC: GuC Self Config KLVs
- *
- * `GuC KLV`_ keys available for use with HOST2GUC_SELF_CFG_.
- *
- * _`GUC_KLV_SELF_CFG_H2G_CTB_ADDR` : 0x0902
- *      Refers to 64 bit Global Gfx address of H2G `CT Buffer`_.
- *      Should be above WOPCM address but below APIC base address for native mode.
- *
- * _`GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR` : 0x0903
- *      Refers to 64 bit Global Gfx address of H2G `CTB Descriptor`_.
- *      Should be above WOPCM address but below APIC base address for native mode.
- *
- * _`GUC_KLV_SELF_CFG_H2G_CTB_SIZE` : 0x0904
- *      Refers to size of H2G `CT Buffer`_ in bytes.
- *      Should be a multiple of 4K.
- *
- * _`GUC_KLV_SELF_CFG_G2H_CTB_ADDR` : 0x0905
- *      Refers to 64 bit Global Gfx address of G2H `CT Buffer`_.
- *      Should be above WOPCM address but below APIC base address for native mode.
- *
- * _`GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR` : 0x0906
- *      Refers to 64 bit Global Gfx address of G2H `CTB Descriptor`_.
- *      Should be above WOPCM address but below APIC base address for native mode.
- *
- * _`GUC_KLV_SELF_CFG_G2H_CTB_SIZE` : 0x0907
- *      Refers to size of G2H `CT Buffer`_ in bytes.
- *      Should be a multiple of 4K.
- */
-
-#define GUC_KLV_SELF_CFG_H2G_CTB_ADDR_KEY		0x0902
-#define GUC_KLV_SELF_CFG_H2G_CTB_ADDR_LEN		2u
-
-#define GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR_KEY	0x0903
-#define GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR_LEN	2u
-
-#define GUC_KLV_SELF_CFG_H2G_CTB_SIZE_KEY		0x0904
-#define GUC_KLV_SELF_CFG_H2G_CTB_SIZE_LEN		1u
-
-#define GUC_KLV_SELF_CFG_G2H_CTB_ADDR_KEY		0x0905
-#define GUC_KLV_SELF_CFG_G2H_CTB_ADDR_LEN		2u
-
-#define GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR_KEY	0x0906
-#define GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR_LEN	2u
-
-#define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_KEY		0x0907
-#define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_LEN		1u
-
-/*
- * Global scheduling policy update keys.
- */
-enum {
-	GUC_SCHEDULING_POLICIES_KLV_ID_RENDER_COMPUTE_YIELD	= 0x1001,
-};
-
-/*
- * Per context scheduling policy update keys.
- */
-enum {
-	GUC_CONTEXT_POLICIES_KLV_ID_EXECUTION_QUANTUM			= 0x2001,
-	GUC_CONTEXT_POLICIES_KLV_ID_PREEMPTION_TIMEOUT			= 0x2002,
-	GUC_CONTEXT_POLICIES_KLV_ID_SCHEDULING_PRIORITY			= 0x2003,
-	GUC_CONTEXT_POLICIES_KLV_ID_PREEMPT_TO_IDLE_ON_QUANTUM_EXPIRY	= 0x2004,
-	GUC_CONTEXT_POLICIES_KLV_ID_SLPM_GT_FREQUENCY			= 0x2005,
-
-	GUC_CONTEXT_POLICIES_KLV_NUM_IDS = 5,
-};
-
-/*
- * Workaround keys:
- */
-enum {
-	GUC_WORKAROUND_KLV_SERIALIZED_RA_MODE				= 0x9001,
-	GUC_WORKAROUND_KLV_BLOCK_INTERRUPTS_WHEN_MGSR_BLOCKED		= 0x9002,
-};
-
-#endif /* _ABI_GUC_KLVS_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
deleted file mode 100644
index 98eb4f46572b..000000000000
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
+++ /dev/null
@@ -1,264 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2014-2021 Intel Corporation
- */
-
-#ifndef _ABI_GUC_MESSAGES_ABI_H
-#define _ABI_GUC_MESSAGES_ABI_H
-
-/**
- * DOC: HXG Message
- *
- * All messages exchanged with GuC are defined using 32 bit dwords.
- * First dword is treated as a message header. Remaining dwords are optional.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  |   |       |                                                              |
- *  | 0 |    31 | **ORIGIN** - originator of the message                       |
- *  |   |       |   - _`GUC_HXG_ORIGIN_HOST` = 0                               |
- *  |   |       |   - _`GUC_HXG_ORIGIN_GUC` = 1                                |
- *  |   |       |                                                              |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | **TYPE** - message type                                      |
- *  |   |       |   - _`GUC_HXG_TYPE_REQUEST` = 0                              |
- *  |   |       |   - _`GUC_HXG_TYPE_EVENT` = 1                                |
- *  |   |       |   - _`GUC_HXG_TYPE_FAST_REQUEST` = 2                         |
- *  |   |       |   - _`GUC_HXG_TYPE_NO_RESPONSE_BUSY` = 3                     |
- *  |   |       |   - _`GUC_HXG_TYPE_NO_RESPONSE_RETRY` = 5                    |
- *  |   |       |   - _`GUC_HXG_TYPE_RESPONSE_FAILURE` = 6                     |
- *  |   |       |   - _`GUC_HXG_TYPE_RESPONSE_SUCCESS` = 7                     |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  27:0 | **AUX** - auxiliary data (depends on TYPE)                   |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 |                                                              |
- *  +---+-------+                                                              |
- *  |...|       | **PAYLOAD** - optional payload (depends on TYPE)             |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_HXG_MSG_MIN_LEN			1u
-#define GUC_HXG_MSG_0_ORIGIN			(0x1U << 31)
-#define   GUC_HXG_ORIGIN_HOST			0u
-#define   GUC_HXG_ORIGIN_GUC			1u
-#define GUC_HXG_MSG_0_TYPE			(0x7 << 28)
-#define   GUC_HXG_TYPE_REQUEST			0u
-#define   GUC_HXG_TYPE_EVENT			1u
-#define   GUC_HXG_TYPE_FAST_REQUEST		2u
-#define   GUC_HXG_TYPE_NO_RESPONSE_BUSY		3u
-#define   GUC_HXG_TYPE_NO_RESPONSE_RETRY	5u
-#define   GUC_HXG_TYPE_RESPONSE_FAILURE		6u
-#define   GUC_HXG_TYPE_RESPONSE_SUCCESS		7u
-#define GUC_HXG_MSG_0_AUX			(0xfffffff << 0)
-#define GUC_HXG_MSG_n_PAYLOAD			(0xffffffff << 0)
-
-/**
- * DOC: HXG Request
- *
- * The `HXG Request`_ message should be used to initiate synchronous activity
- * for which confirmation or return data is expected.
- *
- * The recipient of this message shall use `HXG Response`_, `HXG Failure`_
- * or `HXG Retry`_ message as a definite reply, and may use `HXG Busy`_
- * message as a intermediate reply.
- *
- * Format of @DATA0 and all @DATAn fields depends on the @ACTION code.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |    31 | ORIGIN                                                       |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | TYPE = GUC_HXG_TYPE_REQUEST_                                 |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 27:16 | **DATA0** - request data (depends on ACTION)                 |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  15:0 | **ACTION** - requested action code                           |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 |                                                              |
- *  +---+-------+                                                              |
- *  |...|       | **DATAn** - optional data (depends on ACTION)                |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_HXG_REQUEST_MSG_MIN_LEN		GUC_HXG_MSG_MIN_LEN
-#define GUC_HXG_REQUEST_MSG_0_DATA0		(0xfff << 16)
-#define GUC_HXG_REQUEST_MSG_0_ACTION		(0xffff << 0)
-#define GUC_HXG_REQUEST_MSG_n_DATAn		GUC_HXG_MSG_n_PAYLOAD
-
-/**
- * DOC: HXG Fast Request
- *
- * The `HXG Request`_ message should be used to initiate asynchronous activity
- * for which confirmation or return data is not expected.
- *
- * If confirmation is required then `HXG Request`_ shall be used instead.
- *
- * The recipient of this message may only use `HXG Failure`_ message if it was
- * unable to accept this request (like invalid data).
- *
- * Format of `HXG Fast Request`_ message is same as `HXG Request`_ except @TYPE.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |    31 | ORIGIN - see `HXG Message`_                                  |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | TYPE = `GUC_HXG_TYPE_FAST_REQUEST`_                          |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 27:16 | DATA0 - see `HXG Request`_                                   |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  15:0 | ACTION - see `HXG Request`_                                  |
- *  +---+-------+--------------------------------------------------------------+
- *  |...|       | DATAn - see `HXG Request`_                                   |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-/**
- * DOC: HXG Event
- *
- * The `HXG Event`_ message should be used to initiate asynchronous activity
- * that does not involves immediate confirmation nor data.
- *
- * Format of @DATA0 and all @DATAn fields depends on the @ACTION code.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |    31 | ORIGIN                                                       |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | TYPE = GUC_HXG_TYPE_EVENT_                                   |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 27:16 | **DATA0** - event data (depends on ACTION)                   |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  15:0 | **ACTION** - event action code                               |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 |                                                              |
- *  +---+-------+                                                              |
- *  |...|       | **DATAn** - optional event  data (depends on ACTION)         |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_HXG_EVENT_MSG_MIN_LEN		GUC_HXG_MSG_MIN_LEN
-#define GUC_HXG_EVENT_MSG_0_DATA0		(0xfff << 16)
-#define GUC_HXG_EVENT_MSG_0_ACTION		(0xffff << 0)
-#define GUC_HXG_EVENT_MSG_n_DATAn		GUC_HXG_MSG_n_PAYLOAD
-
-/**
- * DOC: HXG Busy
- *
- * The `HXG Busy`_ message may be used to acknowledge reception of the `HXG Request`_
- * message if the recipient expects that it processing will be longer than default
- * timeout.
- *
- * The @COUNTER field may be used as a progress indicator.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |    31 | ORIGIN                                                       |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | TYPE = GUC_HXG_TYPE_NO_RESPONSE_BUSY_                        |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  27:0 | **COUNTER** - progress indicator                             |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_HXG_BUSY_MSG_LEN			GUC_HXG_MSG_MIN_LEN
-#define GUC_HXG_BUSY_MSG_0_COUNTER		GUC_HXG_MSG_0_AUX
-
-/**
- * DOC: HXG Retry
- *
- * The `HXG Retry`_ message should be used by recipient to indicate that the
- * `HXG Request`_ message was dropped and it should be resent again.
- *
- * The @REASON field may be used to provide additional information.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |    31 | ORIGIN                                                       |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | TYPE = GUC_HXG_TYPE_NO_RESPONSE_RETRY_                       |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  27:0 | **REASON** - reason for retry                                |
- *  |   |       |  - _`GUC_HXG_RETRY_REASON_UNSPECIFIED` = 0                   |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_HXG_RETRY_MSG_LEN			GUC_HXG_MSG_MIN_LEN
-#define GUC_HXG_RETRY_MSG_0_REASON		GUC_HXG_MSG_0_AUX
-#define   GUC_HXG_RETRY_REASON_UNSPECIFIED	0u
-
-/**
- * DOC: HXG Failure
- *
- * The `HXG Failure`_ message shall be used as a reply to the `HXG Request`_
- * message that could not be processed due to an error.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |    31 | ORIGIN                                                       |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | TYPE = GUC_HXG_TYPE_RESPONSE_FAILURE_                        |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 27:16 | **HINT** - additional error hint                             |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  15:0 | **ERROR** - error/result code                                |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_HXG_FAILURE_MSG_LEN			GUC_HXG_MSG_MIN_LEN
-#define GUC_HXG_FAILURE_MSG_0_HINT		(0xfff << 16)
-#define GUC_HXG_FAILURE_MSG_0_ERROR		(0xffff << 0)
-
-/**
- * DOC: HXG Response
- *
- * The `HXG Response`_ message shall be used as a reply to the `HXG Request`_
- * message that was successfully processed without an error.
- *
- *  +---+-------+--------------------------------------------------------------+
- *  |   | Bits  | Description                                                  |
- *  +===+=======+==============================================================+
- *  | 0 |    31 | ORIGIN                                                       |
- *  |   +-------+--------------------------------------------------------------+
- *  |   | 30:28 | TYPE = GUC_HXG_TYPE_RESPONSE_SUCCESS_                        |
- *  |   +-------+--------------------------------------------------------------+
- *  |   |  27:0 | **DATA0** - data (depends on ACTION from `HXG Request`_)     |
- *  +---+-------+--------------------------------------------------------------+
- *  | 1 |  31:0 |                                                              |
- *  +---+-------+                                                              |
- *  |...|       | **DATAn** - data (depends on ACTION from `HXG Request`_)     |
- *  +---+-------+                                                              |
- *  | n |  31:0 |                                                              |
- *  +---+-------+--------------------------------------------------------------+
- */
-
-#define GUC_HXG_RESPONSE_MSG_MIN_LEN		GUC_HXG_MSG_MIN_LEN
-#define GUC_HXG_RESPONSE_MSG_0_DATA0		GUC_HXG_MSG_0_AUX
-#define GUC_HXG_RESPONSE_MSG_n_DATAn		GUC_HXG_MSG_n_PAYLOAD
-
-/* deprecated */
-#define INTEL_GUC_MSG_TYPE_SHIFT	28
-#define INTEL_GUC_MSG_TYPE_MASK		(0xF << INTEL_GUC_MSG_TYPE_SHIFT)
-#define INTEL_GUC_MSG_DATA_SHIFT	16
-#define INTEL_GUC_MSG_DATA_MASK		(0xFFF << INTEL_GUC_MSG_DATA_SHIFT)
-#define INTEL_GUC_MSG_CODE_SHIFT	0
-#define INTEL_GUC_MSG_CODE_MASK		(0xFFFF << INTEL_GUC_MSG_CODE_SHIFT)
-
-enum intel_guc_msg_type {
-	INTEL_GUC_MSG_TYPE_REQUEST = 0x0,
-	INTEL_GUC_MSG_TYPE_RESPONSE = 0xF,
-};
-
-#endif /* _ABI_GUC_MESSAGES_ABI_H */
-- 
2.43.0

