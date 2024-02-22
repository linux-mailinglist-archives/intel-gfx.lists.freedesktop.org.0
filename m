Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AC685F20F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 430C810E89A;
	Thu, 22 Feb 2024 07:46:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JLkn32nH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D01410E73E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587963; x=1740123963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NzaABGM8MxNrCq+WOBfgESyemHWEporLIds1cJjk8wA=;
 b=JLkn32nHf8h92CBuSE2VhmLLro+8TjvSOQBtwzCPezJZU5cC73zpmQ9y
 9+dXrh88BmJsTwlzkAISmJWjsp9DYygyDUvcYmN4fGyEfMNAW3tNt5NZp
 HKfho68wHoL2Nh06lFScDCYEp/xT/puxZNP0oJwEjMg2X7c3k8pntVEnQ
 Fs58LoN4KZIegteaioQZcH1kZFs/ce0OEY96Jl4IptFMSksguzzKT1TG8
 KZ6iuisA5H5c+tT9OPl0+s/CqTg6F52vMMb77usl41MEZjM+AnzRty6s2
 L4tBDDmQ+re9fZe0w/elR/KSPhqcnszSN+rtgpHxeaKOLzVK+HmkudBk+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906024"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906024"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:46:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354143"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:46:01 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 04/13] drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
Date: Thu, 22 Feb 2024 13:13:45 +0530
Message-ID: <20240222074353.1568904-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222074353.1568904-2-suraj.kandpal@intel.com>
References: <20240222074353.1568904-2-suraj.kandpal@intel.com>
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

Pass drm_dp_aux to intel_dp_hdcp_read_bcaps function
so as to aid in reading the bcaps for the remote monitor
later on.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 6767b5338ae7..5394391acbe1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -125,13 +125,13 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp_read_bcaps(struct intel_digital_port *dig_port,
+int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
+			     struct drm_i915_private *i915,
 			     u8 *bcaps)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BCAPS,
+	ret = drm_dp_dpcd_read(aux, DP_AUX_HDCP_BCAPS,
 			       bcaps, 1);
 	if (ret != 1) {
 		drm_dbg_kms(&i915->drm,
@@ -146,10 +146,11 @@ static
 int intel_dp_hdcp_repeater_present(struct intel_digital_port *dig_port,
 				   bool *repeater_present)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915,  &bcaps);
 	if (ret)
 		return ret;
 
@@ -271,10 +272,11 @@ static
 int intel_dp_hdcp_capable(struct intel_digital_port *dig_port,
 			  bool *hdcp_capable)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915, &bcaps);
 	if (ret)
 		return ret;
 
-- 
2.43.2

