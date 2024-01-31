Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A87844809
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228A310FC8B;
	Wed, 31 Jan 2024 19:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7157310FC89
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706729688; x=1738265688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x160up0xtZYStNtxbne2Bc2915iJs6p2BhIYy3aPbeA=;
 b=Wtjg5l2reaYVJC8rM9MLYtY2dAV+rEuI3odB+m4LZtESMSJU96A6eAAO
 OaocxBpqHjvSJhppblq8Ubi6q6PWtIb3UMGKPrYQP3uKNx1X8SZpP/UBt
 T+sUR77k3oR2oJHy6q6Dha/74nEP6z232MKzB9SbbeAPVRjUMyzr3KKge
 YkqgIvJCfQ2cxrWtKJ6osTFLQB1cir9yuae9cdrE/JDAPHkR3frAFksmr
 FtyW1KICcx9kYH0vBm27IVFrio87D0EgqTvI2ah81xqGD9IV24DxL3G3u
 0wE+ciojKGnpmERTGS08zoWKa+Y//7hMqFY65QcIqwOGciug9rKC74c/N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="467936146"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="467936146"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:34:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822686260"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="822686260"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2024 11:34:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/10] drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
Date: Thu,  1 Feb 2024 01:02:35 +0530
Message-Id: <20240131193240.938405-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193240.938405-1-suraj.kandpal@intel.com>
References: <20240131193240.938405-1-suraj.kandpal@intel.com>
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

