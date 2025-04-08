Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79136A7F522
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 08:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7FC10E5D0;
	Tue,  8 Apr 2025 06:40:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJ4nM5NM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B1910E5D0;
 Tue,  8 Apr 2025 06:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744094436; x=1775630436;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MVfUqwddhEACu0q+MNsTuOCG7qDhNDYe60T2n44uZQ8=;
 b=hJ4nM5NMwvHmubQ3ATN6GprCN98CjFdBieISn6bp2GtSXlDOw2GvPNKQ
 MlpcJkJrBM95KUq/CLBN4uEwSyFK7EeBAGIpTPspPQJzEXaz0JMBsxqG1
 C3aAgIFL8BvYQwLI+MvdCTKO2QntTfMK51SGhSfIM0D4MkOqoIBF/omKN
 aO2mp1o0dl70aeNHEZPzy3rt1WzFXrn+/fa1kJ5GRMLx2swPSiet1FnW9
 XTr1efo2df1zb2Wd90xRM92eWYrV1wLHRw7wB30nniDP4M32szzwz4Ve8
 C5vTJVpwC0/GSRHh7HQR8VhzGxRXt8SeSd1Bk5JxSgnVXz6SM0+43gbTs g==;
X-CSE-ConnectionGUID: viA436ObTbCCsRIxOgkfSw==
X-CSE-MsgGUID: oYmUie5FSEu2u/1gwJGjZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44759489"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="44759489"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 23:40:36 -0700
X-CSE-ConnectionGUID: TRJVxZQyTOmFXwffa19kTA==
X-CSE-MsgGUID: Zv8TzJsgRYqnquJ9ksY5JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128043547"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 23:40:34 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [core-for-CI] Revert "panel/auo-a030jtn01: Use refcounted allocation
 in place of devm_kzalloc()"
Date: Tue,  8 Apr 2025 11:55:24 +0530
Message-Id: <20250408062524.1825048-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This reverts commit 9d7d7c3c9a191864367b28e05b312ab3ac34ef0a.

The patch causes build errors in our CI. Revert it till a fix is found.

  CC [M]  drivers/gpu/drm/solomon/ssd130x-spi.o
  CC [M]  drivers/gpu/drm/panel/panel-auo-a030jtn01.o
drivers/gpu/drm/panel/panel-auo-a030jtn01.c: In function ‘a030jtn01_probe’:
drivers/gpu/drm/panel/panel-auo-a030jtn01.c:203:9: error: ‘panel’ undeclared (first use in this function)
  203 |         panel = devm_drm_panel_alloc(dev, struct a030jtn01, panel,
      |         ^~~~~
drivers/gpu/drm/panel/panel-auo-a030jtn01.c:203:9: note: each undeclared identifier is reported only once for each function it appears in
make[6]: *** [scripts/Makefile.build:203: drivers/gpu/drm/panel/panel-auo-a030jtn01.o] Error 1
make[5]: *** [scripts/Makefile.build:461: drivers/gpu/drm/panel] Error 2
make[4]: *** [scripts/Makefile.build:461: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:461: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:461: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2006: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2

Link: https://lore.kernel.org/all/Z_P0A9lxWD0aAdjp@ideak-desk.fi.intel.com/
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14039
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/panel/panel-auo-a030jtn01.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-auo-a030jtn01.c b/drivers/gpu/drm/panel/panel-auo-a030jtn01.c
index 83529b1c2bac..77604d6a4e72 100644
--- a/drivers/gpu/drm/panel/panel-auo-a030jtn01.c
+++ b/drivers/gpu/drm/panel/panel-auo-a030jtn01.c
@@ -200,10 +200,9 @@ static int a030jtn01_probe(struct spi_device *spi)
 
 	spi->mode |= SPI_MODE_3 | SPI_3WIRE;
 
-	panel = devm_drm_panel_alloc(dev, struct a030jtn01, panel,
-				     &a030jtn01_funcs, DRM_MODE_CONNECTOR_DPI);
-	if (IS_ERR(panel))
-		return PTR_ERR(panel);
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
 
 	priv->spi = spi;
 	spi_set_drvdata(spi, priv);
@@ -224,6 +223,9 @@ static int a030jtn01_probe(struct spi_device *spi)
 	if (IS_ERR(priv->reset_gpio))
 		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio), "Failed to get reset GPIO");
 
+	drm_panel_init(&priv->panel, dev, &a030jtn01_funcs,
+		       DRM_MODE_CONNECTOR_DPI);
+
 	err = drm_panel_of_backlight(&priv->panel);
 	if (err)
 		return err;
-- 
2.25.1

