Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2704C8B6A99
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 08:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8118910E5E0;
	Tue, 30 Apr 2024 06:42:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IhFLrCsw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E8810E0D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714459374; x=1745995374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fzKTUEZUA2kPMDQxSNLE+RT9Xbx/z9W+PsT5q/sYIMg=;
 b=IhFLrCswK0UglwfZ1ZkhaD8Zljf7M3yLbjCtn8PioepHQvW0Bdxs4pGy
 yfEgyyIh/jMy43EOhXRLhEq0YDDpLkNG8tTF1vxatUTw1ZCGQdWb0rkjI
 T+Sz1Wvco1rf4gEBjA0WFImO82MSOM/WX5sY36PdU4ySz1rSA7HPlFJ6f
 78tOe7MXtOmsUbc+k3N5zK79AGbKvYur1Byurr0jBmxGzhSSRQFW7IAv9
 cffl1NY+XrvUaQ3wRswgkK7qFoDKQows6RDjwMVdfIXs5wutXEoWT5liA
 MEnNkj1YwaZHTgBnHi3dKlc6CRL3+N9L827ve5/ZmykuZUbO9gIpg3BzI w==;
X-CSE-ConnectionGUID: l2HpdDkGQpGSnwlVJHdI5Q==
X-CSE-MsgGUID: tsnxDsodS5WjxlbA4qgcgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9979481"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; 
   d="scan'208";a="9979481"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 23:42:53 -0700
X-CSE-ConnectionGUID: 27RC1S/+THaxmRSjVGMYlQ==
X-CSE-MsgGUID: iuRx9E4+T2Czk8PJP1IaVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30835257"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa005.fm.intel.com with ESMTP; 29 Apr 2024 23:42:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hdcp: Move aux assignment after connector type
 check
Date: Tue, 30 Apr 2024 12:10:28 +0530
Message-ID: <20240430064030.887080-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240430064030.887080-1-suraj.kandpal@intel.com>
References: <20240430064030.887080-1-suraj.kandpal@intel.com>
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

Move assignment of aux after connector type check as port may not
exist if connector is not DPMST.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 92b03073acdd..92be53d7c81f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -687,15 +687,16 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 					bool *hdcp2_capable)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_dp_aux *aux = &connector->port->aux;
+	struct drm_dp_aux *aux;
 	u8 bcaps;
 	int ret;
 
 	*hdcp_capable = false;
 	*hdcp2_capable = false;
-	if (!intel_encoder_is_mst(connector->encoder))
+	if (intel_encoder_is_mst(connector->encoder))
 		return -EINVAL;
 
+	aux = &connector->port->aux;
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
 		drm_dbg_kms(&i915->drm,
-- 
2.43.2

