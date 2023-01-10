Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E082663839
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 05:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEFB10E534;
	Tue, 10 Jan 2023 04:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3572310E530
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 04:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673325397; x=1704861397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TC/PxktSqKxDBNbtKs1Tt9asBHj10mhClU/KzsjyNlE=;
 b=kfu5bPIaR7lvcwyEZzeCPtRpKmT+P4/vRK5w24tXgf0ErTOdrf+/vJVQ
 NC6xe3eQFOfLYXCcsci1CpJtresx59qguG0pIF0/e36Zwzx5miJYQABWm
 mUAF03wrWRx2hF6wVp7guqBkx7U76BOuA+N25GUVwFzllDamb9S9Uf+n6
 BpSb1vVV8clygP7bI2VceFd7WKhoqop2pTfA8MeJl7j13uBcY6bRarKRX
 WqiCO9gRj12nxOhw/KUYAjP2cIvJNFB7s1WQBCr5V76LYSW1YHt341HYs
 5vrLlmpLtoIWnLd4YcECzfAB6P7yXH1m5nAN3akTKajoH1iHVENuvZBPi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="350279701"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="350279701"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 20:36:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="650230573"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="650230573"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 09 Jan 2023 20:36:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 10:05:14 +0530
Message-Id: <20230110043517.1388837-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110043517.1388837-1-suraj.kandpal@intel.com>
References: <20230110043517.1388837-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 3/6] i915/hdcp: HDCP2.x Refactoring to
 agnostic hdcp
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As now we have more then one type of content protection
secrity firmware. Let change the i915_cp_fw_hdcp_interface.h
header naming convention to suit generic f/w type.
%s/MEI_/HDCP_
%s/mei_dev/hdcp_dev

As interface to CP FW can be either a non i915 component or
i915 intergral component, change structure name Accordingly.
%s/i915_hdcp_comp_master/i915_hdcp_master
%s/i915_hdcp_component_ops/i915_hdcp_ops

--v3
-Changing names to drop cp_fw to make naming more agnostic[Jani]

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c         | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index de71ff6ad80a..132e9134ba05 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -15,6 +15,7 @@
 
 #include <drm/drm_connector.h>
 #include <drm/drm_modeset_lock.h>
+#include <drm/i915_hdcp_interface.h>
 
 #include "intel_cdclk.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 262c76f21801..0d6aed1eb171 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1409,7 +1409,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	return ret;
 }
 
-static int hdcp2_close_mei_session(struct intel_connector *connector)
+static int hdcp2_close_session(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -1433,7 +1433,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 
 static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 {
-	return hdcp2_close_mei_session(connector);
+	return hdcp2_close_session(connector);
 }
 
 /* Authentication flow starts from here */
-- 
2.25.1

