Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BBE814129
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 06:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC2610E314;
	Fri, 15 Dec 2023 05:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB1810E314
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 05:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702617077; x=1734153077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SLzW0Kp+5XcPLK8rmIE5dSiihr/6LNqrl2RmjkUVySw=;
 b=Il6S60//9lO4OXPbojD/Z0nYC21DVClDUZDr3wK2dawcdSzxIY036JUH
 UVZsL1z/7JNbyKTBCdL9Tq4gJywAE/nCB+0LHMJU/nJDhP7Z24W6chFA3
 Ph+CfSg0IPvky9VzFocg5AZXBUi5fPw/C7lavsYkmbHMYfajJ8DlXyPDI
 1oXYvGWrtN7pk2eMypEjc9yCoxhr9JrNqBahlu3FGRkK6uCObrN1J0dX2
 qMRGwAbPKFFhThLqv99X1/7wttRrNyJSidzCtQQtmwbtnNrk62uEi9uX0
 ieC6pGqJEZAyghV0KcRuLY2fMgVIv7HfkgdnOUiAGETOwS3VpNoMoQtMw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="13917162"
X-IronPort-AV: E=Sophos;i="6.04,277,1695711600"; d="scan'208";a="13917162"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 21:11:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="774637134"
X-IronPort-AV: E=Sophos;i="6.04,277,1695711600"; d="scan'208";a="774637134"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 14 Dec 2023 21:11:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/hdcp: Fail Repeater authentication if Type1 device
 not present
Date: Fri, 15 Dec 2023 10:39:16 +0530
Message-Id: <20231215050915.2070119-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231207053513.1740340-1-suraj.kandpal@intel.com>
References: <20231207053513.1740340-1-suraj.kandpal@intel.com>
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

Fail repeater authentication step in case RX_INFO indicates
HDCP1.x or HDCP2.0/2.1 device is present downstream in repeater
topology and content type set by userspace is Type1.

--v2
-Fix build error.

--v3
-remove mst encoder check as branch device also act as repeater

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 39b3f7c0c77c..c264e443ffac 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1633,6 +1633,12 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
 		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
 
+	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type) {
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

