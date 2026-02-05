Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG4QL6tihGkK2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3EBF0B2C
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A9310E82B;
	Thu,  5 Feb 2026 09:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VUEsVcbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 877D310E82B;
 Thu,  5 Feb 2026 09:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283687; x=1801819687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3dBhgSAhQKSQY6MBahfYGFgaVwrDDgdcBiLqBFE0QXY=;
 b=VUEsVcbco1OA0YpR7u6EF3DrtwuRe2YMR7CEE9ypidGCFLJ7CjXmy4+p
 Gcwn0x3tlp9ZhAGpDKynKJl1+ckH55s/7dOSZtWbzklSbTH/1QVkLB+1+
 5eRGD4XyX5xnNCX79FAOvoAc+cUDsSsUdFhAvIAu2bg9PLYD3LzvQSvhU
 23HpOqmEM3LgonvXkPqykNhmus2v7wJDhTxpxT/Z21sWRM3BbvbcboABZ
 a8ULnxuBG8HSrhnp0vf4puVdxY2NgEo/JIws4gzDxSD0xbQ4F/jBnx03Z
 IAaXuQHwgDPf7brxMdCDxIDoLjht+nBXpxe0KHqsZekJ0g51/yRH86Wwk Q==;
X-CSE-ConnectionGUID: ruVRtFudSo+DuI7nXYjQQw==
X-CSE-MsgGUID: zGixSIaeQbyIfrE+PHn3LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060105"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060105"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:07 -0800
X-CSE-ConnectionGUID: 2Bi2YfiGQ561jgNYjjnSHg==
X-CSE-MsgGUID: y0IDantTSbmMzhM2/u0YDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807771"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:05 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 06/20] drm/i915: Remove i915_reg.h from intel_display_device.c
Date: Thu,  5 Feb 2026 15:13:27 +0530
Message-ID: <20260205094341.1882816-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6E3EBF0B2C
X-Rspamd-Action: no action

Move GU_CNTL_PROTECTED and GMD_ID_DISPLAY to common header,
this helps intel_display_device.c free from i915_reg.h dependency.

v2: Move GMD_ID_DISPLAY to display header instead of common (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++----
 drivers/gpu/drm/i915/display/intel_display_regs.h   | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h                     | 4 ----
 3 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 471f236c9ddf..d449528bfc7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -10,7 +10,6 @@
 #include <drm/drm_print.h>
 #include <drm/intel/pciids.h>
 
-#include "i915_reg.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
 #include "intel_display.h"
@@ -1539,9 +1538,9 @@ probe_gmdid_display(struct intel_display *display, struct intel_display_ip_ver *
 		return NULL;
 	}
 
-	gmd_id.ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
-	gmd_id.rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
-	gmd_id.step = REG_FIELD_GET(GMD_ID_STEP, val);
+	gmd_id.ver = REG_FIELD_GET(GMD_ID_DISPLAY_ARCH_MASK, val);
+	gmd_id.rel = REG_FIELD_GET(GMD_ID_DISPLAY_RELEASE_MASK, val);
+	gmd_id.step = REG_FIELD_GET(GMD_ID_DISPLAY_STEP, val);
 
 	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++) {
 		if (gmd_id.ver == gmdid_display_map[i].ver &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index ab184670c845..c598ccb3c78b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -6,6 +6,9 @@
 
 #include "intel_display_reg_defs.h"
 
+#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
+#define   DEPRESENT			REG_BIT(9)
+
 #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
 #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
 #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
@@ -1626,6 +1629,11 @@
 #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
 #define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
 
+#define GMD_ID_DISPLAY				_MMIO(0x510a0)
+#define   GMD_ID_DISPLAY_ARCH_MASK		REG_GENMASK(31, 22)
+#define   GMD_ID_DISPLAY_RELEASE_MASK		REG_GENMASK(21, 14)
+#define   GMD_ID_DISPLAY_STEP			REG_GENMASK(5, 0)
+
 #define XE2LPD_DE_CAP			_MMIO(0x41100)
 #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
 #define   XE2LPD_DE_CAP_DSC_MASK	REG_GENMASK(29, 28)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index bb87af7d3c22..90a5c60e7667 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -116,9 +116,6 @@
  *  #define GEN8_BAR                    _MMIO(0xb888)
  */
 
-#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
-#define   DEPRESENT			REG_BIT(9)
-
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
 #define   DRIVERFLR			REG_BIT(31)
@@ -925,7 +922,6 @@
 #define   MASK_WAKEMEM				REG_BIT(13)
 #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
 
-#define GMD_ID_DISPLAY				_MMIO(0x510a0)
 #define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
 #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
 #define   GMD_ID_STEP				REG_GENMASK(5, 0)
-- 
2.50.1

