Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B21B663EC7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 11:58:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E6710E59D;
	Tue, 10 Jan 2023 10:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B5D10E59C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 10:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673348335; x=1704884335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TC/PxktSqKxDBNbtKs1Tt9asBHj10mhClU/KzsjyNlE=;
 b=CpV7dgnroYQU7dk2dcj7tRUjoq0AWo65PWMKREHjuvtHEv35Z3WYLLss
 mTpScYIR3a7vbKvoIAOib6da4HZ2OMVgf/3cJ9P7/g8Gzb7ZxXqie5hKX
 cPxwQZsj6ZSTpcDqGr57O0qh7/uE0IaqyuOYeA1Scmwg8TW5fu07qJVOO
 4sPWj6afUnTL3S18QM2Xvh/iGiDUi3qVSmzaEoCSjMxTUI74rFQe+LMqp
 Y3c4eUmPduGt+I/tt7/Qd8uCC79Rtdil63+347oCsJO9Qo2ZIOUeFB4cl
 9mleNpgjnoI4C+3gSvUD2ZdwsI45us4JIuJmXY/jfIyR3L1bRwwjMSdaA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="385421863"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="385421863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 02:58:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="650322933"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="650322933"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 10 Jan 2023 02:58:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 16:27:29 +0530
Message-Id: <20230110105732.1390596-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110105732.1390596-1-suraj.kandpal@intel.com>
References: <20230110105732.1390596-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 3/6] i915/hdcp: HDCP2.x Refactoring to
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

