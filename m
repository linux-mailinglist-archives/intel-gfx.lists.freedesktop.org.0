Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F8D8BD9E5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 05:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7DAE10E65B;
	Tue,  7 May 2024 03:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRFkGh9V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2218F10E64F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 03:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715053986; x=1746589986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MO+EnuEwWbcGXFJITz59TLwWyUV5Nk9Zt/Ju2ais1pE=;
 b=mRFkGh9V3bHOSE0v8nFrCAo1+IZIYw+7csjX4Upvsgq8GLv7fyqJOny9
 mM1j/cuDItejk171MpN+Ydey9CxP3dzD5tFxrjh2jOgW01GShvPSgGnAc
 TUNiFrfzuUfyIMYuD99vPcmfX2O9VHBJldx/JqglZxItyKqtFBVPOFfPK
 oFo9oWFvCpxvyqxDBKnUWYv/0bbDczvJNaAUATXDOjJKDzXIfxxmgZTLY
 FurJX3CVwNW695mFb/nV43LpUXfXOE0opDL7+i71TB0kIoHk4lRL6eV1K
 tyjX5D5qQQw9aCqJKC2HXNjzHP3OPJDhlfZ6Jo5Ums/8Wf6KqCDIDJUGu Q==;
X-CSE-ConnectionGUID: Jg7ylVVkR1mIcgN5swkePA==
X-CSE-MsgGUID: ljCkCRHPRJytAXOb+vKBiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21501935"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="21501935"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 20:53:06 -0700
X-CSE-ConnectionGUID: xOCAJT1/Q1Ss3tYULDRv2A==
X-CSE-MsgGUID: pkHqPhJAT8ehduDmST3aVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28452078"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 06 May 2024 20:53:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hdcp: Move aux assignment after connector type
 check
Date: Tue,  7 May 2024 09:20:36 +0530
Message-ID: <20240507035037.1025012-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507035037.1025012-1-suraj.kandpal@intel.com>
References: <20240507035037.1025012-1-suraj.kandpal@intel.com>
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

--v2
-Fix unwanted change in intel_encoder check [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 92b03073acdd..551c862ed7a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -687,7 +687,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 					bool *hdcp2_capable)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_dp_aux *aux = &connector->port->aux;
+	struct drm_dp_aux *aux;
 	u8 bcaps;
 	int ret;
 
@@ -696,6 +696,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 	if (!intel_encoder_is_mst(connector->encoder))
 		return -EINVAL;
 
+	aux = &connector->port->aux;
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
 		drm_dbg_kms(&i915->drm,
-- 
2.43.2

