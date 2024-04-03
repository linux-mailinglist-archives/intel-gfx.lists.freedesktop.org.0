Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B3B896D3C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0622112642;
	Wed,  3 Apr 2024 10:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQn0ZsgY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CAD1129DA;
 Wed,  3 Apr 2024 10:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141527; x=1743677527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=95rIAOk23JgjKHgGzwFjF7V4BcAHOjBvOInSOjzO5G0=;
 b=DQn0ZsgYK4jOe2P435vrSP50hYb3j53FO4BGMav8YCeZ9KxWu9hg8g3D
 PxA0cfzqraKrzLFEiJtoqK/kFOJN8rDYUb0OSg8Nc2D5shIQNo8kv7E4m
 wT19TcLeh6gr0I6PYJlCiui5GFBt7oFuDGn+q4dfZ62gMjP/X+J5PWkNf
 mcBz9EP20yxZervecsLXGdGzP8sm63DgPCwENOhC76Av7HfgrVxfU1+nq
 MsI5nRs2EACcKte5SPHVcLfdGrssveh0VEQnGUQuhiNQL+VPcKpIYe2WI
 0bptK7y0P7XmdLEvIgaXftDLrf1QBtK9ECSexCVl0kwMVR4hRyaZn7/46 A==;
X-CSE-ConnectionGUID: rNoVIdQySHaJune2aBJ5fg==
X-CSE-MsgGUID: +h5gwRaCSo2B8Ah8g8r6/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212182"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212182"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:42 -0700
X-CSE-ConnectionGUID: Hh01OFgURLCwLxL6VYf/dw==
X-CSE-MsgGUID: P3cGyPbmQ+O9d3d1+PXQhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493391"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:40 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 14/25] drm/i915/xe2hpd: Add missing chicken bit register
 programming
Date: Wed,  3 Apr 2024 16:21:12 +0530
Message-Id: <20240403105123.1327669-15-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

Bpsec: 49189
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
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
index 58f3e4bfe254..875d76fb8cd0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4548,6 +4548,7 @@
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
 #define   CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
+#define   BMG_DARB_HALF_BLK_END_BURST	REG_BIT(27)
 #define   KBL_ARB_FILL_SPARE_14		REG_BIT(14)
 #define   KBL_ARB_FILL_SPARE_13		REG_BIT(13)
 #define   GLK_CL2_PWR_DOWN		REG_BIT(12)
-- 
2.25.1

