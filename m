Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENSpIXwgjmk+/wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5BF13067C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53EB610E289;
	Thu, 12 Feb 2026 18:48:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGpC4bM9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B293D10E289;
 Thu, 12 Feb 2026 18:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770922105; x=1802458105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PtxT8mNJbkz6qoEEXDmAXtEOPGLFG5bAnuVcbsdYsw4=;
 b=CGpC4bM9ra4auOqbymT9+hRomkjkvtN1zKpp8nMTerr2Pg54MwJJPPhs
 P3IcSrLj6DJ16TLNiMsUdmQOt0pzNtwGm9LiY9Jx7/DL86tvGQp3hA8mb
 2pM+v/nhUbsd/ubfkHigE70BXbAoZRN+9faVxvc5ph1mhTUG1tsYBXGFb
 zWvejGrDerXUTzySDFclHGaHG0OWhTHCMHUgM3bfAOFWYmcIlINYcSQlh
 UxADwE8Ph3h6WqxsUJrmACwhkWiYV8VxuIUJMGwe446fGuiRM5Gsv1W6u
 qnPogrG61ZDBRH5kc1J1Asi1NdReVH1Kb9evQLb9QCP6JqLw1jjYYe4Qj Q==;
X-CSE-ConnectionGUID: lDnlqeOxRTikDbeNZnSatA==
X-CSE-MsgGUID: tClJvR6RTAa0WrBNAWmF9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72204103"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="72204103"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:24 -0800
X-CSE-ConnectionGUID: us4a9jUUQCSgD97nloHvWQ==
X-CSE-MsgGUID: W+u2KlD2SIqvU5ewhBqvng==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:23 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 01/15] drm/i915/display: convert audio workaround to new
 framework
Date: Thu, 12 Feb 2026 20:45:59 +0200
Message-ID: <20260212184737.352515-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212184737.352515-1-luciano.coelho@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1C5BF13067C
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c      | 16 +++-------------
 drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
 3 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 5f3c175afdd2..be4b5dbd36fe 100644
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
@@ -440,7 +430,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
-	if (needs_wa_14020863754(display))
+	if (intel_display_wa(display, 14020863754))
 		intel_de_rmw(display, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
 
 	intel_audio_sdp_split_update(old_crtc_state, false);
@@ -572,7 +562,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 
 	intel_audio_sdp_split_update(crtc_state, true);
 
-	if (needs_wa_14020863754(display))
+	if (intel_display_wa(display, 14020863754))
 		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
 
 	/* Enable audio presence detect */
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index c2ccdca2c2f3..99ccc383ee70 100644
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
index 767420d5f406..bb1382148b6e 100644
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

