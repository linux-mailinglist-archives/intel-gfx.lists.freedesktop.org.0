Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDeyC69ihGkK2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5521F0B49
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3807C10E829;
	Thu,  5 Feb 2026 09:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kw+cvvjT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD4F10E82D;
 Thu,  5 Feb 2026 09:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283691; x=1801819691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fiz38z7zkvp3jOM+6p67+GfsNUPEgLRFm9+a00B4NqQ=;
 b=Kw+cvvjTpEli3MROOm13hlS1U2XtFizneNpfZQB4ax60GHHMyccX6Rxj
 SQH+JXbZe50zrRGYNKb/rpSqC7y/lRim54MxdfDIiiNRF/1s17M9a3yfl
 5/G05enZkVyQy1AbD23bTdkA8hBu6e5zwmgT+/UqDQLak/KP03c2HARE0
 OuzHC44T7vELZt9OJ7ftW21am3KWGotmYWP7Xertc/3tzGs7ee88tV22q
 ISbWc6hU0EkBDQS/TTWmDJJ1Zn4kNZPced2WDEMJS/ZFpk8WuY0X9TE2e
 7nLbbTKrk+RS3QZrEhsu1LKc2pwDD9dNdX9s/Va2T0nwmwBPZ2RVnmt2L g==;
X-CSE-ConnectionGUID: yi7uFrWwRu6t3GK3RnUmZw==
X-CSE-MsgGUID: 8jk1DJH3T+2taS/eE3VyCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060114"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060114"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:11 -0800
X-CSE-ConnectionGUID: IqL0XGqxQj+cHPbcoCQfXg==
X-CSE-MsgGUID: Cl8xZLPdTMyak/H1E1nB2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807778"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:09 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 08/20] drm/i915: Remove i915_reg.h from intel_dram.c
Date: Thu,  5 Feb 2026 15:13:29 +0530
Message-ID: <20260205094341.1882816-9-uma.shankar@intel.com>
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
X-Rspamd-Queue-Id: D5521F0B49
X-Rspamd-Action: no action

Make intel_dram.c free from including i915_reg.h.

v3: Move MEM_SS info reg to display instead of pcode header (Jani)

v2: Move mem config register to newly added pcode header (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dram.c         | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                   | 6 ------
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index c598ccb3c78b..42aef6300320 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3075,6 +3075,12 @@ enum skl_power_gate {
 #define MTL_PIPE_CLKGATE_DIS2(pipe)		_MMIO_PIPE(pipe, _MTL_PIPE_CLKGATE_DIS2_A, _MTL_PIPE_CLKGATE_DIS2_B)
 #define   MTL_DPFC_GATING_DIS			REG_BIT(6)
 
+#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
+#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
+#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
+#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
+#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
+
 #define MTL_MEM_SS_INFO_QGV_POINT_OFFSET	0x45710
 #define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8)
 #define   MTL_TRCD_MASK			REG_GENMASK(31, 24)
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 61aefe77f90f..bd281d4b4c05 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -9,9 +9,9 @@
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
 
-#include "i915_reg.h"
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
+#include "intel_display_regs.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_parent.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b12c6bf68a2c..e905250f4fa5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1005,12 +1005,6 @@
 #define OROM_OFFSET				_MMIO(0x1020c0)
 #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
 
-#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
-#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
-#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
-#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
-
 #define MTL_MEDIA_GSI_BASE		0x380000
 
 #endif /* _I915_REG_H_ */
-- 
2.50.1

