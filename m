Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E3C6F7BCD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 06:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB65110E55C;
	Fri,  5 May 2023 04:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B63110E55C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 04:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683260205; x=1714796205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/gSd+BqS6PEq4EixPs0Xdv68V1bZLDfRr6xsg1NYkis=;
 b=VqGFxWXMm1znuXJrG0QnZ7wq3Tv4hmPg4OVGkX3epkpJbqJ0+5vWoEhB
 Hj5nG+rBGIver9SbDeVLzq9n6PP9rFHfu+FHlDKqhslzPvLfYt8wkePUI
 b5/TWhD35pTJ9NinrTNTlxXqhidpf7zKeNNPv/RotDl88RRi6K1KvgcHs
 Ijf47CCWu4ftg4d1QyBSkqNlfj/sebnWYyNFu2TQPYm85au7z5CWf0CGu
 C9rEJNm/ciqf0Mo7IUfgWMuQeCBfGGSVdBseWbN0lQh3W/nrjEAObUlBx
 QUdeE/wWM58iSBuK3XFgQ9Gd9hCBji+OLR2AHzrAhknu1qAFu8s+Y1MuF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="349160572"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="349160572"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 21:16:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="871638605"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="871638605"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 04 May 2023 21:16:41 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 09:45:12 +0530
Message-Id: <20230505041512.585486-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230503101206.579877-1-suraj.kandpal@intel.com>
References: <20230503101206.579877-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Check if media_gt exists
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

Check if media_gt exists if we are using gsc cs

--v2
-correct typo [Ankit]
-assign gsc variable if gt exists [Ankit]

--v3
-declare gsc and gt variables in if block [Ankit]

--v4
-add fixes tag [Ankit]

Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..b183efab04a1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -204,8 +204,6 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	struct intel_gt *gt = dev_priv->media_gt;
-	struct intel_gsc_uc *gsc = &gt->uc.gsc;
 	bool capable = false;
 
 	/* I915 support for HDCP2.2 */
@@ -213,9 +211,13 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 		return false;
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
-	if (intel_hdcp_gsc_cs_required(dev_priv))
-		if (!intel_uc_fw_is_running(&gsc->fw))
+	if (intel_hdcp_gsc_cs_required(dev_priv)) {
+		struct intel_gt *gt = dev_priv->media_gt;
+		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
+
+		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
 			return false;
+	}
 
 	/* MEI/GSC interface is solid depending on which is used */
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-- 
2.25.1

