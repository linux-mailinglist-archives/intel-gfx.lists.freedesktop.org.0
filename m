Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLVgMyStnWmgQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C87918805F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72C510E321;
	Tue, 24 Feb 2026 13:52:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bejcPBhA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB1A810E584;
 Tue, 24 Feb 2026 13:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771941153; x=1803477153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/cOtuolsD/w85xfbDKhxlzpjuC8C0Y+ffRXPAfwygSU=;
 b=bejcPBhAgxpuMjGuz8EZvsi0u9WJdVScn3mKSPHvqmn7GNBaNdOwJ/YX
 dFjMY4ksRyDhVv3mHDnfFjmFjX934TAJK7I36NlxZdG9RJrnudHyuT4Uu
 ITwfSD7auuO1hz7Ii7obXRfIMmDSBCzalcxL4uMhtv7EaGA33w6D/eZYn
 QMyZGdaYU3DRo022ixIguKeOb7J4pXbhKZpNX1caNBg5RVMWjOsMraLNq
 iLqyEfKJP74uYTq61WPHgCAwCJP+DdgWAJFxWjbusJKzNf5+egR3oIFK/
 rbpjJmv7iQt0JkftxUEbRO9TdHqO2nP1sowHHDnoGXGQQMAuuL243SybX g==;
X-CSE-ConnectionGUID: j+Z8g0w6RUuiGkCdeGhoHw==
X-CSE-MsgGUID: ZZyoLZERTIW0RjRNwTw4lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60530993"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60530993"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:33 -0800
X-CSE-ConnectionGUID: qhKm0jwWRnSb5OAlzW4usQ==
X-CSE-MsgGUID: RV7MrlPrR+2FG2Fc8TbY0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215925216"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.201])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:31 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v4 02/16] drm/i915/display: convert audio workaround to new
 framework
Date: Tue, 24 Feb 2026 15:49:49 +0200
Message-ID: <20260224135208.140752-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260224135208.140752-1-luciano.coelho@intel.com>
References: <20260224135208.140752-1-luciano.coelho@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 4C87918805F
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 24 +++++++++----------
 .../gpu/drm/i915/display/intel_display_wa.c   |  4 ++++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 3 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 5f3c175afdd2..081627e0d917 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -37,6 +37,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_lpe_audio.h"
 
 /**
@@ -184,17 +185,6 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
 	{ 192000, TMDS_445_5M, 20480, 371250 },
 };
 
-/*
- * WA_14020863754: Implement Audio Workaround
- * Corner case with Min Hblank Fix can cause audio hang
- */
-static bool needs_wa_14020863754(struct intel_display *display)
-{
-	return DISPLAY_VERx100(display) == 3000 ||
-		DISPLAY_VERx100(display) == 2000 ||
-		DISPLAY_VERx100(display) == 1401;
-}
-
 /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
 static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state)
 {
@@ -440,7 +430,11 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
-	if (needs_wa_14020863754(display))
+	/*
+	 * WA_14020863754: Implement Audio Workaround
+	 * Corner case with Min Hblank Fix can cause audio hang
+	 */
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
 		intel_de_rmw(display, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
 
 	intel_audio_sdp_split_update(old_crtc_state, false);
@@ -572,7 +566,11 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 
 	intel_audio_sdp_split_update(crtc_state, true);
 
-	if (needs_wa_14020863754(display))
+	/*
+	 * WA_14020863754: Implement Audio Workaround
+	 * Corner case with Min Hblank Fix can cause audio hang
+	 */
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
 		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
 
 	/* Enable audio presence detect */
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 1d8340b36c01..b383bfad3af6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -74,6 +74,10 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 			DISPLAY_VERx100(display) == 3500;
 	case INTEL_DISPLAY_WA_14011503117:
 		return DISPLAY_VER(display) == 13;
+	case INTEL_DISPLAY_WA_14020863754:
+		return DISPLAY_VERx100(display) == 3000 ||
+			DISPLAY_VERx100(display) == 2000 ||
+			DISPLAY_VERx100(display) == 1401;
 	case INTEL_DISPLAY_WA_14025769978:
 		return DISPLAY_VER(display) == 35;
 	case INTEL_DISPLAY_WA_15018326506:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 06c1f62c0f6d..b1bcc18dd2c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -29,6 +29,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
 enum intel_display_wa {
 	INTEL_DISPLAY_WA_13012396614,
 	INTEL_DISPLAY_WA_14011503117,
+	INTEL_DISPLAY_WA_14020863754,
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15018326506,
 	INTEL_DISPLAY_WA_16023588340,
-- 
2.51.0

