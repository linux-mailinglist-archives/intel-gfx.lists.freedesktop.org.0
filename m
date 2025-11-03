Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 279ACC2D6DE
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC3210E45F;
	Mon,  3 Nov 2025 17:20:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vt2A6AK7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0DF10E45D;
 Mon,  3 Nov 2025 17:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190412; x=1793726412;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=GSePIxb/BhuzdMpvgOwFfYGcSm7IqVxUdq5KxwuIaio=;
 b=Vt2A6AK7lqLN4XGcXOYgAV1zShOVesbPM1wNgMTDwGFhtRzX/T/lt/Vx
 /eRXmekUEXBQy2F/mP0kP+EY2QleAvXzaDX6s9A8ziITkXvnBh821uD0G
 oPPfEANHAC3blg1iVgYcZ2dUFE/dZbv+251Mh1+G7XHMcquqmOcLu4cXO
 Ud72Q3IAreXIkH6bA9KlBoBCCKx5R9bAEe/Gk5qjxyPsnUj5JjDyhfvT/
 KR/bYResaBlTlIbG8xehsFFRGovehNW7PP/1Aq1zGe/efFzox0fCC/0lj
 cwMcCNwLtFMd8Hd+Yd9fZQucKrkdJ6rcC3/k1x5mg1Kwmn0s+NN5IGEyO w==;
X-CSE-ConnectionGUID: porNW2TVSx+JTgWTC614TA==
X-CSE-MsgGUID: 4pe9Z9X/QjGKQc8ZuVv2og==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310017"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310017"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:11 -0800
X-CSE-ConnectionGUID: mD3ech0uTXyffV670dUphg==
X-CSE-MsgGUID: zfLoqMJ1QHOLcZDtdycBCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606385"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:01 -0300
Subject: [PATCH v3 10/29] drm/i915/xe3p_lpd: Drop support for interlace
 mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-10-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
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

