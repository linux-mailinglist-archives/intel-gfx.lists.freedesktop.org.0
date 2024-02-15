Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29B485608B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 12:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2514910E648;
	Thu, 15 Feb 2024 11:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knGrSH0O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88DFB10E632
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 11:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994908; x=1739530908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4qUDDQF9dCnxdYZvi+SDVdVbzlAqs5/wLR5x0DsZMm0=;
 b=knGrSH0OLX2dNTVfAKqkqIUao01EFCo4vRyF4Dw/vSg7q2H9m3wdMTPi
 LgW4aOayPC6oDBvsnvPFRIJ8ZIw47jSkQ8HPTx+6F1VA5H2GtYaqBJvns
 0cWQ1Vj30brQTYEEqePsGiqvV+Rf37E0sCzYG/d6D/2i2+BTxWEzIt36Z
 Fgo8dfej91gF3LPHWdFKpwlSeHQZNff3bLs8CxEdtrV4BqvIcHR2oAbpQ
 Zlib+m6v+SMaINmgZeUyw2BqO8n7nJfFDucO4Ckcfu3r6+ksf8/mP7vyi
 P9bX8Z1QASQADDu7X3KbV3Z7KaEl4PcHJplk20Zfujs556vF0GynvYN+0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="19494358"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="19494358"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 03:01:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3821017"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 15 Feb 2024 03:01:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 13/13] drm/i915/hdcp: Read Rxcaps for robustibility
Date: Thu, 15 Feb 2024 16:29:19 +0530
Message-Id: <20240215105919.1439549-14-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240215105919.1439549-1-suraj.kandpal@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
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

We see some monitors and docks report incorrect hdcp version
and capability in first few reads so we read rx_caps three times
before we conclude the monitor's or docks HDCP capability

--v2
-Add comment to justify the 3 time read loop for hdcp capability[Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 29 ++++++++++++++------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index ed7afde417bc..bddc2e5f329e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -640,18 +640,29 @@ int _intel_dp_hdcp2_get_capability(struct drm_dp_aux *aux,
 				   bool *capable)
 {
 	u8 rx_caps[3];
-	int ret;
+	int ret, i;
 
 	*capable = false;
-	ret = drm_dp_dpcd_read(aux,
-			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
-			       rx_caps, HDCP_2_2_RXCAPS_LEN);
-	if (ret != HDCP_2_2_RXCAPS_LEN)
-		return ret >= 0 ? -EIO : ret;
 
-	if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
-	    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2]))
-		*capable = true;
+	/*
+	 * Some HDCP monitors act really shady by not giving the correct hdcp
+	 * capability on the first rx_caps read and usually take an extra read
+	 * to give the capability. We read rx_caps three times before we
+	 * declare a monitor not capable of HDCP 2.2.
+	 */
+	for (i = 0; i < 3; i++) {
+		ret = drm_dp_dpcd_read(aux,
+				       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
+				       rx_caps, HDCP_2_2_RXCAPS_LEN);
+		if (ret != HDCP_2_2_RXCAPS_LEN)
+			return ret >= 0 ? -EIO : ret;
+
+		if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
+		    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2])) {
+			*capable = true;
+			break;
+		}
+	}
 
 	return 0;
 }
-- 
2.25.1

