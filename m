Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE7E96CE80
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 07:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CC010E658;
	Thu,  5 Sep 2024 05:37:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BbCTbSXB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B9B10E658
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 05:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725514625; x=1757050625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A04kzs45lZm1yeTMwcom8+tRZQnKKPTnjLYKHS81d0I=;
 b=BbCTbSXBr3qQPPG7Psf8mnVMEf1FIm8y32XJ0KfupBB4OceRlQGDkvhJ
 wwv1IbfLcy+3W7b2yv2JPsCH2htQRhDyIWi6g4jHUy1xy63P0EROmvqjt
 /u2peuAkM1Ed0GLSrLLEgbGW8TtnQ/Uld8gZURIDZtqjqMRgX6OlS+Do5
 UQs2Poa6SnScMBA4BdD5cavEkj8zSMAxBxpW63lEn4TMAx9g69XW6tapw
 42oNnHcmMI/h8Z7GZFFwWJ95dbtvQ8//9/4U84Of34PmoTo0a32bCStwd
 N1qjIIldUKCn/ZWwmUW1sUh1WURBU7amM5XZuKMyc8XpsbJhdJE+5F+Xj w==;
X-CSE-ConnectionGUID: LOV9Tn5uRJiiH7eBQ70IFg==
X-CSE-MsgGUID: +8bvwL5lSFSljAcwGGAYRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35366495"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="35366495"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 22:37:05 -0700
X-CSE-ConnectionGUID: peITnY4RR/qCRaP8L4aWgA==
X-CSE-MsgGUID: 7WbfNZpmRXmWJAOvjb+YEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65500196"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 04 Sep 2024 22:37:02 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 2/4] drm/i915/lobf: Move Lobf compute config after vblank
 adjustement
Date: Thu,  5 Sep 2024 10:48:39 +0530
Message-Id: <20240905051841.3012729-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240905051841.3012729-1-animesh.manna@intel.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
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

As lobf compute config is depends upon delayed vbalnk so moved
lobf compute config in encoder late config(). Lobf is only
for edp connector so introduced intel_dp_late_compute_config().

v1: Initial version.
v2: Function name modified. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp.c  | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h  | 2 ++
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 00fbe9f8c03a..0d12c94793bf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4367,6 +4367,11 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
 	}
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
+	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		intel_dp_compute_config_late(encoder, crtc_state);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 86bc6d79279f..bc0042a1bc3a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3107,7 +3107,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
@@ -3116,6 +3115,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 							pipe_config);
 }
 
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_alpm_lobf_compute_config(intel_dp, crtc_state);
+}
+
 void intel_dp_set_link_params(struct intel_dp *intel_dp,
 			      int link_rate, int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 1b9aaddd8c35..411feece9acb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
 int intel_dp_compute_config(struct intel_encoder *encoder,
 			    struct intel_crtc_state *pipe_config,
 			    struct drm_connector_state *conn_state);
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state);
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
-- 
2.29.0

