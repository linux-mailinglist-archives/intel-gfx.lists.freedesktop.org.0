Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F79D1396
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A479110E4F4;
	Mon, 18 Nov 2024 14:49:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwXIj/xw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5E710E4FF;
 Mon, 18 Nov 2024 14:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941371; x=1763477371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ijnDUa6hzTTQlH2QJRWFWS1ANcyMqPcibaothBIUUCA=;
 b=lwXIj/xwBJCIVkysf8U+D6L5922JmweTMR3c9wIP9rPUzmwTbfqsEO/i
 In/AwsZmRMHKVzhK+t9eZtYwccTOLj/FhGFRrTTPF513+MaxEDxC2Jggn
 mOlgoXXfAgtkV7+SjenlXWvqzmDtAnSmQVhFuMdylzNzwukID1c939nDh
 NJx2DMopF+jLvXNsyYvYx9xVEEUR+Gi8Y7LyfKUNaE4lDJXs9jy7gEMhP
 SqmqI+M0YNo6NG2Evlqtuijfry2mFai+PlvmWMMVVo6SnSqoU5mrXWLr1
 TW8mi35gHEIo8r3ybs8FK/UlOf5rdO9+ETWP0Z7cISuJKVMWphQZzr99n g==;
X-CSE-ConnectionGUID: 63fp+QW8RZiuJQKhoY6Cvw==
X-CSE-MsgGUID: 7q8UcWwzRuu8Xgv8TFEqhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42414893"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="42414893"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:31 -0800
X-CSE-ConnectionGUID: qULqR43xRae4HcP/avVzjA==
X-CSE-MsgGUID: 5ydFVcMaTReuisSJ2BmtWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="120184760"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/11] drm/i915/mst: unify MST topology callback naming to
 mst_topology_*
Date: Mon, 18 Nov 2024 16:48:59 +0200
Message-Id: <abc3f15f2d7ee55084f43033c78310287223c255.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Make it easier to keep track of what belongs where.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +++++++++++----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5750c0f024dd..53fb93fc52b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1615,9 +1615,9 @@ static bool mst_connector_get_hw_state(struct intel_connector *connector)
 	return encoder->get_hw_state(encoder, &pipe);
 }
 
-static int intel_dp_mst_add_properties(struct intel_dp *intel_dp,
-				       struct drm_connector *connector,
-				       const char *pathprop)
+static int mst_topology_add_connector_properties(struct intel_dp *intel_dp,
+						 struct drm_connector *connector,
+						 const char *pathprop)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1703,9 +1703,10 @@ static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *conn
 	return true;
 }
 
-static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
-							struct drm_dp_mst_port *port,
-							const char *pathprop)
+static struct drm_connector *
+mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
+			   struct drm_dp_mst_port *port,
+			   const char *pathprop)
 {
 	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -1752,7 +1753,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 			goto err;
 	}
 
-	ret = intel_dp_mst_add_properties(intel_dp, connector, pathprop);
+	ret = mst_topology_add_connector_properties(intel_dp, connector, pathprop);
 	if (ret)
 		goto err;
 
@@ -1769,16 +1770,16 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 }
 
 static void
-intel_dp_mst_poll_hpd_irq(struct drm_dp_mst_topology_mgr *mgr)
+mst_topology_poll_hpd_irq(struct drm_dp_mst_topology_mgr *mgr)
 {
 	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
 
 	intel_hpd_trigger_irq(dp_to_dig_port(intel_dp));
 }
 
-static const struct drm_dp_mst_topology_cbs mst_cbs = {
-	.add_connector = intel_dp_add_mst_connector,
-	.poll_hpd_irq = intel_dp_mst_poll_hpd_irq,
+static const struct drm_dp_mst_topology_cbs mst_topology_cbs = {
+	.add_connector = mst_topology_add_connector,
+	.poll_hpd_irq = mst_topology_poll_hpd_irq,
 };
 
 /* Create a fake encoder for an individual MST stream */
@@ -1871,7 +1872,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 	if (DISPLAY_VER(display) < 11 && port == PORT_E)
 		return 0;
 
-	intel_dp->mst_mgr.cbs = &mst_cbs;
+	intel_dp->mst_mgr.cbs = &mst_topology_cbs;
 
 	/* create encoders */
 	mst_stream_encoders_create(dig_port);
-- 
2.39.5

