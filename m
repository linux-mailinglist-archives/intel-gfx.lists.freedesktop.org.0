Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D706CA0B3F1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8041D10E620;
	Mon, 13 Jan 2025 10:03:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q5xQ0wj9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DC810E621
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 10:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736762608; x=1768298608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/dKBpnxaC1Vx+/SH9xHfHdda3hOGG45MkI8N3xrJbA=;
 b=Q5xQ0wj9HCCy2WJQng79s3Cx6Dh+NQ8Apst5reHn+beB7Z79QUTrYD7S
 Xf7EVJaHSjeG/NiXbdT0qr6Qsn8AX95c6IXidbellPD1WXgQH0vocjITb
 k3zArbkUE83U1PIp75M47ryudVSG3yXw7cBVY8Dwgp/T2s7WD0kD3muEw
 1JY3sMl8xh3QIhI42s1Nqcz8esyXxvDpVQR0s9RHBIPqu5sZ6la8c7Jf0
 moRRZq2/kzXF+zp0z/LAKORtMuLN4cgnhP3i0V1zb8YfjegbeQhICPXi7
 g5gX97gy9zhgbkLddEFqg3ZaE6q8AqWolJW69ZLay4dXP+oeDbcm3ORb1 Q==;
X-CSE-ConnectionGUID: fBt2jLDeSWuKtx4/b4mCNA==
X-CSE-MsgGUID: U5fqPwJqT66E7GqIs9fR+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="36227081"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36227081"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:03:28 -0800
X-CSE-ConnectionGUID: 8CYSakPSTOSOIarWcuZYJA==
X-CSE-MsgGUID: QP+CnH9GR5Ks9yfbJ96yDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104242950"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa006.fm.intel.com with ESMTP; 13 Jan 2025 02:03:26 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Cc: nitin.r.gote@intel.com
Subject: [PATCH v2 4/8] drm/i915/pxp: fix typos in i915/pxp files
Date: Mon, 13 Jan 2025 15:54:17 +0530
Message-Id: <20250113102421.2431727-5-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113102421.2431727-1-nitin.r.gote@intel.com>
References: <20250113102421.2431727-1-nitin.r.gote@intel.com>
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

