Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA890854449
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 09:50:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E72710E5AE;
	Wed, 14 Feb 2024 08:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OS+vF4N2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F2110E5D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 08:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707900615; x=1739436615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NgLFeQB5hmq6sO1kLgtKpu0vC90sS2OZMM8jj/MHHfs=;
 b=OS+vF4N2nHDsIveD/Y8rGREh9af6TI67EuZSDCM5MEWquJlJ2U28z1ih
 5Pf1ZTt/3vO4AY0LcPdWw4/5dcw84ConP+Lj3N28o9M5L1xxhSG0pSG+J
 WOnAjkrxtEe3A1UrWLSrSPzY2A9lzWHdJRrCuJdZzeyXv8N9hEn48yIQH
 u7LklCw85KTdl214VX8fjeqkNA5dwLW8/VZiO8Y2U4BW7i7VDr0m3kmbV
 XE5zDMjbmVYufN7Od01aDD2XF3uqGWgiRn1lehjLrTqU03MopON1rqfpb
 /HePbwYHT9WdWN8ydUAF8KEkFouQ16QzRy3n20Z9TZ2O7pUojOSw3qvAg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13323620"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13323620"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:50:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3295644"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 14 Feb 2024 00:50:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 04/12] drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
Date: Wed, 14 Feb 2024 14:18:02 +0530
Message-Id: <20240214084810.1417186-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240214084810.1417186-1-suraj.kandpal@intel.com>
References: <20240214084810.1417186-1-suraj.kandpal@intel.com>
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

