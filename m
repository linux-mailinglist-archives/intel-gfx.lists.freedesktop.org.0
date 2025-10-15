Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35857BDC4F0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16AC10E705;
	Wed, 15 Oct 2025 03:17:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QltioSoy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E9B910E705;
 Wed, 15 Oct 2025 03:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498278; x=1792034278;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=ge+KEOFxUsccvrKsrU9mlpb/PbFIRNbQtsJl5a7L3Iw=;
 b=QltioSoyJLvb6suTQklpMlUgIV28MYr2qOjIOzz/oVUFVXvaOx3rsyLW
 Qh/bpEsx1MTfHe8Z2ZLbYaPoPph4XyaF4ioI+eatGmJyxl3xSrv59S6AG
 V4qM9U/Kb6lkCkU/zzyc2hB+SJWewGqNG74ZgnSjyyNijz6aN7H/14HK8
 4i5PMUnWs7op2aqr+Ir0mbAfu5r0BadLaifuaEVcr/18z8rl/nuwNbVq0
 iw2Z6NHnUW9cmx/MZLYCrOgqmorsJWS3dERQnQ0lo7dkHvQeACu9OH0Tl
 2uqFYyjv8p+fW7bhs+N2LGG3w2YC1UbO4blnt67cQA8Hr7c22c7Yomu39 w==;
X-CSE-ConnectionGUID: upfEAqRgTuKMYiZLB0iMEw==
X-CSE-MsgGUID: m4v46f5CTeyC+ON2mrQVnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577243"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577243"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:58 -0700
X-CSE-ConnectionGUID: vNlemXReTrW/puS72/WCpA==
X-CSE-MsgGUID: gEWTQgMzTt6bkujUcxG5XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302887"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:54 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:19 -0300
Subject: [PATCH 19/32] drm/i915/xe3p_lpd: PSR SU minimum lines is 4
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-19-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

From: Jouni Högander <jouni.hogander@intel.com>

Ensure the minimum selective update line count is 4 in case of display
version 35 and onwards.

Bspec: 69887
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2131473cead6..c663ca91f490 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2701,6 +2701,29 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 		intel_psr_apply_pr_link_on_su_wa(crtc_state);
 }
 
+static void intel_psr_su_area_min_lines(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_rect damaged_area;
+
+	/*
+	 * Bspec mentions 4 being minimum lines in SU for display version
+	 * 35 and onwards.
+	 */
+	if (DISPLAY_VER(display) < 35 || drm_rect_height(&crtc_state->psr2_su_area) >= 4)
+		return;
+
+	damaged_area.x1 = crtc_state->psr2_su_area.x1;
+	damaged_area.y1 = crtc_state->psr2_su_area.y1;
+	damaged_area.x2 = crtc_state->psr2_su_area.x2;
+	damaged_area.y2 = crtc_state->psr2_su_area.y2;
+
+	damaged_area.y2 +=  4 - drm_rect_height(&damaged_area);
+	drm_rect_intersect(&damaged_area, &crtc_state->pipe_src);
+	damaged_area.y1 -=  4 - drm_rect_height(&damaged_area);
+	clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
@@ -2809,6 +2832,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
+	intel_psr_su_area_min_lines(crtc_state);
+
 	intel_psr_apply_su_area_workarounds(crtc_state);
 
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);

-- 
2.51.0

