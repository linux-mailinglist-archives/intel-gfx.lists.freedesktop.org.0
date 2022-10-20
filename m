Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B28605E25
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 12:47:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8138110E3EF;
	Thu, 20 Oct 2022 10:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6689610E1A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 10:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666262866; x=1697798866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CtnvLCXW5f2cTLrQnaXFy5KHn0PUw94f8nAVuz/Dnxw=;
 b=f/yqMv35SSHqSbUR/uwxyznmVQFDLYbdb49TnyyPr7/wtpmcgJhTcbbY
 hH5+vzdnroU5GF06FxCdtjgJmIBIzJhb9qr/fthYk4p8W2/3pOznTZEkv
 B6ajDHSGn6OKxphQyaQD2mmy+qzwpyJ5gbKLSlGiKVY2aSdnderOPXbQL
 2OFNxpzcxoO8cEs2pkMPCIzJB3N2vy+Cw8JHsTsdxioDYDsAQQ0iG6TsL
 RvRb5aOSF8LFAXkr48jUzvqbefBu0oPXgAjFM95ncSRkqVASQNFYIINWV
 ++vW9b6K2eFmeGgxHlb1wFLYyTk4O/t4zoOv5qFVvquPWK35t4u7Adrvc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="287073267"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="287073267"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="804801584"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="804801584"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 20 Oct 2022 03:47:43 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 16:16:35 +0530
Message-Id: <20221020104635.874860-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221020104635.874860-1-suraj.kandpal@intel.com>
References: <20221020104635.874860-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/1] drm/i915: Remove one use macro
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove one use macro for_each_connector_on_encoder which
is only being used at intel_encoder_find_connector.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
 .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 ++++++++++++----
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2af4a1925063..c803330a276d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -469,10 +469,6 @@ enum hpd_pin {
 	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
 		for_each_if((intel_encoder)->base.crtc == (__crtc))
 
-#define for_each_connector_on_encoder(dev, __encoder, intel_connector) \
-	list_for_each_entry((intel_connector), &(dev)->mode_config.connector_list, base.head) \
-		for_each_if((intel_connector)->base.encoder == (__encoder))
-
 #define for_each_old_intel_plane_in_state(__state, plane, old_plane_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index cbfabd58b75a..5f56e0335ff0 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -205,13 +205,21 @@ static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
 
 static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
 {
-	struct drm_device *dev = encoder->base.dev;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
+	struct intel_connector *found_connector = NULL;
 
-	for_each_connector_on_encoder(dev, &encoder->base, connector)
-		return connector;
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (&encoder->base == connector->base.encoder) {
+			found_connector = connector;
+			break;
+		}
+	}
+	drm_connector_list_iter_end(&conn_iter);
 
-	return NULL;
+	return found_connector;
 }
 
 static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state *crtc_state)
-- 
2.25.1

