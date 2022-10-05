Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D305F57B5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 17:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB2510E6B9;
	Wed,  5 Oct 2022 15:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7157C10E6B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 15:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664984523; x=1696520523;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PljFco2Wz7B3BGRHx5TVqVBcKFOq0e21cBmoM5iukyU=;
 b=E9DbcFT9asn+kKYicuGOh+XCRDQSWQNqZ7ngNmh9y1aSIpwJt1DZkFYE
 hi82XKRafdqiIgJm6NoYNsVcuQ1aqKnQTZVq5k6YpY8+p9nvUyfIjhdkM
 BYL2VuZaS0yHd76zWjYUP4TSfiiutVnsSMLwiVhFJR4GeNFEtHNCSOov3
 mVEZ31quQ9yUM9j+j+4eb0Uq8eUDgowFCxsDgMnGxi/RX96281rMoV+2v
 PgKtcREHP4UM2LMLdi5LJtPbdsvXUviEyBxdi/JV4vo8R1NJRll6L5y6O
 Sp9nboMkXpeK/AYlR7i2Qp4Is20VwATEmDq/9ovJKIj/vzy6IixbGzJtx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="300792275"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="300792275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 08:42:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="655207324"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="655207324"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 05 Oct 2022 08:42:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Oct 2022 18:41:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 18:41:57 +0300
Message-Id: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Extract intel_mmio_bar()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have the same code to determine the MMIO BAR in
two places. Collect it to a single place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c      | 2 +-
 drivers/gpu/drm/i915/i915_pci.c         | 4 +---
 drivers/gpu/drm/i915/intel_pci_config.h | 8 ++++++++
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index b367cfff48d5..8995a21c2209 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -838,7 +838,7 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	unsigned int i;
 	int ret;
 
-	mmio_bar = GRAPHICS_VER(i915) == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
+	mmio_bar = intel_mmio_bar(GRAPHICS_VER(i915));
 	phys_addr = pci_resource_start(pdev, mmio_bar);
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 38460a0bd7cb..19ae173937bc 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1297,9 +1297,7 @@ bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
 
 static bool intel_mmio_bar_valid(struct pci_dev *pdev, struct intel_device_info *intel_info)
 {
-	int gttmmaddr_bar = intel_info->__runtime.graphics.ip.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
-
-	return i915_pci_resource_valid(pdev, gttmmaddr_bar);
+	return i915_pci_resource_valid(pdev, intel_mmio_bar(intel_info->__runtime.graphics.ip.ver));
 }
 
 static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i915/intel_pci_config.h
index 4977a524ce6f..305f137d2ebd 100644
--- a/drivers/gpu/drm/i915/intel_pci_config.h
+++ b/drivers/gpu/drm/i915/intel_pci_config.h
@@ -13,6 +13,14 @@
 #define GTT_APERTURE_BAR			GFXMEM_BAR
 #define GEN12_LMEM_BAR				GFXMEM_BAR
 
+static inline int intel_mmio_bar(int graphics_ver)
+{
+	switch (graphics_ver) {
+	case 2: return GEN2_GTTMMADR_BAR;
+	default: return GTTMMADR_BAR;
+	}
+}
+
 /* BSM in include/drm/i915_drm.h */
 
 #define MCHBAR_I915				0x44
-- 
2.35.1

