Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6570C2D6D5
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F194910E45A;
	Mon,  3 Nov 2025 17:20:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aTkNdH7q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D810F10E206;
 Mon,  3 Nov 2025 17:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190401; x=1793726401;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=z/H7z3PlOT+UvENaEjSx/DLODtJKEKirQjyjEaW720Y=;
 b=aTkNdH7qrL3cShgF6cPGWfUVADIUV2O++eXbiU6f35HGORPtKmZTBLHy
 7SIJBZYcQofYHoRgtU00XG08Jd7kyAUFu9lUgf3sPqsJaQ7ftPp2A/yJ/
 sVBwkmjhgjk3ntX81sH+cmOLcHL9FCChNG7aaN/yKUbNgVtJiEu2M817l
 aIJ9Z6yaEGP8Mx1EJFHCgd7HwK2zIdPvNpMwqtgNgY/yr1ixxEmrzH+U+
 aanQv7fUdNP/E+SGmnWW6LWqTclB74yuObFd1I9DgrsD7MjRNwT4fuTS7
 NRRsJ3VziO6yRtVZRomymhHjyb7qT9ObQlQW3dl3xR4j+hfkG3tmYf422 Q==;
X-CSE-ConnectionGUID: JZImbFX3QQCFUwFxY9mgfw==
X-CSE-MsgGUID: DRC3lULMTJisNdh3Tz7bBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309987"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309987"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:00 -0800
X-CSE-ConnectionGUID: /yoOmnw5RhyhfgYPJ6gE9A==
X-CSE-MsgGUID: 01rPr1FYS4W0UsYpLyukkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606292"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:56 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:17:58 -0300
Subject: [PATCH v3 07/29] drm/i915/xe3p_lpd: Remove gamma,csc bottom color
 checks
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-7-00e87b510ae7@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

With Xe3p_LPD, the SKL_BOTTOM_COLOR_GAMMA_ENABLE and
SKL_BOTTOM_COLOR_CSC_ENABLE bits are being removed. Thus, we need not
set gamma_enable nor csc_enable in crtc_state.

Note that GAMMA_MODE.POST_CSC_GAMMA_ENABLE and CSC_MODE.ICL_CSC_ENABLE
are the documented alternatives for the bottom color bits being removed.
But as these suggested bits are being checked in state checker as part
of gamma_mode, csc_mode fields and as gamma_enable/csc_enable are not
being used anywhere else functionally post ICL, we need not set these
fields in crtc_state.

Bspec: 69734
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 1e97020e7304..a217a67ceb43 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1090,18 +1090,19 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 tmp;
 
 	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
 	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
 
-	tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
+	if (DISPLAY_VER(display) < 35) {
+		u32 tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
 
-	if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
-		crtc_state->gamma_enable = true;
+		if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
+			crtc_state->gamma_enable = true;
 
-	if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
-		crtc_state->csc_enable = true;
+		if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
+			crtc_state->csc_enable = true;
+	}
 }
 
 static void skl_color_commit_arm(struct intel_dsb *dsb,

-- 
2.51.0

