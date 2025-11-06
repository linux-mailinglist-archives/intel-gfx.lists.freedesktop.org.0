Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBA3C3D4F1
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 21:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9816910E9C2;
	Thu,  6 Nov 2025 20:00:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKhdEoXx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AF410E9C2;
 Thu,  6 Nov 2025 20:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762459207; x=1793995207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fL3c0z32jFUaN92k7QfLdHQCPMSLzrpgyjVR+Jsl5Fk=;
 b=ZKhdEoXxQA4STBHDP56jLXxpK6kIUX7bkbR97fLYE8d7lYzLFmA8sKDN
 U8J+OakiQ1kvYqffvdmQJab/glhiV1VGhT48/ii0uAwJzKg06IAeR6x9p
 NkrxXtgp2rIvZFGwN3OPXMBgEXqRX1q2bYM/A0YMDy//sgDGo84YoMZ/3
 uUk5HZCETIAQyBxi/YxWRxYM34t4apQhFrKIlsOoeI7E9rTwtlEMOuukW
 TRbfsI7pwAJK+SstltiZteCkHhBCNMclD7Y33ZaXwypBWKqNWV9UWgy51
 gaz1YbHHne7pUicR+CI9NhqySndkZKU49V3IaVH163hmBpjsodjHEeWCt Q==;
X-CSE-ConnectionGUID: h9beCvQ6Qvuzzy80kCllqw==
X-CSE-MsgGUID: cngtLI/QTBK3igMTb5puNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64762224"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64762224"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 12:00:06 -0800
X-CSE-ConnectionGUID: djilhG0LTp2sfhGAFgE8SQ==
X-CSE-MsgGUID: QOuSdItQThyXqNemjJXRHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187106026"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 12:00:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 stable@vger.kernel.org
Subject: [PATCH] drm/i915/psr: fix pipe to vblank conversion
Date: Thu,  6 Nov 2025 22:00:00 +0200
Message-ID: <20251106200000.1455164-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

First, we can't assume pipe == crtc index. If a pipe is fused off in
between, it no longer holds. intel_crtc_for_pipe() is the only proper
way to get from a pipe to the corresponding crtc.

Second, drivers aren't supposed to access or index drm->vblank[]
directly. There's drm_crtc_vblank_crtc() for this.

Use both functions to fix the pipe to vblank conversion.

Fixes: f02658c46cf7 ("drm/i915/psr: Add mechanism to notify PSR of pipe enable/disable")
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: <stable@vger.kernel.org> # v6.16+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 05014ffe3ce1..c77a92ea7919 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -932,7 +932,8 @@ static bool is_dc5_dc6_blocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	u32 current_dc_state = intel_display_power_get_current_dc_state(display);
-	struct drm_vblank_crtc *vblank = &display->drm->vblank[intel_dp->psr.pipe];
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, intel_dp->psr.pipe);
+	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
 
 	return (current_dc_state != DC_STATE_EN_UPTO_DC5 &&
 		current_dc_state != DC_STATE_EN_UPTO_DC6) ||
-- 
2.47.3

