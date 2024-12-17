Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976059F4628
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 09:37:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7411710E201;
	Tue, 17 Dec 2024 08:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n84ltyWL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A6BD10E201;
 Tue, 17 Dec 2024 08:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734424644; x=1765960644;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mYy0BptuBEsm2X9Op6GxxPgSW9JuvoiEtfnFbgPv3OQ=;
 b=n84ltyWLTp2KrgnYjiFn/1t1tEM3A7IHloBylRNNEzujjVgmXn+Sf3I2
 KDwWqPAg00Cx+5cq9ak8ncYw0LGf11GCufhqL0GkZJ64TyQPm5EzarNup
 6tvPl4p4eMjDcboh1dZoAqPlnPp8mOe6OFl8a82ddJ2fMruSfcScCMQND
 XosW7omcRnn6aXAjHikoL/jddhNQbfm762VUPMxJw99iOz382cx/PfRZq
 ryE0j3mjHoR+0FWH12bD1SrOLTIUOSLj47gamVsfxMtjLOYQovMN34efR
 mV9USKA/E1jNzoJkNSS0mieGtsBbFp/XJtPXpPr1FN7rAB916oCdjf4iQ A==;
X-CSE-ConnectionGUID: eoIjqVEWQgKvUIAwBa0n6A==
X-CSE-MsgGUID: WYtCZiedSoWMRRNZ976PGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34570383"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34570383"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 00:37:23 -0800
X-CSE-ConnectionGUID: TLG0H9YAQMaIN4Qb5nhqlg==
X-CSE-MsgGUID: pvZq+cXFT+q6J3B2Vok1Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="128283223"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 17 Dec 2024 00:37:22 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Fix Repeater authentication during topology
 change
Date: Tue, 17 Dec 2024 14:07:23 +0530
Message-Id: <20241217083723.2883317-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

When topology changes before beginning a new HDCP authentication by
sending AKE_init message we need to first authenticate only the
repeater if that fails only then makes sense to enable a new HDCP
authentication. Even though it made sense to not enable HDCP directly
from check_link and schedule it repeater authentication needs to be
done immidieatly

Fixes: 47ef55a8b784 ("drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f6e68a0e3b6d..9ff2274ed7e7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2182,6 +2182,19 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 
 		drm_dbg_kms(display->drm,
 			    "HDCP2.2 Downstream topology change\n");
+
+		ret = hdcp2_authenticate_repeater_topology(connector);
+		if (!ret) {
+			intel_hdcp_update_value(connector,
+						DRM_MODE_CONTENT_PROTECTION_ENABLED,
+						true);
+			goto out;
+		}
+
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Repeater topology auth failed.(%d)\n",
+			    connector->base.base.id, connector->base.name,
+			    ret);
 	} else {
 		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
-- 
2.34.1

