Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A628D528094
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 11:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453AB10EF96;
	Mon, 16 May 2022 09:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353F510EF05
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 09:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652692299; x=1684228299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/jgOOaHqhIBsv7TFEti9vb+bsQUWnnYh1mmp+uRca9I=;
 b=bfSpc9vRtenZh6wJHk3xqF2dEbF+LC85tahoQzLdlciFvZR8cW8cn7kB
 J7bH9/JCNi3qSSSw5fSWZmsRqI3dO18eQAjXe2U3c7q9wyekqpvK33fZ3
 vHJmFEbSPZdFNhiRTOhpGESZ6TUV+IoA3Nim0ZO9a5VhvN0uE9DPWj3FX
 3mIGyz+DtgE0azenwbVgtuJ+uD8vUcFR3jNCl1ICatMDFgUVePfnakQ4i
 BtUcNv8RuNgSAR5Kc9iraM7edIrUMOWuSNfU7whnk+TACQk8A/njI2nNg
 qS+caHpRzllC+IPdKhdXnLUxwUg+oSQsKtSLisMbVDB7dETJu4lUyXSUv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="269602330"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="269602330"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:11:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="522370447"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:11:38 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 May 2022 01:54:02 -0700
Message-Id: <20220516085402.3591249-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset if
 an associated Type-C port is disconnected
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

Although, doing a modeset on any disconnected connector might be futile,
it can be particularly problematic if the connector is a Type-C port
without a sink. And, the spec only says "Display software must not use
a disconnected port" while referring to the Type-C DDI seqeuence, it does
not spell out what happens if such an attempt is made. Experimental results
have shown that this can lead to serious issues including a system hang.
Therefore, reject the atomic modeset if we detect that the Type-C port
is not connected.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 40da7910f845..40576964b8c1 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -114,6 +114,8 @@ int intel_digital_connector_atomic_set_property(struct drm_connector *connector,
 int intel_digital_connector_atomic_check(struct drm_connector *conn,
 					 struct drm_atomic_state *state)
 {
+	struct drm_device *dev = conn->dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_connector_state *new_state =
 		drm_atomic_get_new_connector_state(state, conn);
 	struct intel_digital_connector_state *new_conn_state =
@@ -122,6 +124,10 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 		drm_atomic_get_old_connector_state(state, conn);
 	struct intel_digital_connector_state *old_conn_state =
 		to_intel_digital_connector_state(old_state);
+	struct intel_encoder *encoder =
+		intel_attached_encoder(to_intel_connector(conn));
+	struct intel_digital_port *dig_port =
+		encoder ? enc_to_dig_port(encoder) : NULL;
 	struct drm_crtc_state *crtc_state;
 
 	intel_hdcp_atomic_check(conn, old_state, new_state);
@@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 
 	crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);
 
+	/*
+	 * The spec says that it is not safe to use a disconnected Type-C port.
+	 * Therefore, check to see if this connector is connected and reject
+	 * the modeset if there is no sink detected.
+	 */
+	if (dig_port && !dig_port->connected(encoder) &&
+	    intel_phy_is_tc(dev_priv,
+	    intel_port_to_phy(dev_priv, encoder->port))) {
+		drm_dbg_atomic(&dev_priv->drm,
+			       "[CONNECTOR:%d:%s] is not connected; rejecting the modeset\n",
+			       conn->base.id, conn->name);
+		return -EINVAL;
+	}
+
 	/*
 	 * These properties are handled by fastset, and might not end
 	 * up in a modeset.
-- 
2.35.1

