Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 517EB891037
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EE110E826;
	Fri, 29 Mar 2024 01:13:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R5uzrePX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6327610E872
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674813; x=1743210813;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I8W4BRf5c45aDNFpw7wvVtnoDbJ+Qdwvuq09PoC3f1Y=;
 b=R5uzrePXy+dw74DYvwpNrL1OaqK5k3pzvZmMmY9WAqsGL+erjjZpFUbY
 T62+CIpNwFFhol6sgRetdMcEu9P8v/EujNQdvaQPQ3ic2y2JnmsvlmmSR
 RqCpH9ivOhB1gMHwuwaajmGY6l0DQdzGhqfiRkKQ5JY3YfF+4GsEQaomH
 OurxzBF0xxDWzG1cFSH5eCQXjrECpMONfAGSWT5/2xTpzqSaIW3Yq6rmp
 GvbXOe4mmCsr2zIhgPENf56dyXZ2RaF916aI2u2CzoloY7dxwUYTljg9X
 mqn+fwDAVUDxLsHyhuLYNbI/R4SIKcMJJJ/4rO33qSOXRn0VqmDgCdmHW Q==;
X-CSE-ConnectionGUID: vzFuLtUPQCa6v7f/erKUvg==
X-CSE-MsgGUID: r8PPtOrlQOSKPlyUmI5e+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756320"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756320"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786776"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786776"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/22] drm/i915: Pass connector to intel_dp_need_bigjoiner()
Date: Fri, 29 Mar 2024 03:12:44 +0200
Message-ID: <20240329011254.24160-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pass the connector explicitly to intel_dp_need_bigjoiner()
so that it'll actually check the correct place for the
bigjoiner force flag.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +++--
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6fa8fc56a39c..cbabd1924474 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1194,10 +1194,10 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 }
 
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
+			     struct intel_connector *connector,
 			     int hdisplay, int clock)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_connector *connector = intel_dp->attached_connector;
 
 	if (!intel_dp_has_bigjoiner(intel_dp))
 		return false;
@@ -1241,7 +1241,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
+	if (intel_dp_need_bigjoiner(intel_dp, connector,
+				    mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
 	}
@@ -2409,7 +2410,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	const struct intel_connector *connector =
+	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -2422,7 +2423,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
-	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+	if (intel_dp_need_bigjoiner(intel_dp, connector,
+				    adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index d5697b99ac21..cd6969d05fe3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -150,6 +150,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner);
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
+			     struct intel_connector *connector,
 			     int hdisplay, int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1cf6241a7d53..a3b0026adb2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -527,7 +527,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
-	const struct intel_connector *connector =
+	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -1342,7 +1342,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
+	if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
+				    mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
 
-- 
2.43.2

