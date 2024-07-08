Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2465D92A5E4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 17:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B694C10E38E;
	Mon,  8 Jul 2024 15:39:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfFPxVow";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F88610E390
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 15:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720453184; x=1751989184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oButMjVIJxdenmSD4t88oqR1iePyqSsX+uPHgA2foOg=;
 b=HfFPxVowDgI0sh/vvKnX1idZSk7YKT/uPO/LbeTqy0U24qsOb/ITXbEe
 05BfO4VEI4UsAU4KJ6OJ0aO40M6x+Zrtxk6zQzjkrAIqWLaemDYlHLsT2
 j5P/Xi1MaT7EY3yVzPqBNd6lP+HNLFeIS5/XLTHqpFK3+UGC0CnJkgngY
 gji2fm4TRGrOfJYF4K+Ws6RlsjnJQ/RDcupLxAVDY/znt9xhneno5JHE9
 cMNYVjwtZLazvNxCPhxbjE2jIcd8RNWXl4XV6d74XAnPH79qtGicu7Pcy
 GmF3xY5jeHTzFCxAiMGdpcdk0DyPuiXapM7BItaui2q6Vt3GA43ohoQxG A==;
X-CSE-ConnectionGUID: Nv5o9QmwQk+TggjZlVgaXg==
X-CSE-MsgGUID: xlUoT5uCRKSoZcelYhxxAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17480273"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="17480273"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 08:39:43 -0700
X-CSE-ConnectionGUID: HvGVseOrT1irshR5dl9JtA==
X-CSE-MsgGUID: /4DSbxOVQb+U25B6Bsf34w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="51955305"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa005.fm.intel.com with ESMTP; 08 Jul 2024 08:39:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 3/3] drm/i915/lobf: Move Lobf compute config after vblank
 adjustement
Date: Mon,  8 Jul 2024 20:52:31 +0530
Message-Id: <20240708152231.4170265-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240708152231.4170265-1-animesh.manna@intel.com>
References: <20240708152231.4170265-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp.c  | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h  | 2 ++
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a07aca96e551..e460ba0ee05f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4366,6 +4366,11 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
 	}
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
+	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		intel_dp_late_compute_config(encoder, crtc_state);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8feec90538ae..f6535281ab54 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3009,7 +3009,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
@@ -3018,6 +3017,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 							pipe_config);
 }
 
+void intel_dp_late_compute_config(struct intel_encoder *encoder,
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
index a0f990a95ecc..cd473f939941 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
 int intel_dp_compute_config(struct intel_encoder *encoder,
 			    struct intel_crtc_state *pipe_config,
 			    struct drm_connector_state *conn_state);
+void intel_dp_late_compute_config(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state);
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
-- 
2.29.0

