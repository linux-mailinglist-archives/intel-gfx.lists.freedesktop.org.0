Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2C16275DF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 07:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E99710E267;
	Mon, 14 Nov 2022 06:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF1A010E267
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 06:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668406989; x=1699942989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gj4NOW6TIdg2AjmNwE94KQPoGuwq/EbMjemq1EHyvo8=;
 b=axEK04SjWb5prc4y8Kh+RFTw45A/V8Sg8Ba1iPChRogfZYKHD1/+3NFE
 tEtTphxn5DWKtXfFu9CMaAzjaDF3VVRGLGeHjz1pMiCTHKfaKBZXGtd9l
 8OVxuiexNfWFXM5lRUAAjnor03UQxPwHw5NbkenOOFxMBbefW6Kow6F/5
 +LiTjXpVPzC2B2JEhnA3ltzTBnzyQtI3YOUyw2g7DHl18eH72PknotYX8
 OMuvW9xRTQcGFzs4H6Mk+vHQg82urRoeNm7RMaOMDPCUh4GICT27qjBJG
 pyw7AMKIUHhbqgDBjGI9mEw7U8vH4zFhaVkfs7INgpp6K7y/t/F9Sua2X A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310601780"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310601780"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2022 22:23:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="632683369"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="632683369"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2022 22:23:06 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:21:55 +0800
Message-Id: <20221114062155.18770-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221024064004.1879-1-shawn.c.lee@intel.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v4] drm/i915/pps: improve eDP power on flow
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

After i915 dirver initialized, a panel power off cycle delay
always append before turn eDP on. If eDP display did not
power on before. With this change, power off duration might
longer than power cycle delay. So driver can save power cycle
delay to speed up driver initialization time.

v2: fix commit messages
v3: refine panel_power_off_time default value and modify
    commit messages
v4: add eDP power off cycle delay at the path to unload i915 module

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
 drivers/gpu/drm/i915/i915_driver.c       | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 81ee7f3aadf6..ab4118b38120 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1100,7 +1100,7 @@ bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
 
 static void pps_init_timestamps(struct intel_dp *intel_dp)
 {
-	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
+	intel_dp->pps.panel_power_off_time = 0;
 	intel_dp->pps.last_power_on = jiffies;
 	intel_dp->pps.last_backlight_off = jiffies;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c3d43f9b1e45..0e3cbd129055 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -107,6 +107,8 @@ static const char irst_name[] = "INT3392";
 
 static const struct drm_driver i915_drm_driver;
 
+static void intel_shutdown_encoders(struct drm_i915_private *dev_priv);
+
 static void i915_release_bridge_dev(struct drm_device *dev,
 				    void *bridge)
 {
@@ -796,6 +798,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
+	intel_shutdown_encoders(dev_priv);
+
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_driver_unregister(gt);
 
-- 
2.17.1

