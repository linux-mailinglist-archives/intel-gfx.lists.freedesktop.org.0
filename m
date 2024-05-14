Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F36098C5B92
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3617E10E9A9;
	Tue, 14 May 2024 19:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OfQhsvLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F8810E859
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714065; x=1747250065;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SZZN/rF77InupC9zlToJN3pi5cyChzRs0RHeLYNkIWs=;
 b=OfQhsvLdsdrXYAaBre/uCb7Gxo13xyZfTUP1KHxa3l0n3PR/khC/PKAL
 J2akFBJt+A2e5dnBh7Rg/oFLgXN0nXgqC9qhiXVY1Zd+ArfuIsJIRj34I
 FwIB4EUfbExTn7E4EFaW65kWqrTHmyEOa42Kjm80gJxZ9yc2CqVXi40Lu
 0cLX3g/dUEs0uK/QorUshkmrZREfdgXLttDcGm59bSFw2o5IpUrxn8JL4
 peW3S/SaeSwi40SL25ZXZKNgQXOkqMy+d6m53Bc8Xqsgrrg3NfbAlLL9D
 +gLAO5us/7H+3Sup17qZxYTP6/TT+YOpTGUPWjfsbdNQGq9roLgSZ0BSu w==;
X-CSE-ConnectionGUID: 49JPvhrcTkuY3cBumPRv0w==
X-CSE-MsgGUID: gdYflm6jSqe57xAbyjeSZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124991"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124991"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:25 -0700
X-CSE-ConnectionGUID: OW7zReJKTjO0hMCMMttFDg==
X-CSE-MsgGUID: j83H1b4SRyubcbbmFwcLHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724613"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/20] drm/i915/dp: Remove the modeset retry event's dependece
 on atomic state
Date: Tue, 14 May 2024 22:14:07 +0300
Message-ID: <20240514191418.2863344-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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

When notifying userspace to retry a modeset, the notified connectors are
not really specific to those contained in the atomic state. For MST,
where this makes a difference, all enabled connectors in the same MST
topology should be notified which is guaranteed by the commit adding all
these connectors to the atomic state. Instead of relying on this we can
notify all the relevant connectors based on their (root) encoder. Using
intel_dp_has_connector() simplifies the SST case as well.

This prepares for a later patch sending a notification during link
training, to which the atomic state is not passed down.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 29 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  5 +---
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 3 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index da56a2b7fa0f8..6969d35b6bb0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2800,29 +2800,30 @@ void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
 		drm_connector_put(&connector->base);
 }
 
-void
-intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
-				      struct intel_encoder *encoder,
-				      const struct intel_crtc_state *crtc_state)
+static bool intel_dp_has_connector(struct intel_dp *intel_dp,
+				   const struct drm_connector_state *conn_state);
+
+void intel_dp_queue_modeset_retry_for_link(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
-	struct intel_digital_connector_state *conn_state;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	int i;
 
-	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
-		intel_dp_queue_modeset_retry_work(intel_dp->attached_connector);
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		struct drm_connector_state *conn_state =
+			connector->base.state;
 
-		return;
-	}
+		if (!intel_dp_has_connector(intel_dp, conn_state))
+			continue;
 
-	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
-		if (!conn_state->base.crtc)
+		if (!conn_state->crtc)
 			continue;
 
-		if (connector->mst_port == intel_dp)
-			intel_dp_queue_modeset_retry_work(connector);
+		intel_dp_queue_modeset_retry_work(connector);
 	}
+	drm_connector_list_iter_end(&conn_iter);
 }
 
 int
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6a1f2a2856998..05016e13fb944 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -45,10 +45,7 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 int intel_dp_min_bpp(enum intel_output_format output_format);
 void intel_dp_init_modeset_retry_work(struct intel_connector *connector);
 void intel_dp_queue_modeset_retry_work(struct intel_connector *connector);
-void
-intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
-				      struct intel_encoder *encoder,
-				      const struct intel_crtc_state *crtc_state);
+void intel_dp_queue_modeset_retry_for_link(struct intel_encoder *encoder);
 bool intel_dp_init_connector(struct intel_digital_port *dig_port,
 			     struct intel_connector *intel_connector);
 void intel_dp_connector_sync_state(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 6503abdc2b988..34a00b2a40e36 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -722,7 +722,7 @@ static void queue_retry_work(struct intel_atomic_state *state,
 		    encoder->base.base.id,
 		    encoder->base.name);
 
-	intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+	intel_dp_queue_modeset_retry_for_link(encoder);
 }
 
 static void atomic_increase_bw(struct intel_atomic_state *state)
-- 
2.43.3

