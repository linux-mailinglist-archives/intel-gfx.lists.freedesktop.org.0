Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10F7A00A17
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6C410E8CB;
	Fri,  3 Jan 2025 13:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OvWaCBOz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3D9810E8BF;
 Fri,  3 Jan 2025 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912420; x=1767448420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n8/7NS2tkE1IFabUx9ZQm0jdfQ7q6vOHy8MuH4kY6V4=;
 b=OvWaCBOzY8HfkZwB2UqBoo0sSN1pLLc8//sMbdkH+wC0AAGzAnlOjZ34
 4zM4Cs9FYCNUOja8UYWJTLlXWUzcqJPg9KU5/6mBCc5BB5GeFoZIhRBAS
 GJ+jOTEs9TmdXbF+mYzmqBC/6nJdNG8s2Zpx73MjTIfIu2Q1WwIbkxIsn
 vj9OhlfTok6H8VFIwEi235uj9HLG6c0ifKnTPawz3EBpYPv+4T65drLPl
 UaW43ZMbT6jKe/wvGXXZqsqab+OLX92SJMc1ouTJ8AxqDASdTRIRuxPzy
 WhUUqHTZ5YgP4CsAlCOYW4z6SiWLC5t2s4zrv1IWvjlnzvLOVoIBO0W9/ Q==;
X-CSE-ConnectionGUID: OHRnUI4qQ8+LsjAP2lg/EQ==
X-CSE-MsgGUID: Ie02CI9YQ0eYJYWPZtFaEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36040301"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36040301"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:40 -0800
X-CSE-ConnectionGUID: AjPCjKcDQZa5gtmIKGSX6w==
X-CSE-MsgGUID: 3McUMSQRRoOsTFC1GXafTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105852035"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 11/16] drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ
 registers
Date: Fri,  3 Jan 2025 15:52:34 +0200
Message-Id: <7d90547e9ce01642b722efca0bf81cadb754e790.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Write the DP2 specific VFREQ registers.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

v2: Check for !is_hdmi (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4bd35509ff7b..cdfb7caadcee 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3473,8 +3473,21 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *pipe_crtc;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	bool is_hdmi = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
 	int i;
 
+	/* 128b/132b SST */
+	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
+		const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+		u64 crtc_clock_hz = KHz(adjusted_mode->crtc_clock);
+
+		intel_de_write(display, TRANS_DP2_VFREQHIGH(cpu_transcoder),
+			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz >> 24));
+		intel_de_write(display, TRANS_DP2_VFREQLOW(cpu_transcoder),
+			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
+	}
+
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
@@ -3491,7 +3504,7 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 		intel_crtc_vblank_on(pipe_crtc_state);
 	}
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+	if (is_hdmi)
 		intel_ddi_enable_hdmi(state, encoder, crtc_state, conn_state);
 	else
 		intel_ddi_enable_dp(state, encoder, crtc_state, conn_state);
-- 
2.39.5

