Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E93A799E51
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D3410E188;
	Sun, 10 Sep 2023 12:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6133210E188
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349872; x=1725885872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uIkMXLBToS8k9v4mhNt4li7U3gCwkQCK1h0lVKyVp8M=;
 b=ACdHioP25sxihJyS8e94HEKPSA/8+r7lIx4IOFtLlsvw9uoJFWDxhbow
 jfDGdWrV966eQLUBZ0r2ZgRaJsEIZuLebRD4rIHcjaTjHbanWSw/K7BDa
 4i5DUs3yaM1iatWoEWxHuA4QB7fwONEA77MekHm6MEuAtwakcvgYF5WAn
 BoM1vb3Unv74EB4sp92vkzwTPY7fBZMz17bQl1UCQAQVCVZScq+ZBNy6r
 SDFnVtrtN2WmzeoP3+c1bNF5ol2Vrk1jlDQnMbZouukjpg+J9Vi1H62Iq
 xN406VOeGVfu1b9ZAdFmbQUSN236eqye0Bvw1crLQ4akSZV/i/ZKlhVRS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907090"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907090"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073815007"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073815007"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:29 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:41 +0300
Message-Id: <20230910123949.1251964-3-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/spi: add intel_spi_region map
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-mtd@lists.infradead.org, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Add the dGFX spi region map and convey it via auxiliary device
to the spi child device.

CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi.c | 8 ++++++++
 drivers/gpu/drm/i915/spi/intel_spi.h | 6 ++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c b/drivers/gpu/drm/i915/spi/intel_spi.c
index 9eb5ab6bc4b9..c697ca226e34 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi.c
@@ -10,6 +10,13 @@
 
 #define GEN12_GUNIT_SPI_SIZE 0x80
 
+static const struct i915_spi_region regions[I915_SPI_REGIONS] = {
+	[0] = { .name = "DESCRIPTOR", },
+	[2] = { .name = "GSC", },
+	[11] = { .name = "OptionROM", },
+	[12] = { .name = "DAM", },
+};
+
 static void i915_spi_release_dev(struct device *dev)
 {
 }
@@ -29,6 +36,7 @@ void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *dev_priv)
 	spi->bar.end = spi->bar.start + GEN12_GUNIT_SPI_SIZE - 1;
 	spi->bar.flags = IORESOURCE_MEM;
 	spi->bar.desc = IORES_DESC_NONE;
+	spi->regions = regions;
 
 	aux_dev->name = "spi";
 	aux_dev->id = (pci_domain_nr(pdev->bus) << 16) |
diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h b/drivers/gpu/drm/i915/spi/intel_spi.h
index a58bf79dcbc9..1ecf1a8581b4 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi.h
+++ b/drivers/gpu/drm/i915/spi/intel_spi.h
@@ -10,10 +10,16 @@
 
 struct drm_i915_private;
 
+#define I915_SPI_REGIONS 13
+struct i915_spi_region {
+	const char *name;
+};
+
 struct intel_spi {
 	struct auxiliary_device aux_dev;
 	struct drm_i915_private *i915;
 	struct resource bar;
+	const struct i915_spi_region *regions;
 };
 
 #define auxiliary_dev_to_intel_spi_dev(auxiliary_dev) \
-- 
2.34.1

