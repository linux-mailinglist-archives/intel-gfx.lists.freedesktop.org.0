Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLcsNeyyy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EC0368F29
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 203B110E8C0;
	Tue, 31 Mar 2026 11:41:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJNY6fWD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D575110EADD;
 Tue, 31 Mar 2026 11:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957290; x=1806493290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iqrcHnsfhHWitFgf6aLlnh3ZyTvJrtdjVSns+P9SIM4=;
 b=cJNY6fWDGszPzr8AlsUF/yWJBS8Y764vuztEAPxZjuAOROmVZ+g4oShx
 SURfpfh8s/UMJiDkdJxeLwR0zNGSWargFzFEvtZHgwKLzJQqCYErHZesa
 pOqji+0P7CNHGQIwhWcDaBZoJKmOxzjB1Dq7pN6BfC8APeufg4Wp4GusC
 n3mH8mx1NkkoquxsPV7VHkG2UUlZpvEVawq2tFVXiu2LCoi2iEbvKWVE2
 3l6LGLyMdkuaeeTBxJIrl8RJlYKx64gyw3H8fFekLeCEMxjDHt/FL8ghU
 tIuB8QtiBDwLzDJu4DEL+k9G5D/emz8aOgyfWKVnVNWeHmGwm9I0GST3+ g==;
X-CSE-ConnectionGUID: mNm68LB2Qmu/hlLfTsgv6A==
X-CSE-MsgGUID: dhUR1xyHRSaILYvWHTqsWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87358413"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87358413"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:30 -0700
X-CSE-ConnectionGUID: DgkwroZJTTGkoPlfUDCBxg==
X-CSE-MsgGUID: lps/8PdzTBCOR8eCFQ7Ovg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="264280416"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/{i915,
 xe}: add shared header for VLV IOSF sideband units and registers
Date: Tue, 31 Mar 2026 14:40:58 +0300
Message-ID: <41b060b0d6453de39ca775eab10ee12b25c45b7d.1774957233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774957233.git.jani.nikula@intel.com>
References: <cover.1774957233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.549];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 85EC0368F29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move vlv_iosf_sb_reg.h to include/drm/intel/vlv_iosf_sb_regs.h. Use
_regs.h suffix to align better with other register headers. Move enum
vlv_iosf_sb_unit there as well, breaking the final include tie related
to IOSF sideband between display and i915 core.

With this, we can completely remove the xe compat vls_iosf_sb*.h
headers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_map.c    |  2 +-
 .../i915/display/intel_display_power_well.c   |  1 -
 drivers/gpu/drm/i915/display/intel_parent.c   |  2 +-
 drivers/gpu/drm/i915/display/vlv_sideband.h   |  3 +-
 drivers/gpu/drm/i915/vlv_iosf_sb.h            | 14 +------
 .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  | 42 -------------------
 .../xe/compat-i915-headers/vlv_iosf_sb_reg.h  |  6 ---
 .../drm/intel/vlv_iosf_sb_regs.h              | 18 ++++++--
 8 files changed, 19 insertions(+), 69 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
 rename drivers/gpu/drm/i915/vlv_iosf_sb_reg.h => include/drm/intel/vlv_iosf_sb_regs.h (95%)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 65204d68a759..3400080d78d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -4,13 +4,13 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/vlv_iosf_sb_regs.h>
 
 #include "intel_display_core.h"
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
-#include "vlv_iosf_sb_reg.h"
 
 #define __LIST_INLINE_ELEMS(__elem_type, ...) \
 	((__elem_type[]) { __VA_ARGS__ })
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f96a5088d138..6fbfd46461b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -34,7 +34,6 @@
 #include "intel_vga.h"
 #include "skl_watermark.h"
 #include "vlv_dpio_phy_regs.h"
-#include "vlv_iosf_sb_reg.h"
 #include "vlv_sideband.h"
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 4e01423a0392..47ce3b6fdd5b 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -19,10 +19,10 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
+#include <drm/intel/vlv_iosf_sb_regs.h>
 
 #include "intel_display_core.h"
 #include "intel_parent.h"
