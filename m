Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2C89ABE2C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 07:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE0F10E73A;
	Wed, 23 Oct 2024 05:52:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHHrO7xG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC1F10E73A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 05:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729662757; x=1761198757;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qh5Yu45QGXqgRMAFX8MeYpvmClWtimK8FtqLTscGfzM=;
 b=XHHrO7xGHJ9mQVNzLUffwhtE1o21MtVjBmcp6WW2dpwVli6xxdWKInPZ
 iSeW9fasnr9d5o2kCCBUmIOPXYCzrhVhjUpgVvrux+aVc35R9qF5WDhw8
 NhuGpRG0eIZ//Diu/LFsuFIpgDiXYY4jv5cJG8BUJxOmq66i2vfKZlna+
 rHAU0CzUd6Yh8LpnOx7sTxOC0UQZo5pzdyKmHxZeUwYEg1RK+fXqCISv6
 6Lj8qTLXDslW47a11lhM+ucBjFauYAWqOGzXGXYI7zsSquBSKAyio5LzZ
 L7KAB8JV+wSgOgcsLuXHMz9I37DLpXW0MMKVzRcjwt8MUvWP4pGDwbjiV g==;
X-CSE-ConnectionGUID: lUZUZxDmTb2+xQfLFmAJTg==
X-CSE-MsgGUID: EAnQdk71SMe9zxfl1WfmWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="40618831"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="40618831"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 22:52:37 -0700
X-CSE-ConnectionGUID: Si/2gfC9TZKhdUjXdT4/qg==
X-CSE-MsgGUID: 4bF1n6zNT0iG9zOGs8BktA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80435660"
Received: from spottumu-desk.iind.intel.com ([10.145.152.200])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 22:52:36 -0700
From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH] drm/i915: Use string enable/disable choice helpers
Date: Wed, 23 Oct 2024 11:16:55 +0530
Message-Id: <20241023054655.4017489-1-sai.teja.pottumuttu@intel.com>
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

Replace the last few remaining instances of string enable(d)/disable(d)
choices with the linux string choice helpers to avoid further
cocci warnings.

Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_tc.c      | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index dce645a07cdb..6a09b93742ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -784,7 +784,7 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
 			  stream_enc_status, enable ? stream_enc_status : 0,
 			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
 		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
-			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
+			transcoder_name(cpu_transcoder), str_enabled_disabled(enable));
 		return -ETIMEDOUT;
 	}
 
@@ -818,7 +818,7 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 			  enable ? STREAM_ENCRYPTION_STATUS : 0,
 			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
 		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
-			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
+			transcoder_name(cpu_transcoder), str_enabled_disabled(enable));
 		return -ETIMEDOUT;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index ffeee9daa568..5bea6404491f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1148,7 +1148,7 @@ void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
 		return;
 
 	drm_dbg_kms(display->drm, "panel power control backlight %s\n",
-		    enable ? "enable" : "disable");
+		    str_enable_disable(enable));
 
 	if (enable)
 		intel_pps_backlight_on(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 6f2ee7dbc43b..b16c4d2d4077 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1005,7 +1005,7 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
 	if (wait_for(xelpdp_tc_phy_tcss_power_is_enabled(tc) == enabled, 5)) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: timeout waiting for TCSS power to get %s\n",
-			    enabled ? "enabled" : "disabled",
+			    str_enabled_disabled(enabled),
 			    tc->port_name);
 		return false;
 	}
-- 
2.34.1

