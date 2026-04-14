Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCfBLNRN3mndqAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 16:23:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 574D43FB19A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 16:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C9110E0D2;
	Tue, 14 Apr 2026 14:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cvLqzY7E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30E610E278;
 Tue, 14 Apr 2026 14:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776176593; x=1807712593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BPQY80QALftQ6dbyiZvjeE6R4s93XFWO9MGttZcveAc=;
 b=cvLqzY7E5Wl3QUQjcwQc3vPm4Pw4n51uxYad2AWsEZ7cV+NYul05kLq5
 9JlvS1VJYWM/BCHr9pVjv8YeBK2gcbNDkJqEt/HX2kq7Q675azPVJEvWZ
 8Cgm4bBDw1P3WoJdxbZaSGjzb3Gvm1V9vPP/gMR/a0nRFQzv3bHJmZukb
 wt+gORCbF+mbtsCBHlj3nx1HL4lXatIjzacf5Ky50dSAkboL1s+MWICUP
 uO9vM3FJOSnvYvQ1FWr5xXfspynhB3CiGBlNzZ1stMXExVC8aXXcjGgPy
 LAFoedoVEdvny2ICNfg4DpITAtCK5yl0NtoX2v/Lv09Bv2fIgwKDhPTWZ Q==;
X-CSE-ConnectionGUID: nlADbrpeQEqgGXgC8iU1Sw==
X-CSE-MsgGUID: KMA2p28oSaaRsWGpsWuytQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76297614"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76297614"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 07:23:13 -0700
X-CSE-ConnectionGUID: D7fRdYDQRpuZT9Py7qM/vQ==
X-CSE-MsgGUID: MJLBgbp4QwSv4xEwMMqpGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="234149896"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.235])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 07:23:12 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 4/5] drm/i915/reset: Add "display_reset_count" debugfs file
Date: Tue, 14 Apr 2026 17:22:46 +0300
Message-ID: <20260414142247.651-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260414142247.651-1-ville.syrjala@linux.intel.com>
References: <20260414142247.651-1-ville.syrjala@linux.intel.com>
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 574D43FB19A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Expose the number of display resets performed in a new
"display_reset_count" debugfs file. kms_busy can use this to
confirm that the kernel actually took the full display reset path.

v2: Give the file an "intel_" namespace (Jani)

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Testcase: igt/kms_busy/*-with-reset
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 ++
 drivers/gpu/drm/i915/display/intel_display_reset.c   | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_reset.h   |  2 ++
 drivers/gpu/drm/xe/Makefile                          |  1 +
 5 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 38296a38372c..c5a07090cba6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -559,6 +559,10 @@ struct intel_display {
 		unsigned long mask;
 	} quirks;
 
+	struct {
+		u32 count;
+	} reset;
+
 	struct {
 		/* restore state for suspend/resume and display reset */
 		struct drm_atomic_state *modeset_state;
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f244a2b5d139..81bef000a4e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -27,6 +27,7 @@
 #include "intel_display_power.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
+#include "intel_display_reset.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -838,6 +839,7 @@ void intel_display_debugfs_register(struct intel_display *display)
 
 	intel_bios_debugfs_register(display);
 	intel_cdclk_debugfs_register(display);
+	intel_display_reset_debugfs_register(display);
 	intel_dmc_debugfs_register(display);
 	intel_dp_test_debugfs_register(display);
 	intel_fbc_debugfs_register(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index ca15dc18ef0f..e06a8c933cf0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/debugfs.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_print.h>
 
@@ -66,6 +68,7 @@ void intel_display_reset_prepare(struct intel_display *display)
 		return;
 	}
 
+	display->reset.count++;
 	display->restore.modeset_state = state;
 	state->acquire_ctx = ctx;
 }
@@ -114,3 +117,10 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
 	drm_modeset_acquire_fini(ctx);
 	mutex_unlock(&display->drm->mode_config.mutex);
 }
+
+void intel_display_reset_debugfs_register(struct intel_display *display)
+{
+	debugfs_create_u32("intel_display_reset_count", 0400,
+			   display->drm->debugfs_root,
+			   &display->reset.count);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index a8aa7729d33f..b88c330a3441 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -15,4 +15,6 @@ bool intel_display_reset_test(struct intel_display *display);
 void intel_display_reset_prepare(struct intel_display *display);
 void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
+void intel_display_reset_debugfs_register(struct intel_display *display);
+
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index e42e582aca5c..95666f950a6f 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -263,6 +263,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_power.o \
 	i915-display/intel_display_power_map.o \
 	i915-display/intel_display_power_well.o \
+	i915-display/intel_display_reset.o \
 	i915-display/intel_display_rpm.o \
 	i915-display/intel_display_rps.o \
 	i915-display/intel_display_trace.o \
-- 
2.52.0

