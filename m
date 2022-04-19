Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E17F9507A4E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 21:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D023C89F53;
	Tue, 19 Apr 2022 19:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 858F389ED3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 19:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650396808; x=1681932808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JykmTxbPExwLA0uIJpmx+ZszVft/4kYljMqxO8+aVE0=;
 b=Crdj93SfYaLWFBjz3eMbAdNBYThBaz0YGwwDt/kTwULYWFC58Rp2o1mF
 7uOwky4YwdikbW1Sy5sDmUzbyTnz4d7JO+WVcPJGPiHBF/stkom6aZknu
 2GoWjXsc13Yotd5Fp1fDks/arHmRfX+VZ4Er5tXy2VCoJlhPZYg1DU/si
 J2Mqdwcr/xS4rhTpQC0lpZ9+0N/ZreKj3zfiQ14VLZ3HHI8W8mEhy/UDj
 EZM3rr3GpFBK2IpqnKneges+lMYSQmUQGJKag+/kc+WppR0Nf1t1JmDtz
 Wb1DAFRU6Hds41o8jT6jeYuNQevdye1GUpO0g67EeJ68WfPU9ddNDsA2I w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="244437977"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="244437977"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 12:33:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="554868608"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 12:33:28 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 12:33:13 -0700
Message-Id: <20220419193314.526966-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220419193314.526966-1-daniele.ceraolospurio@intel.com>
References: <20220419193314.526966-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/7] drm/i915/dg2: add gsc with special gsc
 bar offsets
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
Cc: alexander.usyskin@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

DG2 uses different GSC offsets on memory bar
and uses PXP head (HECI1).

v2 (Daniele): Rebased to before the ATS patches

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> #v1
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gsc.c | 22 +++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_pci.c     |  1 +
 drivers/gpu/drm/i915/i915_reg.h     |  2 ++
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 21e860861f0b5..0e494028b81d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -54,6 +54,19 @@ static const struct gsc_def gsc_def_dg1[] = {
 	}
 };
 
+static const struct gsc_def gsc_def_dg2[] = {
+	{
+		.name = "mei-gsc",
+		.bar = DG2_GSC_HECI1_BASE,
+		.bar_size = GSC_BAR_LENGTH,
+	},
+	{
+		.name = "mei-gscfi",
+		.bar = DG2_GSC_HECI2_BASE,
+		.bar_size = GSC_BAR_LENGTH,
+	}
+};
+
 static void gsc_release_dev(struct device *dev)
 {
 	struct auxiliary_device *aux_dev = to_auxiliary_dev(dev);
@@ -90,7 +103,14 @@ static void gsc_init_one(struct drm_i915_private *i915,
 	if (intf_id == 0 && !HAS_HECI_PXP(i915))
 		return;
 
-	def = &gsc_def_dg1[intf_id];
+	if (IS_DG1(i915)) {
+		def = &gsc_def_dg1[intf_id];
+	} else if (IS_DG2(i915)) {
+		def = &gsc_def_dg2[intf_id];
+	} else {
+		drm_warn_once(&i915->drm, "Unknown platform\n");
+		return;
+	}
 
 	if (!def->name) {
 		drm_warn_once(&i915->drm, "HECI%d is not implemented!\n", intf_id + 1);
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 06e6dad0d7f71..cb6dcc3f48f4f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1051,6 +1051,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_4tile = 1, \
 	.has_64k_pages = 1, \
 	.has_guc_deprivilege = 1, \
+	.has_heci_pxp = 1, \
 	.needs_compact_pt = 1, \
 	.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1dd7b7de60029..efcfe32cd8eba 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -978,6 +978,8 @@
 #define BLT_RING_BASE		0x22000
 #define DG1_GSC_HECI1_BASE	0x00258000
 #define DG1_GSC_HECI2_BASE	0x00259000
+#define DG2_GSC_HECI1_BASE	0x00373000
+#define DG2_GSC_HECI2_BASE	0x00374000
 
 
 
-- 
2.25.1

