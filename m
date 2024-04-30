Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 462E38B7E81
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69C5112D77;
	Tue, 30 Apr 2024 17:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ith01XyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0727112D77;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498221; x=1746034221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/+VBzGnypk4oxe/lNfyLahnlabWNZOFRngex1oHT6dA=;
 b=ith01XyG7pJMMEqFJquGCzFM6k4O7NTkCyzc5/U8wXiJWfJHNlsbNtSy
 CSqAbu96/IinS8llT8yr/MpgTpaKptd8LQfJaddtfq9FySuKh9g1xf5k5
 WTPi9Obv5BZGPvTCCoNX5rn2ndL8Rx4gzo+mQE0tsQx7dGuaSR8U1MWj8
 BI6dpeagbDrGQ0YkyMuvohtNfRu93AW+Mqr3ikdnODFvu8asdLB49dlji
 +JIl5AP1fnnURpYqZ33C5RfO/OD4eLrIBuP8Cipkt4CiJ6KoE0ceoYX3B
 c2RgYVAUM4fzrmuWFsn8NGloDd5xwbkJps7NX2hJTG9ByFKXk+134TcpO g==;
X-CSE-ConnectionGUID: kRv51r7mSdGqJKKcIkt+6A==
X-CSE-MsgGUID: hOw21rwvQB680PzeimaUpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741995"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741995"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
X-CSE-ConnectionGUID: YNvq/15fTOWPxrNrJglleQ==
X-CSE-MsgGUID: oy34lVeuS9GX7K0sytMZlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617840"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Anusha Srivatsa <anusha.srivatsa@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 10/19] drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before
 enabling planes
Date: Tue, 30 Apr 2024 10:28:41 -0700
Message-Id: <20240430172850.1881525-11-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 03dc7edcc443..a860d88a65da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1688,6 +1688,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (IS_DG2(dev_priv))
 		intel_snps_phy_wait_for_calibration(dev_priv);
 
+	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
+	if (DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 1))
+		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
+
 	if (resume)
 		intel_dmc_load_program(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index beed2b97d4b2..962c1b307bde 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3792,6 +3792,7 @@
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
 #define   CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
+#define   BMG_DARB_HALF_BLK_END_BURST	REG_BIT(27)
 #define   KBL_ARB_FILL_SPARE_14		REG_BIT(14)
 #define   KBL_ARB_FILL_SPARE_13		REG_BIT(13)
 #define   GLK_CL2_PWR_DOWN		REG_BIT(12)
-- 
2.34.1

