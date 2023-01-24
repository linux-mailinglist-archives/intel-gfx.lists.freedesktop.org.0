Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E017067946B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 10:43:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23B8210E63C;
	Tue, 24 Jan 2023 09:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095ED10E63C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 09:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674553425; x=1706089425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AODAvwh/YQf9zqOwPeW8cUw4g99U3+gXK5nzI0jkMJc=;
 b=V19tDTajm2ifl71niwSkqmVa2ywxO4cNhfvrC92d9zm0Wlkgwx9gM2sY
 RTcht7qV3hhxs7Gu/ncraVY4qpQzxkimQZk8/H0OI5+UXE6gEvQlx3o5O
 wWUtDo562p57XnPeh/OyN8KRTu6FFnPGh0lyBK0nJyQnOInZh+C88X/np
 /5NCSAvilGRcH5CrKhdKtQT4talIrNa6+S7IOsiJ5GWyMNou8XNx1uR8K
 iCBc3Nu15zlEpu36b48yQJG3U7PnrK6QhaAE7UGelfkA/UYzzl4j/TyLL
 YpwSOc8hUnSvuQi0Lc+WgZUMhp9OLvysOHiB15GKTInpSE/h5Vs86xZqZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="309835456"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="309835456"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:43:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="730618300"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="730618300"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2023 01:43:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 15:12:21 +0530
Message-Id: <20230124094224.2714023-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230124094224.2714023-1-suraj.kandpal@intel.com>
References: <20230124094224.2714023-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 3/6] i915/hdcp: HDCP2.x Refactoring to
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As now we have more then one type of content protection
secrity firmware. Let change the i915_hdcp_interface.h
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

