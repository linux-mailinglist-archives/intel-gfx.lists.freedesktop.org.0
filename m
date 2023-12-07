Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E30180803F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 06:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1A710E104;
	Thu,  7 Dec 2023 05:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962C010E104
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 05:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701927411; x=1733463411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g75Xy2bsKUNaT49R358dEYXW8z0cfrNVX3/utxp1Iek=;
 b=Xh01e8fTfklo4iY4Kxh1GWuG9DqAkoDod/SPlN6NldDWNUrW7qK0YHi4
 CMP198X1QiGW71Wtz3oXpxp5czggQoww8/jsC9EU/0+rzWhgVi2JV+/xf
 ZiZBfIfu/U+rwMYsQ5ZDqtfIL36rJ27UhsbfyoIS/796a6EdUHSMs5+MU
 d5OL1q+SJpxdcvyYuBQqzs2ZmrzpKGk4G8E73zDsk3kVgiy8HRSO5rzeU
 0x1lbDqtGhFVOjXjLt0HSeYyarJgq2tEfVxcao3/gI6eeibnavvtkGpqT
 IEKqGrWreq8oDYPut85SJXfiNIG7bdKTYlkcaeXDmDiFJbJjJIKBsQgeE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="373661410"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="373661410"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 21:36:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="721338459"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="721338459"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga003.jf.intel.com with ESMTP; 06 Dec 2023 21:36:49 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Dec 2023 11:05:14 +0530
Message-Id: <20231207053513.1740340-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231206093916.1733863-1-suraj.kandpal@intel.com>
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Fail Repeater authentication if
 Type1 device not present
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

Fail repeater authentication step in case RX_INFO indicates
HDCP1.x or HDCP2.0/2.1 device is present downstream in repeater
topology and content type set by userspace is Type1.

--v2
-Fix build error.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 39b3f7c0c77c..07d110c5841d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1633,6 +1633,13 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
 		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
 
+	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type &&
+	    !intel_encoder_is_mst(connector->encoder)) {
+		drm_dbg_kms(&i915->drm,
+			    "HDCP1.x or 2.0 Legacy Device Downstream\n");
+		return -EINVAL;
+	}
+
 	/* Converting and Storing the seq_num_v to local variable as DWORD */
 	seq_num_v =
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
-- 
2.25.1

