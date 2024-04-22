Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0758AC5E5
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 09:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC80E112871;
	Mon, 22 Apr 2024 07:46:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MNDNlqW4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B153D112862
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713772013; x=1745308013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FWs9/WOmnY0gn82kqJq06/dnRryQ+T4rYfaIMkX49+c=;
 b=MNDNlqW41ASaGYQpz+bUrM6NeMSSr+IQ8kPdkwE203ykWzOnaHvllIaQ
 MB2d7x23DoM5Gu1uFGKwKJVCQi353UFhR0vKFKl3/nRPMR9/AijNWDxuA
 NW6VB7YMCZlk6HUK5Kn/0zMywDzpM3F/Btl9KL1v58XOSARhTp43bFti8
 nB2aAjbxIR8rasHT/mWcev1CgC/rQy35jwboxqFimy7EU6zJc6yqHxPfa
 0cRYdgGMOAtgznXwcFfUIRRj/FezBO+gysDuFCPrZhJn7uybJQkbzsVT9
 WyvvIXevh/K/7d1DjUNh/LLzNlCZtcuf3R1HO3iTgt5ectZ+zdx0Dv0jQ w==;
X-CSE-ConnectionGUID: FTWBEkooQFGMTp89GNIcsg==
X-CSE-MsgGUID: aYO2Y7p6TQqlrXj3N2MY0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9515843"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9515843"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 00:46:52 -0700
X-CSE-ConnectionGUID: ByOZAi2RSyuT3p1FYMuKIg==
X-CSE-MsgGUID: gS54oy5sQku0QVmrYLbvJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23912418"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.197])
 by orviesa009.jf.intel.com with ESMTP; 22 Apr 2024 00:46:51 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: [PATCH] drm/i915/display: Fixed the main link lost in MST
Date: Mon, 22 Apr 2024 15:55:14 +0800
Message-Id: <20240422075514.1529260-1-gareth.yu@intel.com>
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
+		    !intel_dp_mst_link_status(intel_dp))
+			if (intel_dp_retrain_link(encoder, ctx))
+				status = connector_status_disconnected;
+	}
 	else
 		status = connector_status_disconnected;
 
-- 
2.25.1

