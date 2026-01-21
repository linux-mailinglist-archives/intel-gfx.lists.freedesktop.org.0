Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMsQMIxccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 726925F4CB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A4210E8C4;
	Wed, 21 Jan 2026 23:08:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YMoVZPQQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E7710E8C2;
 Wed, 21 Jan 2026 23:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036938; x=1800572938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qXpeB/W7ttOxtHKL5qpUebYbNodzmWXFEvSzSkWiOP0=;
 b=YMoVZPQQpEqpCKSN6xYrnifO9EYOzIk4ITSAXztCim/GI8g3b94XXs7s
 XPNp62CHcXTBDX1njOaNjTkf6iLjcXUBSEulqy1ikFJ3qPsAcjn9GLx2Y
 R9FBVd8QngIEdEzR23J9ew/b4zlQz0gJb9evA9mDwM6u5ZuAnx92+p8Bu
 iePBw9g0yuCXKc27tfpCDOAUQ0t2oTfKUPUfCD8JtsUd0qj4ynU9PEUXr
 bOjr8AGfNvwBv17uFnVojjSAOVweq5Bdzg5JCYT3Y6dMakyNhDvpdAXDB
 EypZBEfboCQuL9yDxIBiyBfha2qN9zknkNuiftFQQ+2p757D8JlKhsFpF w==;
X-CSE-ConnectionGUID: hzU84wNnSvS/LdcDf5hEXg==
X-CSE-MsgGUID: BAsnz/20QU+6JauM3AvOzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70244999"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70244999"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:57 -0800
X-CSE-ConnectionGUID: VlKtCbZCSAKZfLGAe0MAKQ==
X-CSE-MsgGUID: n7JZOTDYQsSNrPKlgr8yUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889646"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:55 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 15/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_fifo_underrun.c
Date: Thu, 22 Jan 2026 04:54:10 +0530
Message-ID: <20260121232414.707192-16-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260121232414.707192-1-uma.shankar@intel.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 726925F4CB
X-Rspamd-Action: no action

Move GEN7_ERR_INT reg to common header to make intel_fifo_underrun.c
free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/intel_fifo_underrun.c    |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 23 -------------------
 include/drm/intel/intel_gmd_common_regs.h     | 23 +++++++++++++++++++
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index b413b3e871d8..c834be759e40 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -28,8 +28,8 @@
 #include <linux/seq_buf.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 62d58d7cfa7a..0af2c9c8dc0f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -326,29 +326,6 @@
 #define GEN7_MEDIA_MAX_REQ_COUNT	_MMIO(0x4070)
 #define GEN7_GFX_MAX_REQ_COUNT		_MMIO(0x4074)
 
-#define GEN7_ERR_INT	_MMIO(0x44040)
-#define   ERR_INT_POISON		(1 << 31)
-#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
-#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
-#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
-#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
-#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
-#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
-#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
-#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
-#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
-#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
-#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
-#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
-#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
-#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
-#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
-#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
-#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
-#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
-#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
-#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
-
 #define FPGA_DBG		_MMIO(0x42300)
 #define   FPGA_DBG_RM_NOCLAIM	REG_BIT(31)
 
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 049349c365e3..2b2a7f21529a 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -169,4 +169,27 @@
 #define   INSTPM_TLB_INVALIDATE	(1 << 9)
 #define   INSTPM_SYNC_FLUSH	(1 << 5)
 
+#define GEN7_ERR_INT	_MMIO(0x44040)
+#define   ERR_INT_POISON		(1 << 31)
+#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
+#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
+#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
+#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
+#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
+#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
+#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
+#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
+#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
+#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
+#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
+#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
+#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
+#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
+#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
+#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
+#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
+#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
+#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
+#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
+
 #endif
-- 
2.50.1

