Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77174BF977E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D954B10E689;
	Wed, 22 Oct 2025 00:32:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWwE0SSC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EC110E689;
 Wed, 22 Oct 2025 00:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093131; x=1792629131;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=XCuFAW+zH5fQxCj2QkaozFGGvjg4KNdh97B2bUw89WQ=;
 b=hWwE0SSCkGpN2k9W0oK6Mak53fBPSsNYrU/BfWU9Le6KlOmBht+CWdjy
 HqHhQN2mwvvqOl0CKWJSfDEa85PmnmiroANBLE1ntXWk3+cvVEVryTWKI
 MQe/EHUnnVE5xOGqj5J4fWx6s6/8mRh/lSrnPevWqEPvJPd2TULdDX7rF
 7hDZjjMBvnJcPE3q4npCm9/+/WJDLSjEuvw/eE4pLJ4FTqyFGoce+2idM
 S+T3i5FY8F0embOnCuVocnxMSK9GtEzlmJ0DW/lg+GoPGbsyjke/gUo9p
 rrhe3g5i5WanNnkuLTpSiVVlm5vFeiM5YLJNpQkHh/KzOY/X2M5b0JA+7 A==;
X-CSE-ConnectionGUID: 3vcDbqhzSGyKTe1y0ABv1A==
X-CSE-MsgGUID: 9FOaJxCwTgaruDs7Vp2Hyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855772"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855772"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:04 -0700
X-CSE-ConnectionGUID: 6ir+fUl1TqiZsS8aUsRkGg==
X-CSE-MsgGUID: pwsgPO/nQt6kWkZfGsiRbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132454"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:00 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:43 -0300
Subject: [PATCH v2 18/32] drm/i915/xe3p_lpd: Drop support for interlace
 mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-18-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
X-Mailer: b4 0.15-dev
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Interlace mode is officially removed from HW from Xe3p_LPD.  The
register TRANS_VSYNCSHIFT and the bits in TRANS_CONF are now removed, so
make sure we do not set/get these anymore.

Bspec: 69961, 70000
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a8b4619de347..5ae02bfc2148 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2633,7 +2633,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		crtc_vblank_start = 1;
 	}
 
-	if (DISPLAY_VER(display) >= 4)
+	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 35)
 		intel_de_write(display,
 			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
 			       vsyncshift);
@@ -2771,7 +2771,7 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(display) == 2)
+	if (DISPLAY_VER(display) == 2 || DISPLAY_VER(display) >= 35)
 		return false;
 
 	if (DISPLAY_VER(display) >= 9 ||
@@ -3162,10 +3162,12 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	if (display->platform.haswell && crtc_state->dither)
 		val |= TRANSCONF_DITHER_EN | TRANSCONF_DITHER_TYPE_SP;
 
-	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
-		val |= TRANSCONF_INTERLACE_IF_ID_ILK;
-	else
-		val |= TRANSCONF_INTERLACE_PF_PD_ILK;
+	if (DISPLAY_VER(display) < 35) {
+		if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+			val |= TRANSCONF_INTERLACE_IF_ID_ILK;
+		else
+			val |= TRANSCONF_INTERLACE_PF_PD_ILK;
+	}
 
 	if (display->platform.haswell &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)

-- 
2.51.0

