Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A028EA0062F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 09:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18FB310E293;
	Fri,  3 Jan 2025 08:45:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvMZapQZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98FC10E0E5;
 Fri,  3 Jan 2025 08:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735893935; x=1767429935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iULYKYeqWMhmzysf9Hdi+9/vgEw1/lxgJDXZX7md4l0=;
 b=IvMZapQZl0/rwpjiPsZZkRFtDIzEKKdhvUd7CMQOazZ/ns+w2401XY9e
 j23364OnaAXecRQOJaHBegS+jQ/27BdQGWHf8/u+s/YH4ivLpoYRnCn7p
 4guJhvfXTbUQ7cqTuID/vkJ5c/3nyGalNmDaZGGScxQpaYkc6fsYWkRDO
 fe8a2mrmMbwfhvsvc/WaYy/ALUrICVEiWx/O0kDYFp/k+zTi7OZCL77nv
 bXkczOpJ3IMK4x51fqFWlzkTTLI8llTKyGbYPrRWH3oLUisnIlpP7g4MB
 hUv95e5CMTYMIoHm+lZaoSBfcs8N+E3hCwt6DpksBMFYFpL+HKbYI2s1C Q==;
X-CSE-ConnectionGUID: VYG+5Id6RZOqhiJx9oixTQ==
X-CSE-MsgGUID: z+sVk/Y/SlWK9ZJKbISYng==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="35442936"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35442936"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 00:45:35 -0800
X-CSE-ConnectionGUID: x1NVkpbxTWmwG9R3AJixTw==
X-CSE-MsgGUID: FVvO349jTcqd+cEc6cVkhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101601322"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 03 Jan 2025 00:45:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dnyaneshwar.bhadane@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly from
 check_link"
Date: Fri,  3 Jan 2025 14:15:17 +0530
Message-Id: <20250103084517.239998-1-suraj.kandpal@intel.com>
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

This reverts commit 483f7d94a0453564ad9295288c0242136c5f36a0.
This needs to be reverted since HDCP even after updating the connector
state HDCP property we don't reenable HDCP until the next commit
in which the CP Property is set causing compliance to fail.

--v2
-Fix build issue [Dnyaneshwar]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f6e68a0e3b6d..7464b44c8bb3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1166,9 +1166,15 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	intel_hdcp_update_value(connector,
-				DRM_MODE_CONTENT_PROTECTION_DESIRED,
-				true);
+	ret = intel_hdcp1_enable(connector);
+	if (ret) {
+		drm_err(display->drm, "Failed to enable hdcp (%d)\n", ret);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_DESIRED,
+					true);
+		goto out;
+	}
+
 out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
-- 
2.34.1

