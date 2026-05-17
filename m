Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCgNFukrCWrIMAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 04:46:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D02155F0B6
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 04:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3D810E05F;
	Sun, 17 May 2026 02:45:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uz6e+RVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7995910E05F;
 Sun, 17 May 2026 02:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778985957; x=1810521957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kjkfywNHxl/uItXweCrTEh2p5VmOonndEClKUAIur4c=;
 b=Uz6e+RVGfd+e8WwRtwfADudoXHw7iiNl6wJEh1hQyMKNzLlEsyqjeLOc
 cJL6V39jflTOsV28eal2CSnBMvv5PPAfDDZy8+RLZx2EK3MHisthFAHeL
 ooEKoVsU2qwUGd3+fUe7NUKqg11foL4Vm9erl26xHnQxW7olzfHiD3ijV
 hPgU0zhRdO9WSRoA0VUy05kLfmRSyYhIuREC4Z0BPcCw64z48qXdHI3oo
 L4WtsPlwkHTI7ezgbrL8xaXbUi8ulyswZtpfKlZiomKhGFhbj8eubvK1m
 1IfQt19KtDtMip2Pe+GCJn4ljLxM68GOFGxl8OnGnTGrDUPcUuwVmTLdU w==;
X-CSE-ConnectionGUID: ft+h7WkXT8eR3RKy4bS54w==
X-CSE-MsgGUID: WOihAu4yQ1ymcFmn2dhrEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11788"; a="79783048"
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; d="scan'208";a="79783048"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2026 19:45:57 -0700
X-CSE-ConnectionGUID: IL2gXEHjSJWT/ha8xJJVmg==
X-CSE-MsgGUID: Vh5QcHQGTl6uP2sTgYeoyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; d="scan'208";a="234624361"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 16 May 2026 19:45:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 gustavo.sousa@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver >= 30
Date: Sun, 17 May 2026 08:15:51 +0530
Message-Id: <20260517024551.1015553-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260515082443.975592-1-suraj.kandpal@intel.com>
References: <20260515082443.975592-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 2D02155F0B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Starting with display version 30, the per-pipe frame timestamp is read
from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the display
and select the appropriate register based on DISPLAY_VER(), and update
all callers intel_vblank accordingly.

Bspec: 79482
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
v1 -> v2:
- Define registers in correct location (Jani)
- Use the intel_display_wa() helper to select the correct register (Gustavo)
- Fix early vblank timeout issue when DMC is not loaded

 .../gpu/drm/i915/display/intel_display_wa.c    |  2 ++
 .../gpu/drm/i915/display/intel_display_wa.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h  |  6 ++++++
 drivers/gpu/drm/i915/display/intel_vblank.c    | 18 ++++++++++++++----
 4 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 7d3d63a59882..44c2a503c911 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -110,6 +110,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 2000 ||
 			DISPLAY_VERx100(display) == 1401;
+	case INTEL_DISPLAY_WA_14022946399:
+		return DISPLAY_VER(display) >= 30;
 	case INTEL_DISPLAY_WA_14025769978:
 		return DISPLAY_VER(display) == 35;
 	case INTEL_DISPLAY_WA_15013987218:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 15fec843f15e..884463a894c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -42,6 +42,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14014143976,
 	INTEL_DISPLAY_WA_14016740474,
 	INTEL_DISPLAY_WA_14020863754,
+	INTEL_DISPLAY_WA_14022946399,
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15013987218,
 	INTEL_DISPLAY_WA_15018326506,
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 38e342b45af0..985642a79a52 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -644,4 +644,10 @@ enum pipedmc_event_id {
 #define _PIPEDMC_DCB_BALANCE_RESET_B		0x986a8
 #define PIPEDMC_DCB_BALANCE_RESET(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_BALANCE_RESET_A,\
 							   _PIPEDMC_DCB_BALANCE_RESET_B)
+
+#define _PIPEDMC_FRMTMSTMP_A			0x5f0ac
+#define _PIPEDMC_FRMTMSTMP_B			0x5f4ac
+#define PIPEDMC_FRMTMSTMP(pipe)			\
+	_MMIO_PIPE(pipe, _PIPEDMC_FRMTMSTMP_A, _PIPEDMC_FRMTMSTMP_B)
+
 #endif /* __INTEL_DMC_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 28d81199792e..145c342f445f 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -15,6 +15,8 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
+#include "intel_dmc_regs.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 
@@ -156,8 +158,12 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
 		 * pipe frame time stamp. The time stamp value
 		 * is sampled at every start of vertical blank.
 		 */
-		scan_prev_time = intel_de_read_fw(display,
-						  PIPE_FRMTMSTMP(crtc->pipe));
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_14022946399))
+			scan_prev_time = intel_de_read_fw(display,
+							  PIPEDMC_FRMTMSTMP(crtc->pipe));
+		else
+			scan_prev_time = intel_de_read_fw(display,
+							  PIPE_FRMTMSTMP(crtc->pipe));
 
 		/*
 		 * The TIMESTAMP_CTR register has the current
@@ -165,8 +171,12 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
 		 */
 		scan_curr_time = intel_de_read_fw(display, IVB_TIMESTAMP_CTR);
 
-		scan_post_time = intel_de_read_fw(display,
-						  PIPE_FRMTMSTMP(crtc->pipe));
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_14022946399))
+			scan_post_time = intel_de_read_fw(display,
+							  PIPEDMC_FRMTMSTMP(crtc->pipe));
+		else
+			scan_post_time = intel_de_read_fw(display,
+							  PIPE_FRMTMSTMP(crtc->pipe));
 	} while (scan_post_time != scan_prev_time);
 
 	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
-- 
2.34.1

