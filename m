Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABC633080F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 07:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2F196E58A;
	Mon,  8 Mar 2021 06:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9AEF6E58A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 06:28:08 +0000 (UTC)
IronPort-SDR: xuVt1c7SV4Z9COGOBCv32Zfs5VYEKNmgoSDJfizHXTbfH4bQRDIXW4FU3HzmPviW+Qbnrat6Ge
 oSq+60/sVKOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="249354810"
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="249354810"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:08 -0800
IronPort-SDR: zZ9UK6moBNTswwaFmapDV6oShOfztmBsdZUioPHE48ZNTDiPOtctXnfByaKBCjFJhQ576xHQqV
 PstsX5/Inu+w==
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="409181912"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:05 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  8 Mar 2021 08:27:40 +0200
Message-Id: <20210308062748.208017-3-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308062748.208017-1-tomas.winkler@intel.com>
References: <20210308062748.208017-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 02/10 v2] drm/i915/spi: intel_spi_region map
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the dGFX spi region map and convey it via mfd cell platform data
to the spi child device.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V2: Rebase
 drivers/gpu/drm/i915/spi/intel_spi.c | 9 +++++++++
 drivers/gpu/drm/i915/spi/intel_spi.h | 5 +++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c b/drivers/gpu/drm/i915/spi/intel_spi.c
index 932221dff1c1..8eb09366124e 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi.c
@@ -14,11 +14,20 @@ static const struct resource spi_resources[] = {
 	DEFINE_RES_MEM_NAMED(GEN12_GUNIT_SPI_BASE, 0x80, "i915-spi-mmio"),
 };
 
+static const struct i915_spi_region regions[I915_SPI_REGIONS] = {
+	[0] = { .name = "DESCRIPTOR", },
+	[2] = { .name = "GSC", },
+	[11] = { .name = "OptionROM", },
+	[12] = { .name = "DAM", },
+};
+
 static const struct mfd_cell intel_spi_cell = {
 	.id = 2,
 	.name = "i915-spi",
 	.num_resources = ARRAY_SIZE(spi_resources),
 	.resources = spi_resources,
+	.platform_data = (void *)regions,
+	.pdata_size    = sizeof(regions),
 };
 
 void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h b/drivers/gpu/drm/i915/spi/intel_spi.h
index 237724fe9d50..37f6771ddbf6 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi.h
+++ b/drivers/gpu/drm/i915/spi/intel_spi.h
@@ -8,6 +8,11 @@
 
 struct drm_i915_private;
 
+#define I915_SPI_REGIONS 13
+struct i915_spi_region {
+	const char *name;
+};
+
 struct intel_spi {
 	struct drm_i915_private *i915;
 };
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
