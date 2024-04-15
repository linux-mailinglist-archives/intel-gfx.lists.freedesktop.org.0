Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6BE8A4A0B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1631122F0;
	Mon, 15 Apr 2024 08:14:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVRighUA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06F611122EF;
 Mon, 15 Apr 2024 08:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168864; x=1744704864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T7FqWulHX70ak5Rikkwu5zhH9wwBv9S9vORYnU/u3+w=;
 b=AVRighUA6utr4S82SCFWti8PXFRn7NLmXi4BdyzmKz1yYVTyy267XW0W
 T5YmlDvZJajRKLkkoe+zM040USs6ZuxWatWn6px0PhJ1CANc9Cs6l47kB
 i7Ez1FynOPhS+g6EeW5TgN3RNCi0kUeXEiZwlrhfvJ3CuZXqtCwBkB94B
 +CS3Vq1iJsQx2wIs73XA6gm2IVd+xlT3xHkVWfrzchERtM4ju2bZLtc57
 AZnkWrvjCf1wYMBT4o3SgvkPSfSNFOr2UaQM/0xzMUez1gZv89smY0bJT
 HM4nj1RlfRAdWlBx19YyWKAh5+WSsfWMaSURfrj04C21FefJ7eN7CFsYE Q==;
X-CSE-ConnectionGUID: lwRkupooTNOEO9FCohRH1w==
X-CSE-MsgGUID: KFr3v17JRwST5RN9ngNBdg==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096423"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096423"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:24 -0700
X-CSE-ConnectionGUID: 5r8b60nDTYOcJ5lAelukPA==
X-CSE-MsgGUID: /u6IU+URTHuOykBpXqzVvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400386"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:22 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 12/21] drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before
 enabling planes
Date: Mon, 15 Apr 2024 13:44:14 +0530
Message-Id: <20240415081423.495834-13-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Add step 9 from initialize display sequence.

v2: Commit subject improved

Bpsec: 49189
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6fd4fa52253a..bf9685acf75a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1694,6 +1694,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (IS_DG2(dev_priv))
 		intel_snps_phy_wait_for_calibration(dev_priv);
 
+	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
+	if (DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 1))
+		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
+
 	if (resume)
 		intel_dmc_load_program(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a8cdabd07b04..8f8f757eb8be 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4564,6 +4564,7 @@
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
 #define   CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
+#define   BMG_DARB_HALF_BLK_END_BURST	REG_BIT(27)
 #define   KBL_ARB_FILL_SPARE_14		REG_BIT(14)
 #define   KBL_ARB_FILL_SPARE_13		REG_BIT(13)
 #define   GLK_CL2_PWR_DOWN		REG_BIT(12)
-- 
2.25.1

