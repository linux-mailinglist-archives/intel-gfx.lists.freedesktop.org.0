Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKDZDhv8jmmOGwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4681350AC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D72D10E7E2;
	Fri, 13 Feb 2026 10:25:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZtOKpaC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E884110E7F0;
 Fri, 13 Feb 2026 10:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770978322; x=1802514322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G0oCR6rGKCiESi7gWm3rVNqicGnIkmaZew5I2qzad9M=;
 b=FZtOKpaC5XGuFDCB0vLMP/TU/oqsLzdySNPYp4IhCbitdtWEoNTkKCtY
 9/gFM5MyIc0cVMrQ3EBMF+KzN8dYvmSr4Jo9yzYAWA3YTwDZM6ylNYI75
 e9bkTGD3RRBhmyU4qbc6zIXC/855PEk3+h+ORsmQM3/D68dxG8Velfobe
 I9yfS4mK6Xq03zTEccKnEM+bLFmLGadHjhTYwIudW8LMTSgw1EAQOHBdv
 q53t/vrnsmS2mITaudQBy8yrm91sbZSzFD9gwJXVd2sOLMfDSxyXT0h+Y
 plnG0oBNtqoYIq/PYbiite44owG6JBY9h1HUuzNHMqqIcU4Jrcmb3IJWK w==;
X-CSE-ConnectionGUID: jmLyOA2mROK3J7ZVj2HrRg==
X-CSE-MsgGUID: Z4vtLzDTShuVk9b8O7Nb2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72150676"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72150676"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:22 -0800
X-CSE-ConnectionGUID: PUDJSzjhTcy6TARlvMbJrQ==
X-CSE-MsgGUID: nhHx7YVdQGKFjh3BKZG4lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212919644"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.16])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:21 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 06/16] drm/i915/display: convert W/As in intel_ddi.c to new
 framework
Date: Fri, 13 Feb 2026 12:23:34 +0200
Message-ID: <20260213102500.406925-7-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260213102500.406925-1-luciano.coelho@intel.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
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
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: DD4681350AC
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c        | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_wa.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 94ae583e907f..7f1576bfe4b0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -52,6 +52,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dp.h"
@@ -1401,8 +1402,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 		int level;
 
 		/* Wa_16011342517:adl-p */
-		if (display->platform.alderlake_p &&
-		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_16011342517)) {
 			if ((intel_encoder_is_hdmi(encoder) &&
 			     crtc_state->port_clock == 594000) ||
 			     (intel_encoder_is_dp(encoder) &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 207129a16713..e7243e4dba4f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -99,6 +99,9 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return DISPLAY_VER(display) == 20;
 	case INTEL_DISPLAY_WA_15018326506:
 		return display->platform.battlemage;
+	case INTEL_DISPLAY_WA_16011342517:
+		return display->platform.alderlake_p &&
+			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
 	case INTEL_DISPLAY_WA_16023588340:
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index dff205b6492f..de0ed7698c61 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -38,6 +38,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15013987218,
 	INTEL_DISPLAY_WA_15018326506,
+	INTEL_DISPLAY_WA_16011342517,
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_22010178259,
-- 
2.51.0

