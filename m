Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6C3C6F1E9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 15:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C570B10E62D;
	Wed, 19 Nov 2025 14:04:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j6v/iBRU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A4D110E625;
 Wed, 19 Nov 2025 14:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763561079; x=1795097079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3JhzpiWyq2jnfPUxpeCU4/xzrt9P9rUc3dpT70vTvM=;
 b=j6v/iBRUg0kXGst62kEBk4OKOYt34Au90oXZSBhwseAqdo0X1NsWS6nx
 dcy1A8Ak9Ot4d3S1FcCR7BIXgrqLm/wXg7Z3krfwo0q+csd9izusgdF0H
 ITaP4e3OS1XPOh7zuVRTTvrDwk0t2Exc+29GrPW6HkaaNLew5IqOVzvL0
 o9smfGosvSWPWJZV1odoyrykEiGYTLZf7bsW44RR666x7LsiJBI4VEKJr
 vWcvWU485qwZkEH/ynF8/qdgMt3w9CRVDPwnV7Lzh3Hqh1CqnNr2VGD4B
 WVNfIvWPqiKF5QP8SWVn5cqXFWrhzqunZwsnoGOsy80zOAsrKUu4370q0 g==;
X-CSE-ConnectionGUID: 4cuzrUfWSMawrAWhYyjvNw==
X-CSE-MsgGUID: QVY4qSiZQquYQ2IhAGPnqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="91077064"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="91077064"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:38 -0800
X-CSE-ConnectionGUID: K9bD2ijFQjmFDnmCds2iVA==
X-CSE-MsgGUID: S9tHYziWQ7eOtTu9uLvTZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191191852"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:36 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
Date: Wed, 19 Nov 2025 19:21:49 +0530
Message-ID: <20251119135152.673276-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
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

LOBF must be disabled if the number of lines within Window 1 is not greater
than ALPM_CTL[ALPM Entry Check]

v2: Consider the case where SCL is in the active region. (Ville)

Bspec:71041
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 98cbf5dde73b..686e4d13f864 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -263,6 +263,23 @@ int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state)
 	return first_sdp_position + waketime_in_lines + crtc_state->set_context_latency;
 }
 
+static bool intel_alpm_lobf_is_window1_sufficient(struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int vblank = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
+	int window1;
+
+	/*
+	 * LOBF must be disabled if the number of lines within Window 1 is not
+	 * greater than ALPM_CTL[ALPM Entry Check]
+	 */
+	window1 = vblank - min(vblank,
+			       crtc_state->vrr.guardband +
+			       crtc_state->set_context_latency);
+
+	return window1 > crtc_state->alpm_state.check_entry_lines;
+}
+
 void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 					 struct intel_crtc_state *crtc_state)
 {
@@ -272,6 +289,11 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 	if (!crtc_state->has_lobf)
 		return;
 
+	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
+		crtc_state->has_lobf = false;
+		return;
+	}
+
 	/*
 	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
 	 * window to the position of the first SDP is greater than the time it takes
-- 
2.45.2

