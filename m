Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OH6qA+NoKmqiowMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:50:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2AC66F903
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:50:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MYKptXFU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6F710ED3F;
	Thu, 11 Jun 2026 07:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EFF10ED3F;
 Thu, 11 Jun 2026 07:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781164256; x=1812700256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L8b93T9wH7Jejrucc8RgAwf1zhAVBVYNMMts8mEGdM4=;
 b=MYKptXFUutaYUBeETnFv3LIByhwkbI9yM1h3TkRwntGNqjTVobx+f6WF
 PqX7swYeyd4MMHgOMJFqIYgsQpQ5OnFsgAIRxF7n1JeZi57aE33oYIitL
 NYJ3MW4IUseTLp5iXP4X1VoHcbyvHFSHpWCft9uAWYvuGqEdfQ9gGfe9/
 c9AyT9n/UECtYoN1KaxLAvzs0l50BpZt4bzhhLHhLmElSvpPsoE8sjvDE
 bmfnqJEyeeccee78xEpZGjDAFnOvJCHm+uDW0V3yRIzT4ftlTRSW/Ez8Q
 T/o2sP/k8IiAhrSx7lUXEwU6S5YDU3bvr17z+jWu0eP83aBVSSOaR6FRg g==;
X-CSE-ConnectionGUID: lpH/J15JTiaOUz1Zf/GlCA==
X-CSE-MsgGUID: 7CQ9c9WnRgGNNivq6v6wyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93078741"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93078741"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:50:56 -0700
X-CSE-ConnectionGUID: 000OQe28SPCEhEG+n6ILfg==
X-CSE-MsgGUID: 1II1sHL8SV2uM/iS1OErPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="251503314"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:50:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v4 01/12] drm/i915/dip: Add new file to handle Data Island
 Packet hardware
Date: Thu, 11 Jun 2026 13:03:03 +0530
Message-ID: <20260611073316.1439306-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
References: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA2AC66F903

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
index 07802a7f4ce5..04624d35447c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -349,6 +349,7 @@ i915-y += \
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
index e03b5daac5be..6130854a706c 100644
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
index 09661f079d03..9e826d164951 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -256,6 +256,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
 	i915-display/intel_de.o \
+	i915-display/intel_dip.o \
 	i915-display/intel_display.o \
 	i915-display/intel_display_conversion.o \
 	i915-display/intel_display_device.o \
-- 
2.45.2

