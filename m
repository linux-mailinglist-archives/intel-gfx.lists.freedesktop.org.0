Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88786A0BFB0
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 19:21:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A74B10E794;
	Mon, 13 Jan 2025 18:21:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ROJSH0mI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20EAD10E794
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736792513; x=1768328513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/dKBpnxaC1Vx+/SH9xHfHdda3hOGG45MkI8N3xrJbA=;
 b=ROJSH0mIhxK6VNV+eA8CVLLSuyF/iqiEY5EnklsTOvVJoZfl0wKJt3rp
 5/cKm7/VOhllFzBaVVp8Qkwq7EjeWzOHs/EVeynYs7gF3Ig2ILgOJ1G1w
 WwGY2ESGpYwAIxA9akVklYCgx0IPcxAJQSEDA77FgzvauQV+GE99GdKtp
 Tbj+h1D3KEwdqt6NTPnI1GQ2e644T+eRp1pIc9sj8gXXhewekXdxAjbNP
 Scg+tyVvxUK/P0y4HHBdpNLKXTJl9PfQpuJvesMbsVA3J/MLm1mHOIK9r
 4EVxvXQiZORh0WdnI0GNTaoPsTH/+utlYhV+1hXb0uLP0g4sXJ0apKM+y Q==;
X-CSE-ConnectionGUID: fjZuweKaQhepI98W2qrWpA==
X-CSE-MsgGUID: Sl6RtCgHQEqH0B5eSdVzbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37299033"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37299033"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 10:21:53 -0800
X-CSE-ConnectionGUID: Wyr63ouBT7CTNVe0ekAB7w==
X-CSE-MsgGUID: /aUVtObCSJOTYEtEDzbyIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="105078528"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa010.fm.intel.com with ESMTP; 13 Jan 2025 10:21:51 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Cc: nitin.r.gote@intel.com
Subject: [PATCH v3 4/8] drm/i915/pxp: fix typos in i915/pxp files
Date: Tue, 14 Jan 2025 00:13:14 +0530
Message-Id: <20250113184318.2549653-5-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113184318.2549653-1-nitin.r.gote@intel.com>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
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

