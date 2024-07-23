Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FC99398F7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 06:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F383310E401;
	Tue, 23 Jul 2024 04:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8KeMR4C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6581E10E401
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 04:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721710058; x=1753246058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8sY8xLYclNt6solELE9N01Ot+2yFzRVexIEXFXr6Ytc=;
 b=N8KeMR4CfXIJah31eVS5YfayVVfZNsx3zAUCGeV1hJaFdr/CUsn6uLFa
 1z+qUpMZEUHCfNXT03Le5kgMM25v7Qae8UQmvHrq9U0Tr1wVf/11GUHL3
 w6v/AdSMZunOCfU4e1Ts+WM5JcxUFdeXR/yCr9/g+So6ZFOQkqzDRIZJm
 FJ+wLIuVr07ihDbTJ2YSbjKGgoGYMNujmGCRoi5af6vXIdUoO9c/EvHY5
 qwOqEUdh+n6atGMclNzJHHE7Mq1TBImUVGv6PnyUuwrVNpn2a17SWc4gR
 TGvQ5kzOiuwmDRWNrHQK1rnDDa6Q//Z1+TySERRkI0TNMJWXdtDXcg68T A==;
X-CSE-ConnectionGUID: Ei5jlhI1QfGXZ86VxfX4UA==
X-CSE-MsgGUID: lmwujPJcSaCiLIs35lv5ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19437901"
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="19437901"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 21:47:38 -0700
X-CSE-ConnectionGUID: UlYw3PdVRNOBQJOLYq081w==
X-CSE-MsgGUID: oY1AtwVsQxWGLmXdHFVRNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="51996638"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 22 Jul 2024 21:47:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Derive aux for mst from mst_port
Date: Tue, 23 Jul 2024 10:15:13 +0530
Message-ID: <20240723044513.3618353-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Use the mst_port(intel_dp) variable to derive remote aux. We
are sporadically seeing connector->port->aux giving an invalid
address.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 2edffe62f360..58915a2ad5dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -696,7 +696,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 	if (!connector->mst_port)
 		return -EINVAL;
 
-	aux = &connector->port->aux;
+	aux = &connector->mst_port->aux;
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
 		drm_dbg_kms(&i915->drm,
-- 
2.43.2

