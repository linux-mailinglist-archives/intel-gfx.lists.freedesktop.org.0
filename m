Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B376C35F94
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B1910E22E;
	Wed,  5 Nov 2025 14:08:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyvfOe8R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CF910E22E;
 Wed,  5 Nov 2025 14:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351720; x=1793887720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XRfaJFqTlqmyBY2WbS7PXxpKANaw7zPoXZy2LwZbhGk=;
 b=VyvfOe8R/z7ene/qTKDHvXr+5iebzIWfgISKx9fX0quzN73X/zRFr3zN
 V0XPg7MYzHiK4F3ZU137GDUxP4ZdhlsW9cnFz7eIQhvFuYYE8jd1XcVuY
 dqJBlZ759lxbKJU5CVQGRI9J21cW+3i5N9fV6LFWmrDd8BKxVbZ6UVxGK
 T7qj61rsk1T6RydvGZ/Xp3C/Xaf8/daH5a39x/E+mZAxeyzZgR2MXNDEf
 ZyMhUgylKuo433a/4DiEkZm5LlQjunVpGcZj269foAZd2wVnfYA/GfPT6
 z63Xmya44tF0J39Xw46yOAjypAGTUgxgQLi8kR9RENn2DudnrbLPJXJZJ g==;
X-CSE-ConnectionGUID: p3SDHJRuTHewtzrTQ1xdQg==
X-CSE-MsgGUID: X6Y1Xi0FR5a8j13YBEY3Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348346"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348346"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:20 -0800
X-CSE-ConnectionGUID: jPuicsfKQeiDTQPuNoe1HQ==
X-CSE-MsgGUID: W6BWKRQlRfK27Q35k3theA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562973"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:19 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 07/17] drm/i915/xe3p_lpd: Remove gamma,csc bottom color checks
Date: Wed,  5 Nov 2025 11:06:56 -0300
Message-ID: <20251105140651.71713-26-gustavo.sousa@intel.com>
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
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-7-00e87b510ae7@intel.com
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

