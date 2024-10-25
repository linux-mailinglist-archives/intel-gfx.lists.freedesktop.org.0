Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 342A19B090D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3908B10EB0B;
	Fri, 25 Oct 2024 16:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Anv8yZ/o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358FA10EB08
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872149; x=1761408149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OvkyWEBcP7FDFcLe6rbtSO07Dpr9muyb4loIDlQCFd0=;
 b=Anv8yZ/oL1XeoRE19RXFOadRjW8Ijx7MjTUgy56xqgKbVcE8saopjyNi
 DCjyMgZwHpa44Lz1tpmc1yoONw5gp/n92tBAzp5nZUMKxXgyjGfGJgWbg
 FfBA8NfJlnnFH0QYIPu8RptCWeKJBvi9r4iyE7H+o8o1ZimLDMluD0krK
 hCxFzr7G8pi39IucMFNq3YJlZyKy6q0DjvN0Vw1dVq0icG480yc1ZkZRU
 LiVs7XEKxKzv5kelgKxrThmWFw6QA2xK2w3+ssKFK2INFcym6bNz9Hw2W
 /cI/AdsF4N/uleZ4KosvnI60aIyguChJEuLVHmHPNcAV0SEvhFkEJJeBX g==;
X-CSE-ConnectionGUID: 9rO05AuGRZSJzjZoKW07KQ==
X-CSE-MsgGUID: m0lWqDiTTEWjxQU9gW9/CA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242378"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242378"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:29 -0700
X-CSE-ConnectionGUID: DdaCsyFnRjOi/euYR1xEfA==
X-CSE-MsgGUID: AHi67aNlSzO4hPFTmKAT4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783694"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 1/8] drm/i915/dp: Flush modeset commits during connector
 detection
Date: Fri, 25 Oct 2024 19:02:52 +0300
Message-ID: <20241025160259.3088727-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
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

Make sure that a DP connector detection doesn't happen in parallel
with an ongoing modeset on the connector. The reasons for this are:

- Besides reading the capabilities, EDID etc. the detection may change
  the state of the sink (via the AUX bus), for instance by setting the
  LTTPR mode or the source OUI (the latter introduced by an upcoming
  patch). It's better to avoid such changes affecting an onging modeset
  in any way.

- During a modeset's link training any access to DPCD registers, besides
  the registers used for link training should be avoided, at least in
  the LTTPR non-transparent and transparent link training modes.

  Such asynchronous accesses - besides connector detection - can also
  happen via the AUX device node for instance, for those a parallel
  modeset will have to be avoided in a similar way to the change in this
  patch. (A topic for a follow-up change.)

- The source OUI written to an eDP sink is valid only while the panel
  power is enabled. A modeset on eDP will enable/disable the panel power
  synchronously; this should be prevented in the middle of the connector
  detection, to ensure a consistent sink state (which depends on the
  source OUI) for the whole duration of detection. The panel power could
  still get disabled during detection after an idle period (1 sec), this
  will be prevented by the next patch.

v2: (Ville)
- s/wait_for_crtc_hw_done/wait_for_connector_hw_done
- Get drm_device using an intel_display instead of drm_i915_private ptr.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 27 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
 3 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e29619ba0400..d2019c9ef8e91 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5036,6 +5036,21 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
 	return false;
 }
 
+static void wait_for_connector_hw_done(const struct drm_connector_state *conn_state)
+{
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_display *display = to_intel_display(connector);
+
+	drm_modeset_lock_assert_held(&display->drm->mode_config.connection_mutex);
+
+	if (!conn_state->commit)
+		return;
+
+	drm_WARN_ON(display->drm,
+		    !wait_for_completion_timeout(&conn_state->commit->hw_done,
+						 msecs_to_jiffies(5000)));
+}
+
 int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask)
@@ -5072,10 +5087,7 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 		if (!crtc_state->hw.active)
 			continue;
 
-		if (conn_state->commit)
-			drm_WARN_ON(&i915->drm,
-				    !wait_for_completion_timeout(&conn_state->commit->hw_done,
-								 msecs_to_jiffies(5000)));
+		wait_for_connector_hw_done(conn_state);
 
 		*pipe_mask |= BIT(crtc->pipe);
 	}
@@ -5084,6 +5096,11 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 	return ret;
 }
 
+void intel_dp_flush_connector_commits(struct intel_connector *connector)
+{
+	wait_for_connector_hw_done(connector->base.state);
+}
+
 static bool intel_dp_is_connected(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
@@ -5597,6 +5614,8 @@ intel_dp_detect(struct drm_connector *connector,
 	if (!intel_display_driver_check_access(dev_priv))
 		return connector->status;
 
+	intel_dp_flush_connector_commits(intel_connector);
+
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
 		status = edp_detect(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 60baf4072dc9d..4efb9605a50e0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -54,6 +54,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask);
+void intel_dp_flush_connector_commits(struct intel_connector *connector);
 void intel_dp_link_check(struct intel_encoder *encoder);
 void intel_dp_check_link_state(struct intel_dp *intel_dp);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1a2ff3e1cb68f..5bba078c00d89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1573,6 +1573,8 @@ intel_dp_mst_detect(struct drm_connector *connector,
 	if (!intel_display_driver_check_access(i915))
 		return connector->status;
 
+	intel_dp_flush_connector_commits(intel_connector);
+
 	return drm_dp_mst_detect_port(connector, ctx, &intel_dp->mst_mgr,
 				      intel_connector->port);
 }
-- 
2.44.2

