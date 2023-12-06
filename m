Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E761806AE7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 10:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E35410E6A9;
	Wed,  6 Dec 2023 09:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839F710E6A9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 09:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701855651; x=1733391651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B9pdA8CdieWZfdGtKBU5nEHK6bN45wsCLnP0UJKx9Uo=;
 b=iUjvunJ7CR5LzLgYb7UZHMuRz6Lk8fJgRPWWnlb1lPJl5so3BSP8bH+s
 0ZqCabilVXvqm2Yfo9wKddpZ+oucTqbEnUig4jSeplEHM63JPy3FNPR0S
 9laiDtkl7+4DRBChqpEvSg6HAWa1Ipx71wneeMy8xJxMKunYecamjd3mn
 3hI8emUfxLzqjjv47Wk3edHXGo3kQA75ASQ4VYoytARKqVO17Dml2pbRv
 W/FMrbTVPiSflSjzU4yVXMZjoZIKCdkM9xn8mo4BSA41dMVp2on6Ng1og
 8hQVSwMKoi7jSqiNZZ03+a99JH6/5Yq4vxN0frRKJU+xg/87Svuk/5xnM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="7330146"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; 
   d="scan'208";a="7330146"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 01:40:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="800283919"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="800283919"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2023 01:40:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Dec 2023 15:09:16 +0530
Message-Id: <20231206093916.1733863-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 39b3f7c0c77c..2aaf924fceb1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1633,6 +1633,13 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
 		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
 
+	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type &&
+	    !intel_encoder_is_mst(connector->encoder)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "HDCP1.x or 2.0 Legacy Device Downstream\n");
+		return -EINVAL;
+	}
+
 	/* Converting and Storing the seq_num_v to local variable as DWORD */
 	seq_num_v =
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
-- 
2.25.1

