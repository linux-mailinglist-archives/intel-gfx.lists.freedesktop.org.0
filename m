Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4779F6F61CA
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737D210E371;
	Wed,  3 May 2023 23:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9CBA10E35B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155418; x=1714691418;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vUP+I3TdB5ij8omrjEzsWtoBA6rp/S2YeySAcukrKyE=;
 b=IRHNeAAY/o8MrPoh5rX1wUm7nnQW5RwSsx7YeO1kP0kRPTe5LFlewEk5
 yKjN5Xyl/ZhggAvAo8Xz39pkfFlsGtHkfSQe1F40Wp39GpbvbWnHdXza9
 N491IcQrcimAKEpcRK9bUvn2Xw9Lly1qf8Yx2zPmPbXIIYScTdWEwpFgg
 vMNblKiqhoBeResv6M3wUCahyj4sijA3S69oJK9K9PYbTYZTbzwaA94UB
 GUO6g20x03ousG99IJL8DfXWy14I/8T6S+oNHCV0MU29sKxAHoplqiVDN
 dv+VrEmQ+qUjfHyeiASIpu3sksv+4dvxYUA296lj8BPUUbbeS9/+xe9wT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607572"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607572"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872120"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872120"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:41 +0300
Message-Id: <20230503231048.432368-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/12] drm/i915: Factor out
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
index 922ea5ddd0c5b..9848d20582963 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -87,6 +87,24 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	}
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
@@ -141,8 +159,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector->base.encoder);
 
-		if (conn_state->crtc)
-			drm_connector_put(&connector->base);
+		set_encoder_for_connector(connector, encoder);
 
 		if (encoder) {
 			struct intel_crtc *crtc =
@@ -150,14 +167,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
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

