Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4D4JBbDws2nYdgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8948281F66
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435BB10EB80;
	Fri, 13 Mar 2026 11:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9NpkphC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E274110EB80;
 Fri, 13 Mar 2026 11:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773400237; x=1804936237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=08dse88klgF6scaTr+28lc+nIVGFRqkZmkfbGl1gvJA=;
 b=C9NpkphCLay1FImh+IhUxHkw855yU6CRKaZFeQl50EKE1idaAphwoCgi
 4c4BKCgYKySxCzlFDi9tCTLsAcZFdsanVMzYxiIp/FTcvw0B9RilHphUj
 AbQwjucbQB+exDfkgEP0OC5Zu32c6cY4pULEwrQ0C/J/ZbhgBGw5qmvsn
 xUR7szZYJPzalgNp7z2fTtUIdcG0thKxwP5whr9XNKPllSM6XxS9y6Rmz
 zSc25vfh//Hx83eplX1UnyDSAmLLOJgzG3CApnjNo9mtB6A2dvFXg+ihH
 oAjWmPDBomESF44JKOPHzp/WpKCAyNrSwjMlvyU8qM73Ju7YuJs/uT4yl g==;
X-CSE-ConnectionGUID: LzOaLZuaQyeN7/4MuzqZFg==
X-CSE-MsgGUID: 1iyp+zO/QIyG/1xBSbEEpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78396149"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78396149"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:36 -0700
X-CSE-ConnectionGUID: u5ysasJXR5WLVOM5r/fp3Q==
X-CSE-MsgGUID: ZLoy5SEzSlyQaMI9xz83+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="251649944"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/de: Introduce intel_de.c and move intel_de_{read,
 write}8() there
Date: Fri, 13 Mar 2026 13:10:26 +0200
Message-ID: <20260313111028.25159-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
References: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.696];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: B8948281F66
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_de_{read,write}() aren't performance critical so having them
as static inline is pointless. Introduce intel_de.c and move the
implementation there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile           |  1 +
 drivers/gpu/drm/i915/display/intel_de.c | 23 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_de.h | 22 +++-------------------
 drivers/gpu/drm/xe/Makefile             |  1 +
 4 files changed, 28 insertions(+), 19 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_de.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7e9d9b666511..099f7b68bb30 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -253,6 +253,7 @@ i915-y += \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
 	display/intel_dbuf_bw.o \
+	display/intel_de.o \
 	display/intel_display.o \
 	display/intel_display_conversion.o \
 	display/intel_display_driver.o \
diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i915/display/intel_de.c
new file mode 100644
index 000000000000..5348c1d51eb8
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_de.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include <drm/drm_print.h>
+
+#include "intel_de.h"
+
+u8 intel_de_read8(struct intel_display *display, i915_reg_t reg)
+{
+	/* this is only used on VGA registers (possible on pre-g4x) */
+	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
+
+	return intel_uncore_read8(__to_uncore(display), reg);
+}
+
+void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val)
+{
+	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
+
+	intel_uncore_write8(__to_uncore(display), reg, val);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index f30f3f8ebee1..8ca5904ba84e 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -6,8 +6,6 @@
 #ifndef __INTEL_DE_H__
 #define __INTEL_DE_H__
 
-#include <drm/drm_print.h>
-
 #include "intel_display_core.h"
 #include "intel_dmc_wl.h"
 #include "intel_dsb.h"
@@ -19,6 +17,9 @@ static inline struct intel_uncore *__to_uncore(struct intel_display *display)
 	return to_intel_uncore(display->drm);
 }
 
+u8 intel_de_read8(struct intel_display *display, i915_reg_t reg);
+void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val);
+
 static inline u32
 intel_de_read(struct intel_display *display, i915_reg_t reg)
 {
@@ -33,23 +34,6 @@ intel_de_read(struct intel_display *display, i915_reg_t reg)
 	return val;
 }
 
-static inline u8
-intel_de_read8(struct intel_display *display, i915_reg_t reg)
-{
-	/* this is only used on VGA registers (possible on pre-g4x) */
-	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
-
-	return intel_uncore_read8(__to_uncore(display), reg);
-}
-
-static inline void
-intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val)
-{
-	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
-
-	intel_uncore_write8(__to_uncore(display), reg, val);
-}
-
 static inline u64
 intel_de_read64_2x32(struct intel_display *display,
 		     i915_reg_t lower_reg, i915_reg_t upper_reg)
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 50608312bc66..0399a5f9a107 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -251,6 +251,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dbuf_bw.o \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
+	i915-display/intel_de.o \
 	i915-display/intel_display.o \
 	i915-display/intel_display_conversion.o \
 	i915-display/intel_display_device.o \
-- 
2.52.0

