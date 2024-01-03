Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AF1822A20
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 10:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B3210E094;
	Wed,  3 Jan 2024 09:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D2710E094
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 09:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704273446; x=1735809446;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e4daPYkSYFw43cY/RKGIiTTNp2O7CZUWsSTuJPu30wA=;
 b=Y/g4ImnJ3ylMmhuw1BBYoJPYkdwPOhcBQQo3hwUOv1HRGpr8uffKzvGJ
 T4b160lIVQXVqzkCWAhGjZTp61yQp8AYLmKnqUWGvcL4L8cRyoJaJTWpj
 sWtfGvQtI8duAQtM0s7sXcX0yDlpRlwfIUVKpEBEanNMW4ApJNjzMzyBX
 dgFrZa33vO4I+ZVWGM8Q4avZSA3eb2lIe4wrA7NAJKidG3PNZYaO/wDo8
 XauKy44wiGCsIXbFcy75ktrarfXgwfHAs2BbzZ2lBevOMDRuPZ8MA8LKb
 KC7TsMQKZ0T4czCRKqUEfA2IpUa0JUxk65rqgfNN9vbu3sYGe2zCIxMDx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="18510895"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="18510895"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 01:17:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="903385692"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="903385692"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga004.jf.intel.com with ESMTP; 03 Jan 2024 01:17:24 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, imre.deak@intel.com
Subject: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Date: Wed,  3 Jan 2024 14:37:15 +0530
Message-Id: <20240103090715.307309-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

With a value of '0' read from MSTM_CAP register MST to be enabled.
DP2.1 SCR updates the spec for 128/132b DP capable supporting only one
stream and not supporting single stream sideband MSG.
The underlying protocol will be MST to enable use of MTP.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ff0cbd9c0df..40d3280f8d98 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
-	intel_dp->is_mst = sink_can_mst &&
-		i915->display.params.enable_dp_mst;
+	/*
+	 * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR rates then
+	 * DP2.1 can be enabled with underlying protocol using MST for MTP
+	 */
+	intel_dp->is_mst = (sink_can_mst ||
+			    drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
+			    && i915->display.params.enable_dp_mst;
 
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
 					intel_dp->is_mst);
-- 
2.25.1

