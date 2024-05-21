Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 400468CA9D2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:17:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB43D10E1F7;
	Tue, 21 May 2024 08:17:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O2LY7Slo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC14710E1F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716279448; x=1747815448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BM54RSyoQvdvOXTLKYSsFK0ga+MsNiWG9p2KWL0m7Sc=;
 b=O2LY7SloEr9ttPApP7qwTXmbO0NKv5GqnGQ0kzgScZQA+5vceoWT0Xbg
 8uCY84If4tD7fnNv37yxfyorMx48FswJEigeVz783qZvDXxBaUkTCjZO7
 9kiBsuA4Oa3Gon5Or68ZeEWvi9jRyaE7aRhSqEmPJ7pe1oBux37ri0nEY
 45OjSfF8Iai//gNTgLryn7LAS9sFHizfBHZavSWUcnnixM+mUzXM7nt2k
 vA3zQ+jmgem0CfsvaQWEwSscS2ts+pP1XSkwHQFbpwIKfkvpXuAOrBfk+
 E0du5tU6MDKtFDSudUNSef0WFfonlIjOiMOMv9cZ2kHkETJxCQjGd8D4G A==;
X-CSE-ConnectionGUID: URpsmTmKSMWJApmDxKosVw==
X-CSE-MsgGUID: KsNwvSFGQwKHkDO2ugqvTw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12394152"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12394152"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:17:26 -0700
X-CSE-ConnectionGUID: WwycJPqySbSLXwMbIF32Rw==
X-CSE-MsgGUID: N2CJzEPjQMuF8jmj9J+4Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="32858119"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 21 May 2024 01:17:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH 1/2] drm/i915/hdcp: Move aux assignment after connector type
 check
Date: Tue, 21 May 2024 13:44:56 +0530
Message-ID: <20240521081458.1500327-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521081458.1500327-1-suraj.kandpal@intel.com>
References: <20240521081458.1500327-1-suraj.kandpal@intel.com>
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
Reviewed-by: Imre Deak <imre.deak@intel.com>
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

