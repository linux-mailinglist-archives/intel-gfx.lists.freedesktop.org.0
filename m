Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67DCA56FED
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D79A10EC1F;
	Fri,  7 Mar 2025 18:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="huxelrBc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1A610EC27;
 Fri,  7 Mar 2025 18:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370536; x=1772906536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PRcN/hLxIdtE12Eb5B3eop823n7rfpeGXDzVbNwyRsQ=;
 b=huxelrBcLBDoxHEWPb/zsOnyGHf5e89AeuB/X1qiSDMl0AkO/IPZEVug
 UG9L1Zn8JdwpCO5LDWX53HsjTB6o94Ydr2pUBhrpNJ10M6ctn4mgVRXco
 8mXZQYSgPyxulOh/6PWIxkFB4reZUSUkZEpHkbkpIRB+0iIsK83R8rNp8
 k9EHO0Laxpz2F2Ck6nFvacp8GTVCpp+7AuQmKyWImPQIXrtTOgTdjoQnY
 kOR2EhTO96tYbrYSQNPNTOvuIYPTcsMbTvrCyvBPA3hqF26HLgdxCrRuM
 UI8xO+1hhnLinVH72sj+mDKyCgqHfa9jem91h2sQGSClVVQ7AEL2QE6OV Q==;
X-CSE-ConnectionGUID: ZReP+piHRpOEqPAlbY3snw==
X-CSE-MsgGUID: MrIOg9MeS2upSzp6gKzbJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637170"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637170"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:16 -0800
X-CSE-ConnectionGUID: dLnPVOmgSh+cKJzu5ayFxA==
X-CSE-MsgGUID: v2xWARrvSpy2rfdmVaBZOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621179"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/14] drm/i915: Extract intel_bw_modeset_checks()
Date: Fri,  7 Mar 2025 20:01:34 +0200
Message-ID: <20250307180139.15744-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Pull the new_bw_state->active_pipes computation out from
intel_compute_sagv_mask() and move it into the intel_bw.c
(which is arguably the correct place for it).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 29 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++++
 drivers/gpu/drm/i915/display/skl_watermark.c |  9 ------
 4 files changed, 36 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index e11fd94e9e29..6fd6c7b535ed 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1379,6 +1379,35 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 	return 0;
 }
 
+int intel_bw_modeset_checks(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_bw_state *old_bw_state;
+	struct intel_bw_state *new_bw_state;
+
+	if (DISPLAY_VER(display) < 9)
+		return 0;
+
+	new_bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(new_bw_state))
+		return PTR_ERR(new_bw_state);
+
+	old_bw_state = intel_atomic_get_old_bw_state(state);
+
+	new_bw_state->active_pipes =
+		intel_calc_active_pipes(state, old_bw_state->active_pipes);
+
+	if (new_bw_state->active_pipes != old_bw_state->active_pipes) {
+		int ret;
+
+		ret = intel_atomic_lock_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	bool changed = false;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index d3f92951b057..0efc9858faa1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -67,6 +67,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 
 void intel_bw_init_hw(struct drm_i915_private *dev_priv);
 int intel_bw_init(struct drm_i915_private *dev_priv);
+int intel_bw_modeset_checks(struct intel_atomic_state *state);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d7a396bc4ea..69e4c9be28f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6423,6 +6423,12 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	if (any_ms) {
+		ret = intel_bw_modeset_checks(state);
+		if (ret)
+			goto fail;
+	}
+
 	ret = intel_compute_global_watermarks(state);
 	if (ret)
 		goto fail;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2d0de1c63308..58ba99eacd09 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -498,15 +498,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return 0;
 
-	new_bw_state->active_pipes =
-		intel_calc_active_pipes(state, old_bw_state->active_pipes);
-
-	if (new_bw_state->active_pipes != old_bw_state->active_pipes) {
-		ret = intel_atomic_lock_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	}
-
 	if (intel_can_enable_sagv(i915, new_bw_state) !=
 	    intel_can_enable_sagv(i915, old_bw_state)) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
-- 
2.45.3

