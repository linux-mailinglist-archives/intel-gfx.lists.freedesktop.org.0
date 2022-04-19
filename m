Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC965060A2
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 02:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 744AD10E1BE;
	Tue, 19 Apr 2022 00:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816A510E1B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 00:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650326878; x=1681862878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=flF/UTX+LhJ8VA5T3YY2tlPK8WEKeEaBAOmEliQdYs8=;
 b=SgioikQog1L1kjO4HFLJ9Z4BmGAeoffnBA0M/PPoOeOKk1AlHg5yVP2v
 GVyEDEllxoahOdtn+9lOFYdUHhD3IYe2Uixyq5hlkq3IKtV0dyodJAl0O
 5bCmSnE68O2K8AZ0K65ZJFM8SSOT52tjXDLjNdaD0C34OUQiZGCUh2a0d
 cZyf6RDW+SNA+9Moz1eJs9igt7nw1DPuoNli0zJLq2Znjd+FUibAGJmL4
 OeEE8Tma0E4tMpFaExCy9MuAopHLSHBibZzzqkpoapib2kO7dQ6Y/POYg
 lFVuGTurflgtrOIzxkR2AzLVxM1MKErRc0owtNGWYbu3/wI1scg1gSZ8k w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="326537823"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="326537823"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 17:07:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="665586406"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 17:07:58 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 17:07:36 -0700
Message-Id: <20220419000737.420867-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220419000737.420867-1-daniele.ceraolospurio@intel.com>
References: <20220419000737.420867-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915/dg2: add gsc with special gsc
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
Cc: alexander.usyskin@intel.com
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