-#include "vlv_iosf_sb.h"
 
 /* dpt */
 struct intel_dpt *intel_parent_dpt_create(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.h b/drivers/gpu/drm/i915/display/vlv_sideband.h
index 8751a070b0ae..60a66abc1649 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.h
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.h
@@ -6,8 +6,7 @@
 
 #include <linux/types.h>
 
-#include "vlv_iosf_sb.h"
-#include "vlv_iosf_sb_reg.h"
+#include <drm/intel/vlv_iosf_sb_regs.h>
 
 enum dpio_phy;
 struct intel_display;
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
index e4002d5b5a2e..8129ba11c750 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -8,23 +8,11 @@
 
 #include <linux/types.h>
 
-#include "vlv_iosf_sb_reg.h"
+#include <drm/intel/vlv_iosf_sb_regs.h>
 
 struct drm_device;
 struct drm_i915_private;
 
-enum vlv_iosf_sb_unit {
-	VLV_IOSF_SB_BUNIT,
-	VLV_IOSF_SB_CCK,
-	VLV_IOSF_SB_CCU,
-	VLV_IOSF_SB_DPIO,
-	VLV_IOSF_SB_DPIO_2,
-	VLV_IOSF_SB_FLISDSI,
-	VLV_IOSF_SB_GPIO,
-	VLV_IOSF_SB_NC,
-	VLV_IOSF_SB_PUNIT,
-};
-
 void vlv_iosf_sb_init(struct drm_i915_private *i915);
 void vlv_iosf_sb_fini(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
deleted file mode 100644
index 69e1935e9cdf..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
+++ /dev/null
@@ -1,42 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2013-2021 Intel Corporation
- */
-
-#ifndef _VLV_IOSF_SB_H_
-#define _VLV_IOSF_SB_H_
-
-#include <linux/types.h>
-
-#include "vlv_iosf_sb_reg.h"
-
-struct drm_device;
-
-enum vlv_iosf_sb_unit {
-	VLV_IOSF_SB_BUNIT,
-	VLV_IOSF_SB_CCK,
-	VLV_IOSF_SB_CCU,
-	VLV_IOSF_SB_DPIO,
-	VLV_IOSF_SB_DPIO_2,
-	VLV_IOSF_SB_FLISDSI,
-	VLV_IOSF_SB_GPIO,
-	VLV_IOSF_SB_NC,
-	VLV_IOSF_SB_PUNIT,
-};
-
-static inline void vlv_iosf_sb_get(struct drm_device *drm, unsigned long ports)
-{
-}
-static inline u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr)
-{
-	return 0;
-}
-static inline int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
-{
-	return 0;
-}
-static inline void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports)
-{
-}
-
-#endif /* _VLV_IOSF_SB_H_ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
deleted file mode 100644
index cb7fa8e794a6..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../i915/vlv_iosf_sb_reg.h"
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb_reg.h b/include/drm/intel/vlv_iosf_sb_regs.h
similarity index 95%
rename from drivers/gpu/drm/i915/vlv_iosf_sb_reg.h
rename to include/drm/intel/vlv_iosf_sb_regs.h
index f977fb3b6e17..42d1def5534b 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb_reg.h
+++ b/include/drm/intel/vlv_iosf_sb_regs.h
@@ -3,8 +3,20 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#ifndef _VLV_IOSF_SB_REG_H_
-#define _VLV_IOSF_SB_REG_H_
+#ifndef _VLV_IOSF_SB_REGS_H_
+#define _VLV_IOSF_SB_REGS_H_
+
+enum vlv_iosf_sb_unit {
+	VLV_IOSF_SB_BUNIT,
+	VLV_IOSF_SB_CCK,
+	VLV_IOSF_SB_CCU,
+	VLV_IOSF_SB_DPIO,
+	VLV_IOSF_SB_DPIO_2,
+	VLV_IOSF_SB_FLISDSI,
+	VLV_IOSF_SB_GPIO,
+	VLV_IOSF_SB_NC,
+	VLV_IOSF_SB_PUNIT,
+};
 
 /* See configdb bunit SB addr map */
 #define BUNIT_REG_BISOC				0x11
@@ -177,4 +189,4 @@
 #define  CCK_FREQUENCY_STATUS_SHIFT		8
 #define  CCK_FREQUENCY_VALUES			(0x1f << 0)
 
-#endif /* _VLV_IOSF_SB_REG_H_ */
+#endif /* _VLV_IOSF_SB_REGS_H_ */
-- 
2.47.3

