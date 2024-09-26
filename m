Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC0C986CDA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 08:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C2610EAA0;
	Thu, 26 Sep 2024 06:49:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A6XICFId";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B163710EA9E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 06:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727333342; x=1758869342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lkdRYzde5Rx1LC2jnRk3g8nWMTg3mBN0Hl/mxLLO+JY=;
 b=A6XICFIdSg4Lcve8o6Iy5Vua9SpDgCIgiPCgwWSSs/7eK2rfCo9RZCqg
 L4N/9ecXUZV88BBzcz+mXMkyf6qs+ECklHF+pn3hHiVkJJ0PO4e7JhGea
 KJZZPVCzLdWobqgT3MyhtqGLqtLv1YXY+EoBYdWlO0ZtH/+sRvB/jmfPs
 EtuuvefGR6Ancttn4ZCDoriDtBFH7F+VLZa0qAq6dxkbvsLP447vBX14J
 HvR3UT4gJVdZEGMweEAF01sI0mepr8wQIq7Y8zfDu1Dn9FjejPkrn8toq
 Z/sjzh49UoJgb4whDHlBdTHHoyeeAo3v35CNbewpXV7wQ3GUcFDRRL6NJ g==;
X-CSE-ConnectionGUID: ry6ksoxhRvO143qPsSKIcQ==
X-CSE-MsgGUID: wvT89azdSJagquUFk7yVPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37554777"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="37554777"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 23:49:02 -0700
X-CSE-ConnectionGUID: Bwb17UKfQ/25po7rPjlPZQ==
X-CSE-MsgGUID: vSW8MPTISra7UXpM119gtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72340330"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.145])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 23:49:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mika.kahola@intel.com, gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/2] drm/i915/psr: Implement Wa 14019834836
Date: Thu, 26 Sep 2024 09:47:59 +0300
Message-Id: <20240926064759.1313335-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240926064759.1313335-1-jouni.hogander@intel.com>
References: <20240926064759.1313335-1-jouni.hogander@intel.com>
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

This patch implements HW workaround 14019834836 for display version 30.

v2:
  - move Wa 14019834836 to it's own function
  - apply only for display version 30

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 36 ++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f3db0f997ef31..eaa3dd40efc9e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2611,6 +2611,38 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
 	return true;
 }
 
+/* Wa 14019834836 */
+static void intel_psr_apply_pr_link_on_su_wa(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_encoder *encoder;
+	int hactive_limit;
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
+}
+
 static void
 intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 {
@@ -2623,6 +2655,10 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
+
+	/* Wa 14019834836 */
+	if (DISPLAY_VER(display) == 30)
+		intel_psr_apply_pr_link_on_su_wa(crtc_state);
 }
 
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
-- 
2.34.1

