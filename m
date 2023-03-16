Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDFF6BD111
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6202210ECEA;
	Thu, 16 Mar 2023 13:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1589210ECCC
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974044; x=1710510044;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zH1UmzpGcWy/Xqp288hxuX43oZtIAXzvWa2lE9fWwFw=;
 b=K0PkK7drds9INAqccPAO7DVwXmQUqaK/2XAnszZDyFLF5cNpuV1NLM8l
 3kIz3RLrlDFseh1hKZc1z9S8EYQtD100G975BJlKkNp4/D3BoWK4KFqDk
 rkRhPpcpM7kjOzf6KbmBY3POHmChj/fd8zQy8ReF7IU/TqP8i9nhhN0kj
 XHDQPceQh2u2D8ZtXgqMSa0X/c1iXhhKN0dXPc/K+bvgWZY2JRiOQhQsk
 BBb9LvnN+qLq/6Nz4FVeSeolEufYVNZkZXOXHgWJz7ByJoX0UGIvEF4xS
 F8o2qs6x9nuv2wa/amTx8dyjI5kLFKuQHmnxP2zWipvgHnRRj/4HA13QE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524848"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524848"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171286"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171286"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:23 +0200
Message-Id: <20230316131724.359612-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/14] drm/i915/tc: Factor out a function
 querying active links on a TC port
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

For clarity factor out the function to determine if there are active
links on a TC port. This prepares for the next patch also checking the
port's PLL type.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 35 ++++++++++++++++---------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 5d040f0c5f630..8481018d0fdaa 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -872,6 +872,27 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	mutex_unlock(&dig_port->tc_lock);
 }
 
+static bool tc_port_has_active_links(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
+	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
+	int active_links = 0;
+
+	if (dig_port->dp.is_mst) {
+		active_links = intel_dp_mst_encoder_active_links(dig_port);
+	} else if (crtc && crtc->active) {
+		active_links = 1;
+	}
+
+	if (active_links && !icl_tc_phy_is_connected(dig_port))
+		drm_err(&i915->drm,
+			"Port %s: PHY disconnected with %d active link(s)\n",
+			dig_port->tc_port_name, active_links);
+
+	return active_links;
+}
+
 /**
  * intel_tc_port_sanitize_mode: Sanitize the given port's TypeC mode
  * @dig_port: digital port
@@ -885,23 +906,11 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_encoder *encoder = &dig_port->base;
-	int active_links = 0;
 
 	mutex_lock(&dig_port->tc_lock);
 
-	if (dig_port->dp.is_mst)
-		active_links = intel_dp_mst_encoder_active_links(dig_port);
-	else if (encoder->base.crtc)
-		active_links = to_intel_crtc(encoder->base.crtc)->active;
-
 	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
-	if (active_links) {
-		if (!icl_tc_phy_is_connected(dig_port))
-			drm_dbg_kms(&i915->drm,
-				    "Port %s: PHY disconnected with %d active link(s)\n",
-				    dig_port->tc_port_name, active_links);
-	} else {
+	if (!tc_port_has_active_links(dig_port)) {
 		/*
 		 * TBT-alt is the default mode in any case the PHY ownership is not
 		 * held (regardless of the sink's connected live state), so
-- 
2.37.1

