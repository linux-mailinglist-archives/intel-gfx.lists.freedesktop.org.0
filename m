Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0610F6FDBAD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC4110E47B;
	Wed, 10 May 2023 10:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDF3D10E477
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714662; x=1715250662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dqmKP+iBf200+Is3JEsAHEbk3xdr4msA2NDoxN9DH50=;
 b=dzkz2JcXLN8BwZyImAj5dEYvAClfbVoRV2QYKzSxP2aOUN5IZH/w5lJd
 WmJ+dX195QG19cp+dmmjva4x+ZonYA9ZBDtYrMiXW3RAPZF5W4Ye347xj
 la0HyMCs5LdtWpqXn63W6yzxHpEm5SmqMnzEKuKPDlp3SUkNEAUFngbDd
 CL6Jx2XZgONfSRJS7MELU6cD2phVa8Myn0Lk7x18RdAUN4/x/DMJp9FIb
 pWBgql3Bkd7vTDNc/8BEJ8UzBpca0TaN59sp9EsrMry0ZTc66FlzoIQsW
 gNXZwy8WFhd63z5WM9JsVo2LkRkjG4uRAqcoQIR0o3DCAHn8qteTfgJMd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214422"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214422"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796721"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796721"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:23 +0300
Message-Id: <20230510103131.1618266-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/14] drm/i915: Factor out
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

