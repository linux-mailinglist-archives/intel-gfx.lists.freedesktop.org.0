Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gN1RN5Lry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FF836BEE0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE8910EA34;
	Tue, 31 Mar 2026 15:43:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b+JW6xia";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA68610EA5A;
 Tue, 31 Mar 2026 15:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971792; x=1806507792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s1Wx5eN3jV/yMpmAHcM/0u2pTkSYBqsjGDYorQX5l4Q=;
 b=b+JW6xiaIV0TnDuv/CTyUX+hsw3qkwSVJGzlQFyZ9Dmie7lTQ1PYGVH2
 D8v6tF/6/4emFyQfBcHQP9L7KiT/MHuhiU6K8DeSpqliex3GN5Kkb/OhJ
 C+hPJysGRVYnXt2qRav+Rbjz8znuf3+AuIDiVNlc+kdYNGe9FUQ9dJbjZ
 dBQFP83MDqjtJGXhHoyYGThKMrkKWlvKvf92c51EmCEWv9aapB1Vh/oPp
 WYhtL2TNkj3ypSUT0N6tgD32YkIm9uPwZO2FNtOATgTcIIiQpRoz3X9qj
 jQ5RMu4xtkrkPiyKqRFDqq0LMT5fa36zvPsyA/DQciO3U8j55kNxGSpfY g==;
X-CSE-ConnectionGUID: jP3oR4kySDi2akEWeZdOXA==
X-CSE-MsgGUID: FEMXO20QSealh1V2fgGUBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75884116"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75884116"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:12 -0700
X-CSE-ConnectionGUID: rN4OxZgfR+afzbq2SpwgIQ==
X-CSE-MsgGUID: SdFmGwxoQ0KpUOYifkQcCA==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/12] drm/i915/mchbar: Provide intel_mchbar_read*()
 abstraction
Date: Tue, 31 Mar 2026 18:42:49 +0300
Message-ID: <20260331154259.24600-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 91FF836BEE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

MCHBAR registers are a bit special in that:
- we access them through the mirror
- the mirror is read only on HSW+
- the mirror requires the actual MCHBAR to be enabled in device 0:0.0
- the mirror is gone on MTL+

So I'd prefer to treat MCHBAR registers as a bit special in
the code as well, and do all accesses to them via dedicated
functions. Prodive such functions in the form of
intel_mchbar_read*().

v2: Put the function arguments on one line
    No intel_uncore_read64() on xe, use intel_uncore_read64_2x32()
    Name the new function intel_mchbar_read64_2x32() as well

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile               |  1 +
 drivers/gpu/drm/i915/display/intel_mchbar.c | 30 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_mchbar.h | 19 +++++++++++++
 drivers/gpu/drm/xe/Makefile                 |  1 +
 4 files changed, 51 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b677720a1c2d..0e48305df8b2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -295,6 +295,7 @@ i915-y += \
 	display/intel_link_bw.o \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
+	display/intel_mchbar.o \
 	display/intel_modeset_lock.o \
 	display/intel_modeset_setup.o \
 	display/intel_modeset_verify.o \
diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
new file mode 100644
index 000000000000..2636fe60ef37
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include "intel_display_core.h"
+#include "intel_mchbar.h"
+#include "intel_uncore.h"
+
+u16 intel_mchbar_read16(struct intel_display *display, i915_reg_t reg)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+
+	return intel_uncore_read16(uncore, reg);
+}
+
+u32 intel_mchbar_read(struct intel_display *display, i915_reg_t reg)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+
+	return intel_uncore_read(uncore, reg);
+}
+
+u64 intel_mchbar_read64_2x32(struct intel_display *display, i915_reg_t reg)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+	i915_reg_t upper_reg = _MMIO(i915_mmio_reg_offset(reg) + 4);
+
+	return intel_uncore_read64_2x32(uncore, reg, upper_reg);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.h b/drivers/gpu/drm/i915/display/intel_mchbar.h
new file mode 100644
index 000000000000..002a4454e8ed
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#ifndef __INTEL_MCHBAR_H__
+#define __INTEL_MCHBAR_H__
+
+#include <linux/types.h>
+
+#include "i915_reg_defs.h"
+
+struct intel_display;
+
+u16 intel_mchbar_read16(struct intel_display *display, i915_reg_t reg);
+u32 intel_mchbar_read(struct intel_display *display, i915_reg_t reg);
+u64 intel_mchbar_read64_2x32(struct intel_display *display, i915_reg_t reg);
+
+#endif /* __INTEL_MCHBAR_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 9dacb0579a7d..a86c553dc996 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -306,6 +306,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_link_bw.o \
 	i915-display/intel_lspcon.o \
 	i915-display/intel_lt_phy.o \
+	i915-display/intel_mchbar.o \
 	i915-display/intel_modeset_lock.o \
 	i915-display/intel_modeset_setup.o \
 	i915-display/intel_modeset_verify.o \
-- 
2.52.0

