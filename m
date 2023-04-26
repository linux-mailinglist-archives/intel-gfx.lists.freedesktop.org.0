Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D014B6EF8C3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B4910E8BF;
	Wed, 26 Apr 2023 16:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD92010E8A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682527994; x=1714063994;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=klcX/6hE32gC34og/sZo+FLZpqnc1jpQgZwvtD8DFB8=;
 b=fQ1IRZ3zrwmVxqE36rf3FxUgPRjORe5kvLQLzp0ASUf10JjZX7ansafZ
 fUFyoCIZ5HVbFB9J57EyPWAqiyDcUC/nIVS1y+XLZCAeuvi1HHRmBsd1x
 5TEOLQkwcTqROK9Wbr9PXeoR6RvoMpluGvA5QqRrRrbtSX1pkh5GwhaaZ
 znfqIXxsGI9Y0iqx3jqvtgywy8dXcH1QFv4n50FIVdr4QCawim3koT+5m
 yn8Z2VFd87XKJkDejOni6FaCDaxzFf/hnXhvmGaKYum/RoUF4AtPO7koD
 kw18o6nRlH3uwniTuoCLFl/mmeY3ytQ6zgL9+Ui5l7LkcAmPu8wPNC2I1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493478"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493478"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402743"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402743"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:52:58 +0300
Message-Id: <20230426165305.2049341-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: Factor out
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_modeset_setup.c    | 28 +++++++++++++------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index fe83579529b3a..a66085cf82bab 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -32,6 +32,24 @@
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state);
 
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
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
 {
@@ -131,8 +149,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector->base.encoder);
 
-		if (conn_state->crtc)
-			drm_connector_put(&connector->base);
+		set_encoder_for_connector(connector, encoder);
 
 		if (encoder) {
 			struct intel_crtc *crtc =
@@ -140,14 +157,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
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

