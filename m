Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A734F7FCE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0684710EB6A;
	Thu,  7 Apr 2022 13:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06CA10EB48
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649336428; x=1680872428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b7vYITy2pH3SdPsKSfw6JD5LUWFsWbb9ZTOwd08KSkM=;
 b=Jz21UaSc7TXXAiScfROkXcGSUIcM7wAAAS2PxCioXE97yl6GSiQoww5P
 TGmXbKUs6sp/M4RDW6uZOl5R/ya4A/B5mRaoSBa1XOhMF97urkZ9Wl1J1
 tAO8TJwv26iPYkuBvHijdWIPoJvg6WIaNfDjilL96hiIB2H9jrYYQ//nm
 Q7cNEoxZu5+BzoxUeZ2dMFiUwx1t/VdIyT7Ghd/w2WISeRCXvt498coOT
 D9Fm3uSbkL5u7KQhj4/D4qpBbK6ef/A+cLQ3cL33Eao4Jp3LFzb6w1VYC
 cT2pCam8IgD2qKAVMNJIbXoa73utDkLk/ADlbUpLVo2fxHighg26vIrqZ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="261492275"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261492275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:00:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571041197"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:00:17 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  7 Apr 2022 15:58:33 +0300
Message-Id: <20220407125839.1479249-15-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/20] drm/i915/dg2: add gsc with special gsc
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

DG2 uses different GSC offsets on memory bar
and uses PXP head (HECI1).

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gsc.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_pci.c     |  1 +
 drivers/gpu/drm/i915/i915_reg.h     |  2 ++
 3 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index ffe6716590f0..bfc307e49bf9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -69,6 +69,19 @@ static const struct gsc_def gsc_def_xehpsdv[] = {
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
@@ -109,6 +122,8 @@ static void gsc_init_one(struct drm_i915_private *i915,
 		def = &gsc_def_dg1[intf_id];
 	} else if (IS_XEHPSDV(i915)) {
 		def = &gsc_def_xehpsdv[intf_id];
+	} else if (IS_DG2(i915)) {
+		def = &gsc_def_dg2[intf_id];
 	} else {
 		drm_warn_once(&i915->drm, "Unknown platform\n");
 		return;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 06e6dad0d7f7..cb6dcc3f48f4 100644
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
index 1dd7b7de6002..efcfe32cd8eb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -978,6 +978,8 @@
 #define BLT_RING_BASE		0x22000
 #define DG1_GSC_HECI1_BASE	0x00258000
 #define DG1_GSC_HECI2_BASE	0x00259000
+#define DG2_GSC_HECI1_BASE	0x00373000
+#define DG2_GSC_HECI2_BASE	0x00374000
 
 
 
-- 
2.32.0

