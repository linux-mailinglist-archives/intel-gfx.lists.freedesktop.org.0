Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3722A893828
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 07:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885E810ED3A;
	Mon,  1 Apr 2024 05:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J5SL5SSr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A51A10ED3A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 05:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711951167; x=1743487167;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dY21bWcvUPDsE6Qn0OLguC88wOQUwrQnb02WjZ8OGOg=;
 b=J5SL5SSrKe8T0+WwVtwA0YMdarbH+sY0l47cNyr7Qu6lAWWc7PQHijkK
 JBm+IOadEnmIUFSPV+VjbQfQDtm5/QiaW16tpFmbtBzzRpjq02VUnundO
 iV/SXF8z0buJwMHrOL6fWohqCRIjnZqbuQY7dUKR+yRETL2kze7jchvLY
 HSP+HwHxSAa87DKZkDyaB0kjLmgy15xhxMfOpyc6RSmnZG5skzaHwJYBn
 Fv1dDDLDTXEuSXeXYRVULChx1r1iBpHgoqFpO6ofpLR3lCHgK9YDjXbbw
 7+4cTYHMPeA1xisoAURyVIPd3RgWrwIjYaML6wFHRAfYgUZsielVB03VQ A==;
X-CSE-ConnectionGUID: Ux8gPLUBRoGWnNi5vPBbJg==
X-CSE-MsgGUID: sPBpspmhSTiX6xH7XCPmbg==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6922961"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6922961"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 22:59:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17475299"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 31 Mar 2024 22:59:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability function
Date: Mon,  1 Apr 2024 11:26:53 +0530
Message-ID: <20240401055652.276785-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240401030106.274787-3-suraj.kandpal@intel.com>
References: <20240401030106.274787-3-suraj.kandpal@intel.com>
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

--v3
-Fix variable assignment [Chaitanya]

Fixes: 813cca96e4ac ("drm/i915/hdcp: Add new remote capability check shim function")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 179e754e5c30..92b03073acdd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -691,12 +691,15 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 	u8 bcaps;
 	int ret;
 
+	*hdcp_capable = false;
+	*hdcp2_capable = false;
 	if (!intel_encoder_is_mst(connector->encoder))
 		return -EINVAL;
 
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
-		return ret;
+		drm_dbg_kms(&i915->drm,
+			    "HDCP2 DPCD capability read failed err: %d\n", ret);
 
 	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
 	if (ret)
-- 
2.43.2

