Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F33585AD916
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0758710E4AD;
	Mon,  5 Sep 2022 18:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51C310E4A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662402947; x=1693938947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=02q0DywQ8BZOXRDLOKZq3Lrfu1lwKF0yzWAsg25FZds=;
 b=IqeS0FKVdIJYt73gJ1+vDQTcLGUpN8AUtDCnXCV4+KQy4pOyamHxR7OT
 8Dy7hB+8duc1+Qasyq/AHMTwGsXNtUPrAFx/hIMZ76kDWXh7D77Oa/lxV
 CkdINQtHHSym9l2xs8+1+vg0IkdJ8qxbFjUfhCJ9tc3AWCFhNWg/+VbwQ
 A8Q5piPKUnutF2v2Xw//0Yu4+M8yc//+1jW7y9EstTpD4KMsd2QTwWRQ7
 PIHXPIysNYvDsIocIVojSi/3E95FX2UEzh3T5XwKgf0eUflhjzZtuSBhU
 lJ83K1APR9dQ9u/7r9v4mlP14MUTUloOe+ItEjC280vPDlK1PdqnUrADo w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="294024611"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="294024611"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:35:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675375687"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:35:45 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 00:08:00 +0530
Message-Id: <20220905183801.2126693-5-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220905183801.2126693-1-badal.nilawar@intel.com>
References: <20220905183801.2126693-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/mtl: Modify CAGF functions for MTL
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

Updated the CAGF functions to get actual resolved frequency of
3D and SAMedia

Bspec: 66300

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 8 ++++++++
 drivers/gpu/drm/i915/gt/intel_rps.c     | 5 +++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index fb2c56777480..67b58d572941 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1510,6 +1510,14 @@
 #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
 #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
 
+/*
+ * MTL: Workpoint reg to get Core C state and act freq of 3D, SAMedia/
+ * 3D - 0x0C60 , SAMedia - 0x380C60
+ * Intel uncore handler redirects transactions for SAMedia to MTL_MEDIA_GSI_BASE
+ */
+#define MTL_MIRROR_TARGET_WP1          _MMIO(0x0C60)
+#define   MTL_CAGF_MASK                REG_GENMASK(8, 0)
+
 #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
 #define   GEN11_CSME				(31)
 #define   GEN11_GUNIT				(28)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 579ae9ac089c..0f6d109b1aad 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2044,6 +2044,8 @@ u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		cagf = (rpstat >> 8) & 0xff;
+	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		cagf = rpstat & MTL_CAGF_MASK;
 	else if (GRAPHICS_VER(i915) >= 9)
 		cagf = (rpstat & GEN9_CAGF_MASK) >> GEN9_CAGF_SHIFT;
 	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
@@ -2067,6 +2069,9 @@ static u32 read_cagf(struct intel_rps *rps)
 		vlv_punit_get(i915);
 		freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
 		vlv_punit_put(i915);
+	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
+		freq = intel_uncore_read(rps_to_gt(rps)->uncore,
+					 MTL_MIRROR_TARGET_WP1);
 	} else if (GRAPHICS_VER(i915) >= 6) {
 		freq = intel_uncore_read(uncore, GEN6_RPSTAT1);
 	} else {
-- 
2.25.1

