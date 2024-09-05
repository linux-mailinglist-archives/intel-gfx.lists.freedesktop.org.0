Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2564A96CE7F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 07:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9186D10E648;
	Thu,  5 Sep 2024 05:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMJ5Bxm8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F9610E648
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 05:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725514620; x=1757050620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lNqvmahSj4MNWmz2lnyn2O3lcHWA1Q6eCy/a6Y/X5W4=;
 b=fMJ5Bxm8Dd+FK0yPOQIhdHGAEy1G+epNaypohudggU8u3t89DDV/ilVK
 4QaNzJDXZ8nWuAvy9MnJA2iSR4sB9j2+fv8Ykb5AGSO7wLa9JHY6Uvify
 IcRkWxeEkr4BA4mgpAyKBBHPrgVUr02ko8ZA4x4lIUZLrfJKu1m9znXEv
 dCWA+kVd1qdjb5qytmrbtyuW92yTk7slUiL3k5qAYVrkHCzj+ZWZ8dKoy
 rbWSbXrMM/mWdPtYWrSNCQwaNOcgxjuud+VwC3odVAFqwvBGzFqEp6mZ6
 VG0t01HFpS12y9kV9AFi2fBxtaYEHMratPL6rVTkiytpeXTGh16z4HI+N g==;
X-CSE-ConnectionGUID: bUIjgPXnTmyNrfPKNub4ZA==
X-CSE-MsgGUID: YauFhRqvT2W1mL2o8utxTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35366491"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="35366491"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 22:37:00 -0700
X-CSE-ConnectionGUID: FYmS7N1lQ+CW0epLWIExVQ==
X-CSE-MsgGUID: 9LDAp0JFQq+VYF6oFi9XmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65500180"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 04 Sep 2024 22:36:57 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 1/4] drm/i915/lobf: No need to pass connector-state on
 lobf-compute-config.
Date: Thu,  5 Sep 2024 10:48:38 +0530
Message-Id: <20240905051841.3012729-2-animesh.manna@intel.com>
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

Connector state is not used in lobf compute config, so remove it.

Fixes: 15438b325987 ("drm/i915/alpm: Add compute config for lobf")
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 3 +--
 drivers/gpu/drm/i915/display/intel_alpm.h | 3 +--
 drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 186cf4833f71..f2fea356d28a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 }
 
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
-				    struct intel_crtc_state *crtc_state,
-				    struct drm_connector_state *conn_state)
+				    struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
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
index a1fcedfd404b..86bc6d79279f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3107,7 +3107,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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

