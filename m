Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A81E89B717
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 07:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AD5112050;
	Mon,  8 Apr 2024 05:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J58yT7Bq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACC810F799
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 05:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712553268; x=1744089268;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F8IVLzvpzQ5q1lL/iJppNJOaJsl4bDmA5UweQyGN3pA=;
 b=J58yT7BqU01kZ6YCSghB87DJibpgu+MFBdA70i1hUlEpuNrRo5H1euEr
 svdYE0iSvtUi/akeEpuIdQ2ReaeLzy9riPZbriF4WnhHIe2amU9YSVgoZ
 YzxRLT4sqiurSbVnj44LIRoUibKkVZ1LBYhtjhlJ75qXAGAX3axaVEVNh
 P9vdeURgjgQ+odYBuYCF0QjGcbWzt/70bgF5cA2zCrIcN3hg/2GfvIG67
 6DJGVuuU/RqpHB/AvlFhqXIEH5pz276D1bBK+aBMqsWpsZQlE53jugeed
 i7nks04ew/zxI1/CwjhY4j/Xf6DsgJFob0TzOqKQIpnlnsXtUo+9xRPDW w==;
X-CSE-ConnectionGUID: OAa4qznXT52GSFgw+fY1nA==
X-CSE-MsgGUID: zpf0CJM/RWaAvv+XT/ZfQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18429006"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18429006"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:28 -0700
X-CSE-ConnectionGUID: 6mtbiNHjQKKB/IuQKHEiEw==
X-CSE-MsgGUID: QTERfjG/QFCndMwTWvLvGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24401485"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/lspcon: Separate out function to get expected
 mode
Date: Mon,  8 Apr 2024 10:35:56 +0530
Message-Id: <20240408050558.865396-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
References: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
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

Reuse code to wake native aux channel and get the expected lspcon
mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 1d048fa98561..36e8d9fb2bbb 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -240,6 +240,13 @@ static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
 	return true;
 }
 
+static
+enum drm_lspcon_mode lspcon_get_expected_mode(struct intel_lspcon *lspcon)
+{
+	return lspcon_wake_native_aux_ch(lspcon) ?
+		DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
+}
+
 static bool lspcon_probe(struct intel_lspcon *lspcon)
 {
 	int retry;
@@ -249,9 +256,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
 	enum drm_lspcon_mode expected_mode;
 
-	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
-			DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
-
+	expected_mode = lspcon_get_expected_mode(lspcon);
 	/* Lets probe the adaptor and check its type */
 	for (retry = 0; retry < 6; retry++) {
 		if (retry)
@@ -713,12 +718,9 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 		}
 	}
 
-	if (lspcon_wake_native_aux_ch(lspcon)) {
-		expected_mode = DRM_LSPCON_MODE_PCON;
+	expected_mode = lspcon_get_expected_mode(lspcon);
+	if (expected_mode == DRM_LSPCON_MODE_PCON)
 		lspcon_resume_in_pcon_wa(lspcon);
-	} else {
-		expected_mode = DRM_LSPCON_MODE_LS;
-	}
 
 	if (lspcon_wait_mode(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
 		return;
-- 
2.40.1

