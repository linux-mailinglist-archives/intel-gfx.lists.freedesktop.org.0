Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6CF8937A7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 05:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D3310EE07;
	Mon,  1 Apr 2024 03:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPu/UuOp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0039F10EE07
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 03:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711940613; x=1743476613;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=InY/ziN6Iz3i6PavL1hv6YTQM/h3KjrtE0DRX8a3LBs=;
 b=VPu/UuOpIQ1SE96/JbJ0pfGaD2iussPJjJJCE3gT241bX10dXTqAu+v0
 GXsWY+tJLSAAhn7hCXExhBuQAG8QyXiliEf5595o5Ygynu3uQwF1T7R8o
 X32aQfrEKBm50KW2fbDHmVYhqoeNWs0KuRzvoRNH90+ns16d7HmzZRA/i
 UkW63+bJijnYZOZ88TitwccxtRPx4twipV4HzuWQdp049Sl27UQuw+TNQ
 0qh4cC6s9YM/1IKr+825uGEahaPR2KpbKd/bB2/Z6wVQY+A8tJFs0db+I
 ikV/G4j6hf/mupRAf7xea3Ldm9Heo9LAx6zYU6g6KKfrz5iASLpgHRcfJ g==;
X-CSE-ConnectionGUID: TOSrYYOoSK+H2yNFcvo5mA==
X-CSE-MsgGUID: LfC4iMxqQg24LyQQTy0/ag==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="10843535"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="10843535"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 20:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17972378"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 31 Mar 2024 20:03:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability function
Date: Mon,  1 Apr 2024 08:31:06 +0530
Message-ID: <20240401030106.274787-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240401030106.274787-1-suraj.kandpal@intel.com>
References: <20240401030106.274787-1-suraj.kandpal@intel.com>
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

HDCP 1.x capability needs to be checked even if setup is not
HDCP 2.x capable.

--v2
-Assign hdcp_capable and hdcp2_capable to false [Chaitanya]

Fixes: 813cca96e4ac ("drm/i915/hdcp: Add new remote capability check shim function")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 179e754e5c30..bd2cd7417136 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -694,9 +694,12 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 	if (!intel_encoder_is_mst(connector->encoder))
 		return -EINVAL;
 
+	hdcp_capable = false;
+	hdcp2_capable = false;
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
-		return ret;
+		drm_dbg_kms(&i915->drm,
+			    "HDCP2 DPCD capability read failed err: %d\n", ret);
 
 	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
 	if (ret)
-- 
2.43.2

