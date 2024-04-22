Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 390348AC428
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 989411127D4;
	Mon, 22 Apr 2024 06:25:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iz2UrSXb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0D01127D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 06:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713767104; x=1745303104;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/CUfAADq1X/ZmsBIyhRRFVeWrcBk3fx+Pmsz3/OTgHM=;
 b=iz2UrSXbrk9+UZ/KwkvybHA5/VSuD4TwyoSrX5aABsi5h4P3qEZaT7Hj
 d69eD3lXcehrTRp2j3kk4byqRWZCgXjW11sG9i2qAMbaQBikkE6z2oH/Q
 W/PR4S3P6dqPXSp5cU8+vEYgTetejaHG+HfLAPHgyNTyUxmXHo5wPCRpM
 k4uqyonxRUxqvsZ1vo3YRlJYnblef4NjdVU8wpNNZusKjbbk06V4Eh8ya
 AGCYGiDEqyL7ICn66W84WEl1hgp1DainodNXFFKGMXHCVX6WUmDwBz6D0
 lIyk6OumnEUDiHyF+0bb0VXWgOuzhNayRAqX4u53qxPgrHoM6ZBJzdy4y A==;
X-CSE-ConnectionGUID: FTHWmR0tRKOWpYNgeO+mKA==
X-CSE-MsgGUID: lTDqxR1pTQGb/3wfoLfvPw==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9402501"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9402501"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:25:03 -0700
X-CSE-ConnectionGUID: QoBncIJ8RT6AsnhSvMOi1A==
X-CSE-MsgGUID: pDnD1Ge8Rou5n3FBGNjMSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24430238"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.197])
 by orviesa007.jf.intel.com with ESMTP; 21 Apr 2024 23:25:01 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: [PATCH] drm/i915/display: Fixed the main link lost in MST
Date: Mon, 22 Apr 2024 14:33:00 +0800
Message-Id: <20240422063300.1459712-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Gareth Yu <gareth.yu@intel.com>

Re-train the main link when the sink asserts a HPD for the main lnk 
lost.

Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc : Matt Roper <matthew.d.roper@intel.com>
Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e05e25cd4a94..db5d4fa8340b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5849,8 +5849,13 @@ intel_dp_detect(struct drm_connector *connector,
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
 		status = edp_detect(intel_dp);
-	else if (intel_digital_port_connected(encoder))
+	else if (intel_digital_port_connected(encoder)) {
 		status = intel_dp_detect_dpcd(intel_dp);
+		if (status == connector_status_connected && intel_dp->is_mst &&
+			!intel_dp_mst_link_status(intel_dp))
+			if (intel_dp_retrain_link(encoder, ctx))
+				status = connector_status_disconnected;
+	}
 	else
 		status = connector_status_disconnected;
 
-- 
2.25.1

