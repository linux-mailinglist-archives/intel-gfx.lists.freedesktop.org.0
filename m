Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EEF6F8A51
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 22:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBA510E675;
	Fri,  5 May 2023 20:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C5110E675
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 20:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683319549; x=1714855549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mRQV7YJhqWjYAlJlAJaUkIcwzKG98AEh7SrdHeY6gR4=;
 b=dyaoz33XmBCmeZB7p/DzffqTu689unSNsXeTdG4hKyLxutpOwilYAgCB
 1Wnai8Cj2tvNyen15H86VUcwkjQV4FKxyqeEBvYRD/THU00NEs5UjhWHb
 q9i2uHYBxgMDIHXQHCWE7bGQ9oEGm9eyN5s/0Cug7eEAgGsTzoH1kOGho
 vjAg2aVzR9/0xAIEEKpIzScEX28N5frkD/q0qG27UdszlvYp34LuT9wqa
 cETUfjMXFcFXWBnjRWj0Vl0vccRwtd3prol6KOrwjISEPGp5Ft4JkVugK
 PpX+8GMK2f0eKySReITwvKG8oNczMIchMfeCfgovak/2vP0ziBE2g+DHv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="346763343"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="346763343"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="821860261"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="821860261"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 23:46:06 +0300
Message-Id: <20230505204611.682946-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-6-imre.deak@intel.com>
References: <20230503231048.432368-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/12] drm/i915: Factor out
 set_encoder_for_connector()
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

Factor out a function setting the encoder and CRTC in the connector
atomic state, required by a follow up patch.

No functional changes.

v2:
- Rebased on changes in patch 4.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_modeset_setup.c    | 28 +++++++++++++------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 2c93f4c5dc8cf..6f59654ea0261 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -86,6 +86,24 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 						   &crtc_state->shared_dpll->state);
 }
 
+static void set_encoder_for_connector(struct intel_connector *connector,
+				      struct intel_encoder *encoder)
+{
+	struct drm_connector_state *conn_state = connector->base.state;
+
+	if (conn_state->crtc)
+		drm_connector_put(&connector->base);
+
+	if (encoder) {
+		conn_state->best_encoder = &encoder->base;
+		conn_state->crtc = encoder->base.crtc;
+		drm_connector_get(&connector->base);
+	} else {
+		conn_state->best_encoder = NULL;
+		conn_state->crtc = NULL;
+	}
+}
+
 static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 {
 	struct intel_encoder *encoder;
@@ -140,8 +158,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector->base.encoder);
 
-		if (conn_state->crtc)
-			drm_connector_put(&connector->base);
+		set_encoder_for_connector(connector, encoder);
 
 		if (encoder) {
 			struct intel_crtc *crtc =
@@ -149,14 +166,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 			const struct intel_crtc_state *crtc_state =
 				to_intel_crtc_state(crtc->base.state);
 
-			conn_state->best_encoder = &encoder->base;
-			conn_state->crtc = &crtc->base;
 			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
-
-			drm_connector_get(&connector->base);
-		} else {
-			conn_state->best_encoder = NULL;
-			conn_state->crtc = NULL;
 		}
 	}
 	drm_connector_list_iter_end(&conn_iter);
-- 
2.37.2

