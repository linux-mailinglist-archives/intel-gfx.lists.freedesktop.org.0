Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2C3C35F9D
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335F210E769;
	Wed,  5 Nov 2025 14:08:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TO6CKq39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D96610E764;
 Wed,  5 Nov 2025 14:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351729; x=1793887729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jkhet8d1S/a3pJkNygAtA7VO5vLtvN2rpvPGPDaeBNo=;
 b=TO6CKq39OwOFa5+QH60oKFY/RWcpqvHXqpN0slG3tlaotKxhEnTldkxG
 aQdvf3bmI4u6P8w0y3OS2xplK9Z2TU69SNIhK3cDBlKmaniWMz3tCp7e/
 wIgZDtJqNwjGH4k3fSovN8MA5ZuPE85IS+n6XhWyKiLkEa8EDUpDELu7v
 Q2a5TavM9kuf8xQ4iCm5r4tDTDp/A6fTnqWCkiDjjGTzjrXhyyqV/r1Vn
 n1ID3YtAc46fhAjhxoLMRVK8F79p7HgPeYdPj50iAdrQ5S4Jd8Qdudd4E
 iNQ3iqkLO4g4HZxMttlhtSSDlkqJySNLozR3eEvRf/0SC7glVKzb80ljN w==;
X-CSE-ConnectionGUID: K4vy21OlTAekESxiy5jEcA==
X-CSE-MsgGUID: zr+Z0yEcSPKbaJoDSOs+9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348412"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348412"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:25 -0800
X-CSE-ConnectionGUID: patQV7jURbGJi2BlLfcnkw==
X-CSE-MsgGUID: rFhBgKSLR3+AT6+ljOxMoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562986"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:23 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 10/17] drm/i915/xe3p_lpd: Drop support for interlace mode
Date: Wed,  5 Nov 2025 11:06:59 -0300
Message-ID: <20251105140651.71713-29-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Interlace mode is officially removed from HW from Xe3p_LPD.  The
register TRANS_VSYNCSHIFT and the bits in TRANS_CONF are now removed, so
make sure we do not set/get these anymore.

Bspec: 69961, 70000
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-10-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 42ec78798666..25986bd8fbdd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2658,7 +2658,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		crtc_vblank_start = crtc_vdisplay + crtc_state->set_context_latency;
 	}
 
-	if (DISPLAY_VER(display) >= 4)
+	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 35)
 		intel_de_write(display,
 			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
 			       vsyncshift);
@@ -2799,7 +2799,7 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(display) == 2)
+	if (DISPLAY_VER(display) == 2 || DISPLAY_VER(display) >= 35)
 		return false;
 
 	if (DISPLAY_VER(display) >= 9 ||
@@ -3190,10 +3190,12 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
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

