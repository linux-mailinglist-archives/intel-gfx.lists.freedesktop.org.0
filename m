Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8064CA00A18
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1857E10E8CF;
	Fri,  3 Jan 2025 13:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ea3/1TKK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D1F10E8CF;
 Fri,  3 Jan 2025 13:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912425; x=1767448425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6w1xX7DnVRKMKhx4Zcybq7Nv2WsPHv+R4HnASrAVolo=;
 b=Ea3/1TKK6qlIAqq8gYGGHivYfTDxblI4jTwOgBgwL0ZJ1Hn9zcMRNrLK
 SqlRtiHi1qSBaZ/vxO7JzzQgHJcBhVneMy5IhsWNWPstpBP9x9OJe+yKH
 yfgb4X5RhnPcsKzX7EQyn+BKSL9kkZnY8erSbKCD065aj8ZkyfspVvAal
 h20myaiAiuZgfjk8ZBfh9jn7tnOf5tc/7H16VXkUM8sVWkLolUyIBDXrI
 k2Po+BQ8+tnUWzb/6qB9NPCNJZH0ZwJpxr5Zw7zJrqmMi+wFXaQvX4bLz
 62jOeHxdSM01Wpgzjq08w1JFeA0kT+NfA2z3nWBKFpsaQbTcjSkAGL8dn g==;
X-CSE-ConnectionGUID: 0LcC2fJoSZal8j2Mh5YsgA==
X-CSE-MsgGUID: 1t+ejs3zTIS4IPN0+zOtYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36040307"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36040307"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:45 -0800
X-CSE-ConnectionGUID: JVCeJbF1SCegSUBFT71SPQ==
X-CSE-MsgGUID: uPi+intNQ6udmWRqFgd0cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105852051"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 12/16] drm/i915/ddi: enable ACT handling for 128b/132b SST
Date: Fri,  3 Jan 2025 15:52:35 +0200
Message-Id: <b0226471f9445d988917cee49dbbd93a1493f3c7.1735912293.git.jani.nikula@intel.com>
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

Add ACT handling for 128b/132b SST enable/disable.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

v2:
- Check for !is_hdmi (Imre)
- Add disable sequence (Imre)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 29 ++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cdfb7caadcee..541e89cfc347 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3199,7 +3199,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *pipe_crtc;
+	bool is_hdmi = intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI);
 	int i;
 
 	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
@@ -3211,6 +3213,20 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 
 	intel_disable_transcoder(old_crtc_state);
 
+	/* 128b/132b SST */
+	if (!is_hdmi && intel_dp_is_uhbr(old_crtc_state)) {
+		/* VCPID 1, start slot 0 for 128b/132b, clear */
+		drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, 0);
+
+		intel_ddi_clear_act_sent(encoder, old_crtc_state);
+
+		intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, old_crtc_state->cpu_transcoder),
+			     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
+
+		intel_ddi_wait_for_act_sent(encoder, old_crtc_state);
+		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
+	}
+
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
 	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
@@ -3493,6 +3509,19 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
 
+	/* 128b/132b SST */
+	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		intel_ddi_clear_act_sent(encoder, crtc_state);
+
+		intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder), 0,
+			     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
+
+		intel_ddi_wait_for_act_sent(encoder, crtc_state);
+		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
+	}
+
 	intel_enable_transcoder(crtc_state);
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
-- 
2.39.5

