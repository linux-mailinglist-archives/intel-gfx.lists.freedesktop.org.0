Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D5197E54F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 06:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D201E10E136;
	Mon, 23 Sep 2024 04:32:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1e3f6sA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1ABD10E136
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727065954; x=1758601954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DP8sFqWzZyZJzFhHbxTyAYNg9wYrC+mk6E2SuBItAuQ=;
 b=P1e3f6sA0yobvOh4SYyA8czBzfxP1yk2bJ2/PunH4v4rWGuo3Yr3AriI
 fwKJPjBAWADdORGZEmK1AJewScgKMYUed8EAa6sb4lpEuBn2B5yLLjrp3
 d6A87BF9ZPW9e6mlpfJnA68RaWGeus8QMBkVr01kQOWjTKsKob9RW27NE
 mjUer86FZzoyYaPTfpx9ISFCVBNF3tqYcszNOFXqkMUu66Ip452KyYUS9
 /xd3OU97XzCTRF3Kh/5GWh1i7r+bFg0iR/adQAJpyxF3MhQJYa/jwOEAn
 vkUcmuldRF2tkAiUE7M8elNVY5ZWAihx2JMqHTyIiTI/5JhLHITiHC6f5 w==;
X-CSE-ConnectionGUID: ESNlbHVQRfKlnqUVw9JO2w==
X-CSE-MsgGUID: igm6JvH8SX278zA0KyxiRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="37368677"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="37368677"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:32:34 -0700
X-CSE-ConnectionGUID: NuO/+HNsSqaKhzVM950Fhg==
X-CSE-MsgGUID: HhZelsvIRXqsY6V6YB+tIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="101786845"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:32:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/2] drm/i915/psr: Implement Wa 14019834836
Date: Mon, 23 Sep 2024 07:32:05 +0300
Message-Id: <20240923043205.2016070-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240923043205.2016070-1-jouni.hogander@intel.com>
References: <20240923043205.2016070-1-jouni.hogander@intel.com>
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

This patch implements HW workaround 14019834836 for display version >= 30.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 30 ++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f7dfd9435b589..e529132da93a4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2493,6 +2493,8 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_encoder *encoder;
+	int hactive_limit;
 
 	/* Wa_14014971492 */
 	if (!crtc_state->has_panel_replay &&
@@ -2500,6 +2502,34 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
+
+	/* Rest of the function is for Wa 14019834836 */
+	if (DISPLAY_VER(display) < 30)
+		return;
+
+	if (crtc_state->psr2_su_area.y1 != 0 ||
+	    crtc_state->psr2_su_area.y2 != 0)
+		return;
+
+	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		hactive_limit = intel_dp_is_uhbr(crtc_state) ? 1230 : 546;
+	else
+		hactive_limit = intel_dp_is_uhbr(crtc_state) ? 615 : 273;
+
+	if (crtc_state->hw.adjusted_mode.hdisplay < hactive_limit)
+		return;
+
+	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		if (!intel_dp_is_edp(intel_dp) &&
+		    intel_dp->psr.panel_replay_enabled &&
+		    intel_dp->psr.sel_update_enabled) {
+			crtc_state->psr2_su_area.y2++;
+			return;
+		}
+	}
 }
 
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
-- 
2.34.1

