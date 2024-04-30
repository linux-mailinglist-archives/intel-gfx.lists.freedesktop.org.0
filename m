Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB05C8B6B5B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 09:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CD210E871;
	Tue, 30 Apr 2024 07:21:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2bZFbd2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AAA110E959
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 07:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714461691; x=1745997691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9lIMCT9y6oqQBMv9IURziDz7CJYq+wSzXtSZAB+9RsE=;
 b=m2bZFbd2XfmKtcRBhtoJzNxakGa3AMt9tjqiApvXyNuJJnYv2ZttECNg
 zlysl9ZNv/ywkVs6iO3a1NpkSDBdcAsEVvJByR3beYDdi5RaaV5ntpDEd
 owFXZk81SWiGtc2FCZ95FqONEb3vP6dZ1ZXVhmPEWNqyCn4taOo7Ikr5p
 yYf35DCex+XfU0VXTd4cxmCI0fJ1uOZyb0L2DztUf/BQtuPdI2cmUWOkM
 6wmAPEoH7uZ+YG8TAPKph6sBt0Kb5LhM3BzyocEwrBhwC7O6eRxBWoNvj
 x79xqchsHCYCtbqiA20TONDnb0UerRrS0J+L4XraiUt2A6UUrqi/Yf9c9 Q==;
X-CSE-ConnectionGUID: kR4z5Z/VRmKVPYs0o5Tz+g==
X-CSE-MsgGUID: uQV4Zb0uQyKGjOGyryE24Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="35539535"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="35539535"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 00:21:31 -0700
X-CSE-ConnectionGUID: L+zp2qbQQaWqtd0gbE1hIA==
X-CSE-MsgGUID: 8qZC7BruSw+cJfWz42feQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26467208"
Received: from unknown (HELO gyu3-linux.itwn.intel.com) ([10.225.64.210])
 by fmviesa006.fm.intel.com with ESMTP; 30 Apr 2024 00:21:26 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: gareth.yu@intel.com, Tejas Upadhyay <tejas.upadhyay@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/display: Fixed the main link lost in MST
Date: Tue, 30 Apr 2024 15:31:12 +0800
Message-Id: <20240430073112.10586-1-gareth.yu@intel.com>
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
v6: Correct Tejas' email address in cc

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10902
Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
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

