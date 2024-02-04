Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448D6848BEA
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 08:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADF41120F1;
	Sun,  4 Feb 2024 07:48:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MFVCIQso";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 443861120F3
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 07:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707032927; x=1738568927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DmXH77JzL2gQAf3NuOdkbR1ZdM01R3rgybZEtk05+f4=;
 b=MFVCIQsodQfwiOL3fVTDUj4Y3j70bentSAJFcuHi9fhZk1ySxWxgszl6
 9QCR/MuDOZHDfh1dLpu3z6FNADHPzKZ6JIm5hpvt1satDuZ5ARNVKzhc8
 rRUCm+T0UdPV/S5+A19mSF88O8U0fDeU7/uk2PdeURpovZ9AKPsjfThJd
 EwdY3tCX+pzDyPMIZRcMlJY9OMpakd3RNNj4nkOGAVdFvMKdSufOuiyJN
 nHiUkH3++9d3II6i/kcw7HsRTPU71P5qtgQsXiZaLp9Lp/wNQIhMlJqYk
 nvMram2GQQY2GIilItNmbzlMYTwKVrketpbjkmm3tOlSFsRu/DYsbL1bp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="279228"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="279228"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2024 23:41:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5067658"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 03 Feb 2024 23:41:39 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/11] drm/i915/hdcp: Move source hdcp2 checks into its own
 function
Date: Sun,  4 Feb 2024 13:09:27 +0530
Message-Id: <20240204073936.1135848-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204073936.1135848-1-suraj.kandpal@intel.com>
References: <20240204073936.1135848-1-suraj.kandpal@intel.com>
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

Move checks on the source side for HDCP2.2 into its own function
so that they can be used in the HDCP remote capability check
function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c3e692e7f790..4593ac10e2fa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -160,12 +160,14 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 	return capable;
 }
 
-/* Is HDCP2.2 capable on Platform and Sink */
-bool intel_hdcp2_capable(struct intel_connector *connector)
+/*
+ * Check if the source has all the building blocks ready to make
+ * HDCP 2.2 work
+ */
+static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	bool capable = false;
 
 	/* I915 support for HDCP2.2 */
 	if (!hdcp->hdcp2_supported)
@@ -185,6 +187,18 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	}
 	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
+	return true;
+}
+
+/* Is HDCP2.2 capable on Platform and Sink */
+bool intel_hdcp2_capable(struct intel_connector *connector)
+{
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	bool capable = false;
+
+	if (!intel_hdcp2_prerequisite(connector))
+		return false;
+
 	/* Sink's capability for HDCP2.2 */
 	hdcp->shim->hdcp_2_2_capable(connector, &capable);
 
-- 
2.25.1

