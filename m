Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792D58B2ED2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 05:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2D910F1AF;
	Fri, 26 Apr 2024 03:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z65KLWA2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5F710F1AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 03:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714100625; x=1745636625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+otUs7/2fXFgqTRL5Rr7x0QWwbeQoQRRNB6l1zDkDHY=;
 b=Z65KLWA2vj8Jo+nt5foBtPNKOId6oJ4OG4oP/OFwbyhAVMsPNxh4p6s7
 ZLMDoDuRsgGsp0pdUAJyP6Vff+G4+jWBD7WoENYR4vgnFVJDQRJN2aSC9
 KOWMfe16HG3cPjN6227+/v8fR4atnvwaNCez2SSDxOVqHfZyFfyCqf6NB
 iM0ye0fOc39M8xgspapfk6VP3KetWv9Eev8OfaBNGFnZ7eZUnvRdupQs5
 VOc4y5l3ppVX/VsV/HtCBi9iIB7yrcq8npUMlpwfn7kyAi8gSInXp0yLl
 p0YfOolljkMMTKhIdY1+jwvtZ6lVpCfEoxodRAYvbYlYb91CsMwdnMveY w==;
X-CSE-ConnectionGUID: uafZgBnyS0aLBvfPZQMNKA==
X-CSE-MsgGUID: 6GNVfxWoSAiASWYFd9oIeQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="27281878"
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="27281878"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 20:03:45 -0700
X-CSE-ConnectionGUID: 7cfbF41zRX+EXSYoaBGSgw==
X-CSE-MsgGUID: MdrLFYBDSUGh8ffEIgvCiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="25161019"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.197])
 by orviesa010.jf.intel.com with ESMTP; 25 Apr 2024 20:03:43 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: gareth.yu@intel.com,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/display: Fixed the main link lost in MST
Date: Fri, 26 Apr 2024 11:11:41 +0800
Message-Id: <20240426031141.2506987-1-gareth.yu@intel.com>
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

Re-train the main link for the main link lost in MST. The previous
version doesn't cover MST mode.

v5: Move link status check to the location which covers MST mode

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10902
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e05e25cd4a94..8043740b4233 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5891,16 +5891,6 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_print_rates(intel_dp);
 
-	if (intel_dp->is_mst) {
-		/*
-		 * If we are in MST mode then this connector
-		 * won't appear connected or have anything
-		 * with EDID on it
-		 */
-		status = connector_status_disconnected;
-		goto out;
-	}
-
 	/*
 	 * Some external monitors do not signal loss of link synchronization
 	 * with an IRQ_HPD, so force a link status check.
@@ -5911,6 +5901,16 @@ intel_dp_detect(struct drm_connector *connector,
 			return ret;
 	}
 
+	if (intel_dp->is_mst) {
+		/*
+		 * If we are in MST mode then this connector
+		 * won't appear connected or have anything
+		 * with EDID on it
+		 */
+		status = connector_status_disconnected;
+		goto out;
+	}
+
 	/*
 	 * Clearing NACK and defer counts to get their exact values
 	 * while reading EDID which are required by Compliance tests
-- 
2.25.1

