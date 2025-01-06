Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14894A022AE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 11:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A526A10E602;
	Mon,  6 Jan 2025 10:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aKnHXV5x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46EEC10E600
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 10:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736158169; x=1767694169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/dKBpnxaC1Vx+/SH9xHfHdda3hOGG45MkI8N3xrJbA=;
 b=aKnHXV5xoVSa8iAmiq+5e0RmIsMq8hsEyQEdpHMinyi+866SFGNWzYfZ
 1IALIA4ftSRXbR2cX9d7edk7bMkXy835Po6l4RU72ftYXyeKAK3GdiR2P
 8teyOAPlax7dCYdLUESkEre5ztHRPplm14PWGCz1OAJy2kHJqk3bt/q7s
 +GGlVYHMkL5R2sucM8mlzCdA8YFbFGOIx4X99Kp56sSBxtoTmODnHcK/U
 pS0VjgTHaFumaGIf5EJb9tOxU6foQzelle7VapXI9qJ06r9cPkfw/00L7
 6qUp7MfbVBTBQ0qKiou8SDm+nFcY5o4F9TxIJFQFlF9lSQuxRsw35fN0q w==;
X-CSE-ConnectionGUID: 6Kun72KjTPum1r4G4aakYA==
X-CSE-MsgGUID: JlLTlmNQSW+inTU1X+gJXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="36459653"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36459653"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 02:09:29 -0800
X-CSE-ConnectionGUID: SyY/dvI/Q3qBqIowAM+XKA==
X-CSE-MsgGUID: qbK83bk8SxGzg9KuAOpj5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107370486"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa004.jf.intel.com with ESMTP; 06 Jan 2025 02:09:27 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1 4/8] drm/i915/pxp: fix typos in i915/pxp files
Date: Mon,  6 Jan 2025 16:00:33 +0530
Message-Id: <20250106103037.1401847-5-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250106103037.1401847-1-nitin.r.gote@intel.com>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/pxp reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
index 329b4fcdc040..929c20e98300 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
@@ -41,7 +41,7 @@ struct pxp43_huc_auth_out {
 /* PXP-Input-Packet: Init PXP session */
 struct pxp43_create_arb_in {
 	struct pxp_cmd_header header;
-		/* header.stream_id fields for vesion 4.3 of Init PXP session: */
+		/* header.stream_id fields for version 4.3 of Init PXP session: */
 		#define PXP43_INIT_SESSION_VALID BIT(0)
 		#define PXP43_INIT_SESSION_APPTYPE BIT(1)
 		#define PXP43_INIT_SESSION_APPID GENMASK(17, 2)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 07864b584cf4..febdbcd8d61e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -21,7 +21,7 @@ struct drm_i915_private;
  */
 struct intel_pxp {
 	/**
-	 * @ctrl_gt: poiner to the tile that owns the controls for PXP subsystem assets that
+	 * @ctrl_gt: pointer to the tile that owns the controls for PXP subsystem assets that
 	 * the VDBOX, the KCR engine (and GSC CS depending on the platform)
 	 */
 	struct intel_gt *ctrl_gt;
-- 
2.25.1

