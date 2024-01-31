Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E02844825
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28BEF10FCA3;
	Wed, 31 Jan 2024 19:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DED210FC8D
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706730096; x=1738266096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x160up0xtZYStNtxbne2Bc2915iJs6p2BhIYy3aPbeA=;
 b=jfntDxwtA3hI8w6Th/zUAcinMffNb+UfgOXVb6CVFHfKMEIpJhFEWkwa
 +8ocD1s9iNILX0VRD6a58ecL9BmLml/BLVflHSSl6AxJhsmL75Zdn2jls
 5KGXnfYyq1wDx0wT5YTy/GF4UVlsa1LNPnUQqh4ov7qkIoNRj0YAgKmGu
 5iR8ef72T5m6SLqC9mvIr8x3LnDEFQBtuHnOT7Ps1D2FCvFuciLAp/bmu
 qEnSPwWk64q24DC9c505nVxGdDXIgxLRcqVP80Zo+lRRf0FI4tGkwJn9o
 uHWZnf1XKxCzT0Knw027P5S9FzZ1D5KPAA/gbP6R0KAfT7UoqzjsktcDd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402549776"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="402549776"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:41:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="788694643"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="788694643"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 31 Jan 2024 11:41:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/10] drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
Date: Thu,  1 Feb 2024 01:09:23 +0530
Message-Id: <20240131193929.938748-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193929.938748-1-suraj.kandpal@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Pass drm_dp_aux to intel_dp_hdcp_read_bcaps function
so as to aid in reading the bcaps for the remote monitor
later on.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 9aeee6b49b3d..261de01aa5d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -122,13 +122,13 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp_read_bcaps(struct intel_digital_port *dig_port,
+int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
 			     u8 *bcaps)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(aux->crtc->dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BCAPS,
+	ret = drm_dp_dpcd_read(aux, DP_AUX_HDCP_BCAPS,
 			       bcaps, 1);
 	if (ret != 1) {
 		drm_dbg_kms(&i915->drm,
@@ -146,7 +146,7 @@ int intel_dp_hdcp_repeater_present(struct intel_digital_port *dig_port,
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, &bcaps);
 	if (ret)
 		return ret;
 
@@ -271,7 +271,7 @@ int intel_dp_hdcp_capable(struct intel_digital_port *dig_port,
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, &bcaps);
 	if (ret)
 		return ret;
 
@@ -639,8 +639,6 @@ static
 int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
 			    bool *capable)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	u8 rx_caps[3];
 	int ret;
 
-- 
2.25.1

