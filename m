Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAD8ADFC37
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 06:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEA410E271;
	Thu, 19 Jun 2025 04:05:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TlQcR3T9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034A910E03F;
 Thu, 19 Jun 2025 04:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750305952; x=1781841952;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lYIsUi6o1A24XguHhiKNuYH2kDMhM08KFVEnHq/JtFo=;
 b=TlQcR3T9Zcb0ft+lGHVDkE9i9zXvRpayk3SOKvozhJk/sCo+fXk+SZfr
 RE2DFaR330tXRoGIC9DZRLvs1y5U/Koax9Q22QJjwFz1gjcTozDL0H7XA
 WhA+NnoPbLQkqhCAruvkR1cLarD9G9gkodTfITdmsdJkZ6f20KZn3NI6F
 HM9dj20oodi6Un1K8x2rHap6yLvI1MX+x/1v/r5G0k8pb6XrAsjTfCREr
 GPYcuSGC+0aPmmiWFIpOtyshhDouel46pyaenHjXACk8zpD0aBaflv1yR
 REBmemD9jaHUNaGKLsWpjjGo2Wx7mQL4i8p+6/QpxvE6U0zy3ieEcvJjV g==;
X-CSE-ConnectionGUID: u6xHpemYQqScUwdASO31Vg==
X-CSE-MsgGUID: MKTZeHw6SnybJLhX1rZjDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56346143"
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208,223";a="56346143"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 21:05:52 -0700
X-CSE-ConnectionGUID: fMIx42NVSmK87tvPavOugw==
X-CSE-MsgGUID: f3INqbvwSxeU0mVk0dHwqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; 
 d="scan'208,223";a="150219212"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 18 Jun 2025 21:05:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify content type
 status
Date: Thu, 19 Jun 2025 09:35:20 +0530
Message-Id: <20250619040519.3375518-1-suraj.kandpal@intel.com>
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

From PTL we need to move to using HDCP2_STREAM_STATUS to check if
the written content type info is the same as we expect since
HDCP2_AUTH_STREAM is inaccessible to us now.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 7bd775fb65a0..131fc0cae13b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -806,9 +806,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	enum port port = dig_port->base.port;
 	int ret;
 
-	drm_WARN_ON(display->drm, enable &&
-		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
-		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
+	if (DISPLAY_VER(display) < 30)
+		drm_WARN_ON(display->drm, enable &&
+			    !!(intel_de_read(display,
+			    HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
+			    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
 
 	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
 	if (ret)
@@ -824,6 +826,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 		return -ETIMEDOUT;
 	}
 
+	if (DISPLAY_VER(display) >= 30)
+		drm_WARN_ON(display->drm, enable &&
+			    !!(intel_de_read(display,
+			    HDCP2_STREAM_STATUS(display, cpu_transcoder, port))
+			    & STREAM_TYPE_STATUS) != data->streams[0].stream_type);
 	return 0;
 }
 
-- 
2.34.1

