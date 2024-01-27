Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9342B83EBA8
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 08:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCF810FC08;
	Sat, 27 Jan 2024 07:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FFC10EE43
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jan 2024 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706339933; x=1737875933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iLt26s8iF4n/pe1J29RJoUPbjL39fLjlzV1xS6wUb/o=;
 b=BdywwhGn7ndcy389dPdaUXLXxcoC98vOpCNiA3elJiHz3OwevOy5IgEy
 TzkpBXmjyO0ZqiYb79TQhEZikQu6Ho6B1wcvapy+9ckpDXBPNxBiXNKSk
 gRb5RV91BmLJnw/ex292zu9bdTUWeBHJyabSiDOuabXUXZ5xAOABhWm0b
 gLlPdka/ZqjEJf04h8Z12Nkuef4vZ1F6aTBn1vJVVtHc6kg52/N4WN5OM
 AAQx5oUi5TOPMO59s+4/GqReKHMwQyynT5v7xR/8wXUtX0nCHVk51OKka
 HG/wBkOKMfiBx4T98IXCUREhoA01Z+gc+VSIAG1D6IyvS/pKqW5nd7xcW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="2528314"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2528314"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 23:18:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2970513"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa004.jf.intel.com with ESMTP; 26 Jan 2024 23:18:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915/hdcp: Read Rxcaps for robustibility
Date: Sat, 27 Jan 2024 12:46:40 +0530
Message-Id: <20240127071640.850392-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240127071640.850392-1-suraj.kandpal@intel.com>
References: <20240127071640.850392-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 22 ++++++++++++--------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 5b724bd89329..f1b96bb3b727 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -640,7 +640,7 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_dp_aux *aux;
 	u8 rx_caps[3];
-	int ret;
+	int ret, i;
 
 	if (remote_req)
 		aux = &connector->port->aux;
@@ -648,15 +648,19 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
 		aux = &dig_port->dp.aux;
 
 	*capable = false;
-	ret = drm_dp_dpcd_read(aux,
-			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
-			       rx_caps, HDCP_2_2_RXCAPS_LEN);
-	if (ret != HDCP_2_2_RXCAPS_LEN)
-		return ret >= 0 ? -EIO : ret;
+	for (i = 0; i < 3; i++) {
+		ret = drm_dp_dpcd_read(aux,
+				       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
+				       rx_caps, HDCP_2_2_RXCAPS_LEN);
+		if (ret != HDCP_2_2_RXCAPS_LEN)
+			return ret >= 0 ? -EIO : ret;
 
-	if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
-	    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2]))
-		*capable = true;
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

