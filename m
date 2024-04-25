Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56768B1975
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 05:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EB511A02A;
	Thu, 25 Apr 2024 03:26:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYnZ2xuf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6843C11A02A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Apr 2024 03:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714015559; x=1745551559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fcCRQlD0IMO5MU3Tw2pQU0O0TUlgrTxLgUHTuGhbLDk=;
 b=JYnZ2xufHHy9VdryuFjN5IHppppA9TxnUsgZywToIXlmqLgc+Ykinpmd
 +xhOU6XCDhkOtxoO3hqtvGNhREW9h6HmolV9SPJtcflhf1FmHr2dpD9RE
 venxSzMPoqr17RsJY6nc92gpZNR+xebs+uadlF5/n8zImI1jhmzEQFQUr
 WGgB0IdGUBQex+7Ei+Wrlh27Km69xSsUt6wOJjvqhLJPqwM4U8iHGJfZB
 RJTSvByeuK/X+QnkjhC7j1CDaNNttBlOr4KI3czD4L6jv7/jVS+WDsTdG
 N2EgsKd7N2mtznWOuXWgF15QcRzt4M2BB97DgYiO1nQr/S6RsStfMf4k6 A==;
X-CSE-ConnectionGUID: L+S0jXh3RA6PXUreB1/B2g==
X-CSE-MsgGUID: bMZfePPkRGm2V1P+oKm1vQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="27138230"
X-IronPort-AV: E=Sophos;i="6.07,228,1708416000"; d="scan'208";a="27138230"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 20:25:58 -0700
X-CSE-ConnectionGUID: dX/UAcQuQv23MZiaf63h/g==
X-CSE-MsgGUID: 6pTQiwGsQU+Mcs+A+FSGag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,228,1708416000"; d="scan'208";a="55866767"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.197])
 by orviesa002.jf.intel.com with ESMTP; 24 Apr 2024 20:25:57 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: [PATCH] drm/i915/display: Fixed the main link lost in MST
Date: Thu, 25 Apr 2024 11:34:26 +0800
Message-Id: <20240425033426.2269822-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422063300.1459712-1-gareth.yu@intel.com>
References: <20240422063300.1459712-1-gareth.yu@intel.com>
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

v4:  detect the main link state by intel_dp_needs_link_retrain
     instead of intel_dp_mst_link_status because the main link
     state can't detect correctly sometimes by
     intel_dp_mst_link_status

Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc : Matt Roper <matthew.d.roper@intel.com>
Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e05e25cd4a94..e1b60303b256 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5849,8 +5849,14 @@ intel_dp_detect(struct drm_connector *connector,
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
 		status = edp_detect(intel_dp);
-	else if (intel_digital_port_connected(encoder))
+	else if (intel_digital_port_connected(encoder)) {
 		status = intel_dp_detect_dpcd(intel_dp);
+		if (status == connector_status_connected && intel_dp->is_mst &&
+		    intel_dp_needs_link_retrain(intel_dp)) {
+			if (intel_dp_retrain_link(encoder, ctx))
+				status = connector_status_disconnected;
+		}
+	}
 	else
 		status = connector_status_disconnected;
 
-- 
2.25.1

