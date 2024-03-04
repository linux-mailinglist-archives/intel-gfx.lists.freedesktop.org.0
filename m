Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B0686F95D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 06:07:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292AF10FC53;
	Mon,  4 Mar 2024 05:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S7M0+ITC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6266910FC52
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 05:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709528836; x=1741064836;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JMrcIkq7kzHzy5YXwlOILd4KvJgUwx4AayKKP/SR00o=;
 b=S7M0+ITCctoUw9psJeWfwhAv315coCAEOD+optAVnI0JhskQbWbLPa0P
 b3WdKXfsN1z8HJPShd32p95DxgyHBggqobGPKnpVS+5Jeq4Sbs1TCzsgw
 KBYMeEOKeBl1W+HJMFnbm4BBvSA+DFbP+EXAIBI21eWCBzhAro1GeqT9t
 4YTFcK8tz9yBm7VJhRvw7peT1AtcBAM+VFfjGE2EWzPxShoxbuNn9uTQk
 cIvk3TUCwYD/7zI5B+EAJsQ20OGy0KHPXYNGkUeEtTMlrqZ72eqiBDB+y
 rbiM5m9o2k/NaoAXF6Hd+NY4MqiBHthYU0nboLC0XcgdMq1/GMEZL1Z6e w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4123583"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4123583"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 21:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13533284"
Received: from shekharc-ms-7d25.iind.intel.com ([10.190.239.16])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 21:07:13 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, matthew.d.roper@intel.com,
 clinton.a.taylor@intel.com, shekhar.chauhan@intel.com
Subject: [PATCH v3] drm/i915/dp: Increase idle pattern wait timeout to 2ms
Date: Mon,  4 Mar 2024 10:36:31 +0530
Message-Id: <20240304050631.774920-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
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

Currently, the driver is only waiting for 1ms for
idle patterns. But starting from LNL and beyond,
the MST wants the driver to wait for 1640us before
timing out (which we round up to 2ms).

v1: Introduced the 2ms wait timeout.
v2: Segregated the wait timeout for platforms before & after LNL.
v3: Fixed 2 cosmetic changes.

BSpec: 68849
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bea441590204..b59adb7685b8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3677,12 +3677,19 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 	 */
 	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
 		return;
-
-	if (intel_de_wait_for_set(dev_priv,
-				  dp_tp_status_reg(encoder, crtc_state),
-				  DP_TP_STATUS_IDLE_DONE, 1))
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		if (intel_de_wait_for_set(dev_priv,
+			dp_tp_status_reg(encoder, crtc_state),
+			DP_TP_STATUS_IDLE_DONE, 2))
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for DP idle patterns\n");
+	} else {
+		if (intel_de_wait_for_set(dev_priv,
+			dp_tp_status_reg(encoder, crtc_state),
+			DP_TP_STATUS_IDLE_DONE, 1))
 		drm_err(&dev_priv->drm,
 			"Timed out waiting for DP idle patterns\n");
+	}
 }
 
 static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
-- 
2.34.1

