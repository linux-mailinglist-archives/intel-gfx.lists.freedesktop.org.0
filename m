Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA8188D585
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 05:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7196510F7F0;
	Wed, 27 Mar 2024 04:47:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQ2ONpao";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8C4710F7EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 04:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711514821; x=1743050821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WsGlp5+q5o3EvcaGKryXtPN1VG9yga+OvZA7XdoR4I8=;
 b=DQ2ONpaoC/OXfzaHAneB42waddpVrFKV3XBmelzVM5HgoOEG2pVc7HNj
 EH50F+bIsA49jNG/6a0Bsw0k3GGbstSLfMZfz4euoCCTfi+WkocV6J35F
 JXxXxDAbtr7Xc3IJfQSoA5Xw18CCObcKDcpLc1nHIDjSxyz/+MU0a5M4q
 tVgbdLD4s11QhTbbh8DwM6LkqTbxKui1iOiqrSV8jFJ4r4uN1bCxiZ0is
 01wUTIipdgz61QbSy2ksJFkuomuSFMMwg7KvKMSVebktBZQCWueR9TY2W
 Kc80KciAjNVTnq9feFD923Vh8g+6yISX6Y0FDebfHBxUqIfDTi7iuN3wF Q==;
X-CSE-ConnectionGUID: AcGXo8mJR6CSOfSW9Vr3TA==
X-CSE-MsgGUID: rB78ODKiQa2XNPSMv8iufA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="29072763"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="29072763"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 21:47:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="47363409"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 26 Mar 2024 21:47:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability function
Date: Wed, 27 Mar 2024 10:14:23 +0530
Message-ID: <20240327044422.240398-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327044422.240398-2-suraj.kandpal@intel.com>
References: <20240327044422.240398-2-suraj.kandpal@intel.com>
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

Fixes: 813cca96e4ac ("drm/i915/hdcp: Add new remote capability check shim function")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index b98a87883fef..7f52043b0f9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -688,7 +688,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct drm_dp_aux *aux = &connector->port->aux;
-	u8 bcaps;
+	u8 bcaps = 0;
 	int ret;
 
 	if (!intel_encoder_is_mst(connector->encoder))
@@ -696,15 +696,14 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
-		return ret;
+		drm_dbg_kms(&i915->drm,
+			    "HDCP2 DPCD capability read failed err: %d\n", ret);
 
 	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
-	if (ret)
-		return ret;
 
 	*hdcp_capable = bcaps & DP_BCAPS_HDCP_CAPABLE;
 
-	return 0;
+	return ret;
 }
 
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
-- 
2.43.2

