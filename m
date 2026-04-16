Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDo3KLBQ4GkhewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F5B409CBD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 04:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1A510E13E;
	Thu, 16 Apr 2026 02:59:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XylkbV9q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B6410E13E;
 Thu, 16 Apr 2026 02:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308397; x=1807844397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4poZCRGdqYwtb0j7+lj0MmsQWb2bKZbVTrlPEFZq/9o=;
 b=XylkbV9qsPBO4hc6mfdcYg15ObDq+AHtQ64UxHLe7437hPQDXBrKyXDx
 drA4+8lmjjsaLFnlK6TKDvfGEwq0yvnE5lkmrQXGYpGV8ejoonyNmsMzQ
 DoZjugVWbE073UnTxKo4IUO+8YRrkYMh3TGk7/eU4HpoWQbmogvn/BGoP
 yetfmUcQis2f2tXdNfLI3zO8SDYlgzB5siT4enGQIEdpUOhWRoLZQXm8q
 uy+q2N+k/vYiCt76pGEZ8NkHK/SvvlwU5bpP8g+p8RulD1PZ/dDHw6PZ1
 DeICQqJudpGmFstmBRrKyQz2owbdqKsaFAIs6A4hZairVTzdXwlc0pNq0 g==;
X-CSE-ConnectionGUID: c3qDQcSTQqysr81emJcq+Q==
X-CSE-MsgGUID: ZUrj5156R8ufFntiAtGseA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997523"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997523"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 19:59:57 -0700
X-CSE-ConnectionGUID: w6PWdILxScC8VbGTx0JkJA==
X-CSE-MsgGUID: MhWsHInwTU2YKoSfyCdrOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755023"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 19:59:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 01/12] drm/i915/dip: Add new file to handle Data Island Packet
 hardware
Date: Thu, 16 Apr 2026 08:14:51 +0530
Message-ID: <20260416024504.1925195-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
References: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D2F5B409CBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new files intel_dip.c, intel_dip.h, and intel_dip_regs.h to handle
low level hardware programming related to Data Island Packets.

Currently only programming of the Transmission Line for HDMI 2.1
Extended Metadata Packet (EMP) and DP Adaptive-Sync Secondary Data
Packet (SDP) is added (MMIO register EMP_AS_SDP_TL).

This will serve as a common place for DIP related code, which is currently
scattered across DP and HDMI files. A TODO has been added for extracting
the remaining DIP helpers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_dip.c      | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dip.h      | 38 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dip_regs.h | 17 ++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c      |  1 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  6 ---
 drivers/gpu/drm/xe/Makefile                   |  1 +
 7 files changed, 97 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dip.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dip.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dip_regs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index fa632f4e505c..ff20db13cf34 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -348,6 +348,7 @@ i915-y += \
 	display/intel_cx0_phy.o \
 	display/intel_ddi.o \
 	display/intel_ddi_buf_trans.o \
+	display/intel_dip.o \
 	display/intel_display_device.o \
 	display/intel_display_trace.o \
 	display/intel_dkl_phy.o \
diff --git a/drivers/gpu/drm/i915/display/intel_dip.c b/drivers/gpu/drm/i915/display/intel_dip.c
new file mode 100644
index 000000000000..2e2bdb2b199c
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dip.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ *
+ */
+
+#include "intel_de.h"
+#include "intel_dip.h"
+#include "intel_dip_regs.h"
+#include "intel_display_types.h"
+
+u16 intel_dip_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val;
+
+	if (!HAS_EMP_AS_SDP_TL(display))
+		return 0;
+
+	val = intel_de_read(display, EMP_AS_SDP_TL(display, cpu_transcoder));
+	return REG_FIELD_GET(EMP_AS_SDP_DB_TL_MASK, val);
+}
+
+void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!HAS_EMP_AS_SDP_TL(display))
+		return;
+	/*
+	 * Since currently we support VRR only for DP/eDP, so this is programmed
+	 * only for Adaptive Sync SDP to Vsync start.
+	 */
+	intel_de_write(display,
+		       EMP_AS_SDP_TL(display, cpu_transcoder),
+		       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dip.h b/drivers/gpu/drm/i915/display/intel_dip.h
new file mode 100644
index 000000000000..25bae4a04d6b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dip.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#ifndef __INTEL_DIP_H__
+#define __INTEL_DIP_H__
+
+#include "intel_display_device.h"
+
+/*
+ * Video DIP (Data Island Packet) helpers.
+ *
+ * This file contains helpers for programming video DIP related hardware.
+ *
+ * TODO: Currently, this is only used for programming EMP_AS_SDP_TL i.e. to
+ * program Transmission Line for HDMI 2.1 Extended Metadata Packet (EMP) and
+ * DP Adaptive Sync (AS) Secondary Data Packet (SDP). However, all low level
+ * DIP buffer read/write and related helpers should be extracted here later.
+ */
+
+struct intel_crtc_state;
+
+/*
+ * EMP AS SDP TL: Extended Metadata Packet (EMP) Adaptive Sync (AS)
+ * Secondary Data Packet (SDP) Transmission Line (TL).
+ *
+ * Starting with BMG (display ver 14.01) and LNL+ (display ver 20+),
+ * the AS SDP transmission line is programmable via the EMP AS SDP TL
+ * register.
+ */
+#define HAS_EMP_AS_SDP_TL(__display)	(DISPLAY_VERx100(__display) == 1401 || \
+					 DISPLAY_VER(__display) >= 20)
+
+u16 intel_dip_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
+void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
+
+#endif /* __INTEL_DIP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dip_regs.h b/drivers/gpu/drm/i915/display/intel_dip_regs.h
new file mode 100644
index 000000000000..85dcbf42e77d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dip_regs.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#ifndef __INTEL_DIP_REGS_H__
+#define __INTEL_DIP_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* EMP (Extended Metadata Packet) AS (Adaptive Sync) SDP Transmission Line */
+#define _EMP_AS_SDP_TL_A			0x60204
+#define EMP_AS_SDP_TL(display, trans)		_MMIO_TRANS2((display), (trans), _EMP_AS_SDP_TL_A)
+#define   EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
+#define   EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
+
+#endif /* __INTEL_DIP_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fae1186a90b2..3f09ca934876 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_dip_regs.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 9d4d6573a149..ba8631cbc672 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -174,12 +174,6 @@
 #define   VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
 #define   VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
 
-/* Common register for HDMI EMP and DP AS SDP */
-#define _EMP_AS_SDP_TL_A			0x60204
-#define EMP_AS_SDP_TL(display, trans)		_MMIO_TRANS2((display), (trans), _EMP_AS_SDP_TL_A)
-#define   EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
-#define   EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
-
 #define _TRANS_CMRR_M_LO_A			0x604F0
 #define TRANS_CMRR_M_LO(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_M_LO_A)
 
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 110fef511fe2..e293911a404d 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -253,6 +253,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
 	i915-display/intel_de.o \
+	i915-display/intel_dip.o \
 	i915-display/intel_display.o \
 	i915-display/intel_display_conversion.o \
 	i915-display/intel_display_device.o \
-- 
2.45.2

