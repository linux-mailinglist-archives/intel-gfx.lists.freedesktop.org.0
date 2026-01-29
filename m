Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHGTGA/Ke2kQIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132EEB4693
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1A610E90A;
	Thu, 29 Jan 2026 20:58:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZNzsXPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E6DD10E902;
 Thu, 29 Jan 2026 20:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769720322; x=1801256322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q5LrUvSn+rX4MnhZ+UUzLYESBvlLN6SlryEwyNy1g8E=;
 b=VZNzsXPIY8VC+NvKe6TaF7DfIe9BMe7TinES0XqQvsdh/7HUA/sO5pJr
 PL0+OZSSg2TfGIXdFCxWi0YiNMYKuFbGUlKA14/Mz8AYxTaOJzr4ruF0p
 fuoQ8T4DIKsQLYGVEHH4WZ4s3IS4WD4zDFiOcXBp6KzBgpev7SFBAzIum
 VzIAZkCuEA6PMA1MfFf6FmlrKgN2x5jfnX57m09mpXfWZRos44Jq2z5iY
 dTfyTNoBH3i4Geq+phyYikIdpLZUa3SIkkQ8dWvwFnltNozBx159MdP/Q
 zj+PekOhcFiZPcA8fGvi8axY5IBfzKt5DgnKHlPPJxfudLGNDkkGUszww Q==;
X-CSE-ConnectionGUID: JwlucTwOSbmAZvqjmzEOfA==
X-CSE-MsgGUID: G99Qn2gnQy61tsQXly38OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88545346"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88545346"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:58:42 -0800
X-CSE-ConnectionGUID: CwG8kGppSgC8IraRM7jlBg==
X-CSE-MsgGUID: dRkk4qTRS9y4k9YQaxSxMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239927221"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 29 Jan 2026 12:58:40 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 15/19] drm/i915: Remove i915_reg.h from intel_fifo_underrun.c
Date: Fri, 30 Jan 2026 02:43:54 +0530
Message-ID: <20260129211358.1240283-16-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260129211358.1240283-1-uma.shankar@intel.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 132EEB4693
X-Rspamd-Action: no action

Move GEN7_ERR_INT reg to common header to make intel_fifo_underrun.c
free from including i915_reg.h.

v2: Move GEN7_ERR_INT regs to display header (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 23 +++++++++++++++++++
 .../drm/i915/display/intel_fifo_underrun.c    |  1 -
 drivers/gpu/drm/i915/i915_reg.h               | 23 -------------------
 3 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 23626ee2d4ce..ab2ef267c9ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -91,6 +91,29 @@
 #define   DERRMR_PIPEC_VBLANK		(1 << 21)
 #define   DERRMR_PIPEC_HBLANK		(1 << 22)
 
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
 #define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
 					      VLV_IER, \
 					      VLV_IIR)
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index b413b3e871d8..bf047180def9 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -29,7 +29,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b23ac1b8f495..611ae5861450 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -327,29 +327,6 @@
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
 
-- 
2.50.1

