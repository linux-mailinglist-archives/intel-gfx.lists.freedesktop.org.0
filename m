Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6452C92A5E2
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 17:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD66C10E389;
	Mon,  8 Jul 2024 15:39:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d3ku/2O3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEC4110E389
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 15:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720453180; x=1751989180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8JHeH7dTBuRx0xPBh9f5dgMxi36LhBs1u7JjtsP/uQg=;
 b=d3ku/2O34oUDvSrolj8PEV9eYYBY5BLatJL2ZZKdrg5YTwhme/3VVS4x
 WZtd4K0tXxgk+xlGyFQKHTwwkcerlqFQF3nwhBc1k11kFsW6KEYjyTaXb
 Q6FZ3K7zAcNufzzUzfWjs8bs0x8x8Sw46xg1qZ1DtX5I24k9UIMSTAwow
 Bif8iX2eWZt/3w4dP2ehUQDTvAT7so7i4CjKmRVGMGTNx+fRvKnaDgq1c
 5ZKktisJEWNS3UYVSAfQ4621zVYiI/q/wBoV/AAglxx7YPhzhq0JUF7Sf
 chvF44SzldhcGeOO21+UwbeaA8BfPltpCoA6oGOWlox8eGgikMtaboOzP Q==;
X-CSE-ConnectionGUID: BMXnRAqfQMy0d2v161v8aA==
X-CSE-MsgGUID: 34h8XfasSR+0MPv+MA58GA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17480271"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="17480271"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 08:39:39 -0700
X-CSE-ConnectionGUID: /Aq7Ug//R4y0b+QRWUc6fQ==
X-CSE-MsgGUID: N3++a52/TKmTU73Ez6uuyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="51955302"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa005.fm.intel.com with ESMTP; 08 Jul 2024 08:39:36 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 2/3] drm/i915/lobf: No need to pass connector-state on
 lobf-compute-config.
Date: Mon,  8 Jul 2024 20:52:30 +0530
Message-Id: <20240708152231.4170265-2-animesh.manna@intel.com>
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

Coonector state is not used in lobf compute config, so removed it.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 3 +--
 drivers/gpu/drm/i915/display/intel_alpm.h | 3 +--
 drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 866b3b409c4d..021e970d8209 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 }
 
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
-				    struct intel_crtc_state *crtc_state,
-				    struct drm_connector_state *conn_state)
+				    struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 8c409b10dce6..a17dfaa5248d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -17,8 +17,7 @@ void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
-				    struct intel_crtc_state *crtc_state,
-				    struct drm_connector_state *conn_state);
+				    struct intel_crtc_state *crtc_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3903f6ead6e6..8feec90538ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3009,7 +3009,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
+	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
-- 
2.29.0

