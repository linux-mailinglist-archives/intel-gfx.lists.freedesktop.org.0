Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3D0AE03C4
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 13:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC7A10EA07;
	Thu, 19 Jun 2025 11:34:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nANfe/Ow";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004A910E9F8;
 Thu, 19 Jun 2025 11:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750332888; x=1781868888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8WpPtvINhp03zlIobgGSofWWy2L+1Kvra+rIfsicg24=;
 b=nANfe/OwzdII+Knbk/oAZ8wSnGEOSwEBrvtbnX1iIfCpd+i0S8MGKsiL
 zCGYiVodWjXrK0DIVZVU2Xx0m07nltaST+JgU2XGvoDdHCW4hqUFk+DD5
 C85CP0wBel3zsLWEDCzQ4A4K7cVofPbDTKua/8kWs99I2cvWjkI8kLyBg
 cY9mMpqm55pS7dhPLjOy5DNOPNi2m2x3NZY0IVAZjesbTzvgnMhtOSfsG
 JHANkG02aaN0cpY0zk1NyrBUTvYzzvBcOA5U6MnzRVhgHGiwFpbV7Abc4
 z35VFU49t3CkCR7Wb0hDJVhj7feglEuiQEfUFAn4kkz+/kKtgDEeokms4 Q==;
X-CSE-ConnectionGUID: ET/JNd+OT6e5wtQdis6pyw==
X-CSE-MsgGUID: B4snb7tRRNine0Rjn+yqkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52734561"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208,223";a="52734561"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:34:48 -0700
X-CSE-ConnectionGUID: g8jKz1i5QX6sAa4DW1wJqA==
X-CSE-MsgGUID: RT0yNUBoQbuuVvIzayaZ8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; 
 d="scan'208,223";a="150847916"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa007.jf.intel.com with ESMTP; 19 Jun 2025 04:34:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Use HDCP2_STREAM_STATUS instead of
 HDCP2_AUTH_STREAM
Date: Thu, 19 Jun 2025 17:03:40 +0530
Message-Id: <20250619113340.3379200-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619113340.3379200-1-suraj.kandpal@intel.com>
References: <20250619113340.3379200-1-suraj.kandpal@intel.com>
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

From PTL we need to move to using HDCP2_STREAM_STATUS as a WARN_ON
to see if written content type info is not the same since
HDCP2_AUTH_STREAM is inaccessible to us now.

--v2
-Fix commit message [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 19 +++++++++++++++----
 .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 70dafaa2afad..bd757db85927 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -808,10 +808,13 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	u32 val;
 	u8 stream_type;
 
-	val = intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port));
-	stream_type = REG_FIELD_GET(AUTH_STREAM_TYPE_MASK, val);
-	drm_WARN_ON(display->drm, enable &&
-		    stream_type != data->streams[0].stream_type);
+	if (DISPLAY_VER(display) < 30) {
+		val = intel_de_read(display,
+				    HDCP2_AUTH_STREAM(display, cpu_transcoder, port));
+		stream_type = REG_FIELD_GET(AUTH_STREAM_TYPE_MASK, val);
+		drm_WARN_ON(display->drm, enable &&
+			    stream_type != data->streams[0].stream_type);
+	}
 
 	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
 	if (ret)
@@ -827,6 +830,14 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 		return -ETIMEDOUT;
 	}
 
+	if (DISPLAY_VER(display) >= 30) {
+		val = intel_de_read(display,
+				    HDCP2_STREAM_STATUS(display, cpu_transcoder, port));
+		stream_type = REG_FIELD_GET(STREAM_TYPE_STATUS_MASK, val);
+		drm_WARN_ON(display->drm, enable &&
+			    stream_type != data->streams[0].stream_type);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
index 8b9b87910a9e..112ce8c896d6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
@@ -247,7 +247,7 @@
 						    _TRANSA_HDCP2_STREAM_STATUS, \
 						    _TRANSB_HDCP2_STREAM_STATUS)
 #define   STREAM_ENCRYPTION_STATUS	REG_BIT(31)
-#define   STREAM_TYPE_STATUS		REG_BIT(30)
+#define   STREAM_TYPE_STATUS_MASK	REG_GENMASK(30, 30)
 #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
 					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_STREAM_STATUS(trans) : \
-- 
2.34.1

