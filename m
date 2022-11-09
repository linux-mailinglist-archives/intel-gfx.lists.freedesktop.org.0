Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FF3622A0E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:17:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393DE10E599;
	Wed,  9 Nov 2022 11:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F1A10E559
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667992617; x=1699528617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ae8psFkpGw21kCg2SOu2o0Gb1JZg//vLpnxPocQ8vw=;
 b=HmHZ739VzCpZfytAfkflb9LRoKNtY3KkIDW3ArtFggPsTbn8H2YwMofe
 w54rAcD1TJYGgxO2dK/byVlDxtafA7ZPlggbLXeCJShrr6olX8ijMAyf/
 ssH8RLxSUygGtmHjqoV95jENSLvuxCSpl0CbEM0g5indAT0aVrL4CJajZ
 yFo+1K7ifwwwP2PVsLKtKvRcYIbXO8ZJQAFfA+rBmCjTz0gKefBobSr+j
 Kc8OeQJN4uXXJNWM5/hiWbXcLSR/qL2GvbpBISqUMIoRjRB1d80nGHLaW
 BswaercYCP8cnS1XBTFbpRhxT+HxjWBMvSDNM/PaSRbc4KJWSwYD9oETY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312113385"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312113385"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:16:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636707013"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636707013"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 09 Nov 2022 03:16:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 13:16:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 13:16:44 +0200
Message-Id: <20221109111649.23062-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Introduce intel_panel_init_alloc()
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

Introduce a plaec where we can initialize connector->panel
after it's been allocated. We already have a intel_panel_init()
so had to get creative with the name and came up with
intel_panel_init_alloc().

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 2 +-
 drivers/gpu/drm/i915/display/intel_panel.c     | 7 +++++++
 drivers/gpu/drm/i915/display/intel_panel.h     | 1 +
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 6205ddd3ded0..562da3b741e2 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -54,7 +54,7 @@ int intel_connector_init(struct intel_connector *connector)
 	__drm_atomic_helper_connector_reset(&connector->base,
 					    &conn_state->base);
 
-	INIT_LIST_HEAD(&connector->panel.fixed_modes);
+	intel_panel_init_alloc(connector);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 69ce77711b7c..8e683ab75594 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -660,6 +660,13 @@ intel_panel_mode_valid(struct intel_connector *connector,
 	return MODE_OK;
 }
 
+void intel_panel_init_alloc(struct intel_connector *connector)
+{
+	struct intel_panel *panel = &connector->panel;
+
+	INIT_LIST_HEAD(&panel->fixed_modes);
+}
+
 int intel_panel_init(struct intel_connector *connector)
 {
 	struct intel_panel *panel = &connector->panel;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 5c5b5b7f95b6..4b51e1c51da6 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -18,6 +18,7 @@ struct intel_connector;
 struct intel_crtc_state;
 struct intel_encoder;
 
+void intel_panel_init_alloc(struct intel_connector *connector);
 int intel_panel_init(struct intel_connector *connector);
 void intel_panel_fini(struct intel_connector *connector);
 enum drm_connector_status
-- 
2.37.4

