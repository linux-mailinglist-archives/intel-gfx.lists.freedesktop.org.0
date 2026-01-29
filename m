Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN1UBgTKe2kQIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDC4B4677
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E25C10E901;
	Thu, 29 Jan 2026 20:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="amiYZ14A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4295310E8FA;
 Thu, 29 Jan 2026 20:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769720320; x=1801256320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jmFR//1ujOKFKlcbga0dXUSA+VUQWA0LLddC0EhYzq8=;
 b=amiYZ14A6W5UQVnsaqFqHsugrqLmGkMc0+mlZVsPYSLJ1kHdvrshXoz1
 FrLcz8qzIn07SUWk/Qd79rv6WJxIYf51ulGvXxTuAAsIuHmR7VOjU+kb8
 dbJM2ZOsu7B3UWQ+klNzTbwS4d4JLXI6L7ffMuhM2vVzT0IHWD3MhP/5K
 Sn0186Z8u+vkFDheo6g9sJ58A/zbx50PslmJF2vUrRfmiQLayztSBc+5f
 wJpOqmuUW5SRrAggQXqbS5eHNN7afORAxbtia8XtkdqQ3DMxTX5erA3dB
 eWPauJUjb4I4ol9/x+15QIXzl5jgLdxnvGeeSJ+jHzqSprQtwlOM2dlf8 g==;
X-CSE-ConnectionGUID: l98z2wEgT5iEqfz2AaM24A==
X-CSE-MsgGUID: OLhmmtLBTdC7ztEPd6UAuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88545343"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88545343"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:58:40 -0800
X-CSE-ConnectionGUID: 9r39QMLASSmBduJnAN8f0Q==
X-CSE-MsgGUID: BiutdfxbRC6nE7EDWLp/QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239927202"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 29 Jan 2026 12:58:38 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 14/19] drm/i915: Remove i915_reg.h from intel_psr.c
Date: Fri, 30 Jan 2026 02:43:53 +0530
Message-ID: <20260129211358.1240283-15-uma.shankar@intel.com>
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
X-Rspamd-Queue-Id: BCDC4B4677
X-Rspamd-Action: no action

Move some chicken registers to display header to make
intel_psr.c free from including i915_reg.h.

v3: Update commit header

v2: Use display header instead of gmd common include (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 26 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 -
 drivers/gpu/drm/i915/i915_reg.h               | 28 -------------------
 3 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 3707c5999ffb..23626ee2d4ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -366,6 +366,32 @@
 #define OGAMC1			_MMIO(0x30020)
 #define OGAMC0			_MMIO(0x30024)
 
+#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
+#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
+#define   LATENCY_REPORTING_REMOVED(pipe)	_PICK((pipe), \
+						      _LATENCY_REPORTING_REMOVED_PIPE_A, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_B, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_C, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_D)
+#define   ICL_DELAY_PMRSP			REG_BIT(22)
+#define   DISABLE_FLR_SRC			REG_BIT(15)
+#define   MASK_WAKEMEM				REG_BIT(13)
+#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
+
+#define CHICKEN_PAR1_1		_MMIO(0x42080)
+#define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
+#define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
+#define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
+#define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
+#define   HSW_MASK_VBL_TO_PIPE_IN_SRD	REG_BIT(15) /* hsw/bdw */
+#define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
+#define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
+#define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
+
 #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
 #define   BXT_GMBUS_GATING_DIS		(1 << 14)
 #define   DG2_DPFC_GATING_DIS		REG_BIT(31)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 62208ffc5101..bde7dbfe15a8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -29,7 +29,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_reg.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f896ece3b568..b23ac1b8f495 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -807,41 +807,13 @@
 #define   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE	REG_BIT(5)
 #define   CHICKEN3_DGMG_DONE_FIX_DISABLE	REG_BIT(2)
 
-#define CHICKEN_PAR1_1		_MMIO(0x42080)
-#define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
-#define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
-#define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
-#define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
-#define   HSW_MASK_VBL_TO_PIPE_IN_SRD	REG_BIT(15) /* hsw/bdw */
-#define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
-#define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
-#define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
-
 #define CHICKEN_PAR2_1		_MMIO(0x42090)
 #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
 
-
-#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
-#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
-#define   LATENCY_REPORTING_REMOVED(pipe)	_PICK((pipe), \
-						      _LATENCY_REPORTING_REMOVED_PIPE_A, \
-						      _LATENCY_REPORTING_REMOVED_PIPE_B, \
-						      _LATENCY_REPORTING_REMOVED_PIPE_C, \
-						      _LATENCY_REPORTING_REMOVED_PIPE_D)
-#define   ICL_DELAY_PMRSP			REG_BIT(22)
-#define   DISABLE_FLR_SRC			REG_BIT(15)
-#define   MASK_WAKEMEM				REG_BIT(13)
-#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
-
 #define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
 #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
 #define   GMD_ID_STEP				REG_GENMASK(5, 0)
 
-
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
-- 
2.50.1

