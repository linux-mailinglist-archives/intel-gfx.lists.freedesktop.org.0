Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D109C5121
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6015A10E5A3;
	Tue, 12 Nov 2024 08:48:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LH5Jd6Dt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D60410E59F;
 Tue, 12 Nov 2024 08:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401324; x=1762937324;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GWk+LWPCbyKO0g4ZXkcg3E9qY1Xv20+qd7IVUzuk5SA=;
 b=LH5Jd6DtTPotnsvLkFJQJ8z2+DtPEccpacYXAwUTbcOwYSsROX3BH7Nk
 newr2mfg4KZqp5YsMPHD4BalFbd+KLKsPV290oo1iKsVUydvpbX3OCWWh
 hKKQ7P7EWh/vWdikCL3LTNrSP775s0pDtdQ/KKrtfSrAtbhoDez2Wq77I
 QMzwg6bY7ctZgGI1cu1YkeWnVGDnM1BWv1XqbapQ+PvhimEEl2cUHuc5J
 rVUDO4slZZJ9B1dwgZtctmj6UEgdPXEnCSCaSVkhvEiY5FVkSwkIAdWrg
 Z8TEOxB9PUYxpcH5c+kGLxk8Pjf5nKTkVyErKVxE8gB3L/u7EIiMFDc6e w==;
X-CSE-ConnectionGUID: KIQTeTCySB2bAZciYhmGNg==
X-CSE-MsgGUID: G8Yxfr/uRC+UfbmLQbCyrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="18835745"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="18835745"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:48:44 -0800
X-CSE-ConnectionGUID: dwRhnj0VTvyNi2e8Gsu2Uw==
X-CSE-MsgGUID: dGjrgfgZSSG2Xm8ZIRGLUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87759878"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa009.fm.intel.com with ESMTP; 12 Nov 2024 00:48:43 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [RFC v1 3/4] drm/i915/psr: Add latency for PSR
Date: Tue, 12 Nov 2024 14:20:38 +0530
Message-ID: <20241112085039.1258860-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
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

Calculate latency for PSR2 wake lines.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 23 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 16888935b33a..b7dfdd94509c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3972,3 +3972,26 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 		debugfs_create_file("i915_psr_status", 0444, root,
 				    connector, &i915_psr_status_fops);
 }
+
+int intel_psr2_calc_prefill(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int wake_lines;
+	struct intel_encoder *encoder;
+
+	intel_psr_lock(crtc_state);
+	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		lockdep_assert_held(&intel_dp->psr.lock);
+
+		if (!intel_psr2_config_valid(intel_dp, crtc_state))
+			return false;
+
+		wake_lines = psr2_block_count_lines(intel_dp);
+	}
+	intel_psr_unlock(crtc_state);
+
+	return wake_lines;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 956be263c09e..65f936d83aad 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -24,6 +24,7 @@ struct intel_plane_state;
 #define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
 				    (intel_dp)->psr.source_panel_replay_support)
 
+int intel_psr2_calc_prefill(struct intel_crtc_state *crtc_state);
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
 bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
-- 
2.46.0

