Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21175848E6A
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 15:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1556112042;
	Sun,  4 Feb 2024 14:27:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I74zcl38";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E21C112042
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 14:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707056831; x=1738592831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NgLFeQB5hmq6sO1kLgtKpu0vC90sS2OZMM8jj/MHHfs=;
 b=I74zcl38qTaDKOD2wrIauaLz+Z5vKeBemriyDH5THg3o9tHsrwOUgF8p
 1W3Z+8xeyPCyoSqgv5YsUCICO8DhX5na3Fn/MHg4TwFIG2gAAIXd7AhEX
 ssGnIsW1F+F7wvCCrZ5uNfBJ7Ha8nuITcs6UXCmcFQqCEiI9O234Ma7gV
 YbVfClSG4MPybOp5Qfs4Rkr/wQSdSYSjmIA+CBZwS4Pb7yTI8r+cZb//P
 vHeyqkMEiXfNWY1n5nl40qSYoRWlJVH7GZdJFDA/IvApMbyDN0vm/sZSH
 dxzf4Stwf1jbhk0qzbXnVEfb6nzI+4tRWU0VgDCCxduWMdKh+ZXINOLvH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="17920772"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="17920772"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 06:27:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="31605267"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 04 Feb 2024 06:27:10 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 04/11] drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
Date: Sun,  4 Feb 2024 19:54:58 +0530
Message-Id: <20240204142505.1157146-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204142505.1157146-1-suraj.kandpal@intel.com>
References: <20240204142505.1157146-1-suraj.kandpal@intel.com>
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 9aeee6b49b3d..ef1a4c90c225 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -122,13 +122,13 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp_read_bcaps(struct intel_digital_port *dig_port,
+int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
+			     struct drm_i915_private *i915,
 			     u8 *bcaps)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BCAPS,
+	ret = drm_dp_dpcd_read(aux, DP_AUX_HDCP_BCAPS,
 			       bcaps, 1);
 	if (ret != 1) {
 		drm_dbg_kms(&i915->drm,
@@ -143,10 +143,11 @@ static
 int intel_dp_hdcp_repeater_present(struct intel_digital_port *dig_port,
 				   bool *repeater_present)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915,  &bcaps);
 	if (ret)
 		return ret;
 
@@ -268,10 +269,11 @@ static
 int intel_dp_hdcp_capable(struct intel_digital_port *dig_port,
 			  bool *hdcp_capable)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915, &bcaps);
 	if (ret)
 		return ret;
 
@@ -639,8 +641,6 @@ static
 int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
 			    bool *capable)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	u8 rx_caps[3];
 	int ret;
 
-- 
2.25.1

