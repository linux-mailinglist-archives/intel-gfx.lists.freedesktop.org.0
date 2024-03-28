Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C80688FEF8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928D91123F1;
	Thu, 28 Mar 2024 12:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIMYFviK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69E31123F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711628811; x=1743164811;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pTau1N9kok1E1vlNW/B+GOKBtuZqhfkaXfTH0H/6QvA=;
 b=jIMYFviK72hrQHlM1tlRb4v/yCy7QLxAO5p9NZMjHObYmwa2eSE2hsso
 FiexDm/ArVxt0b+1su7gVFg3ImCFq87rOzdZNnEdUZl2Mo9MoA5whK695
 8giLI1btmE08soqOP8YMYAMYchSqsqvduSumqN/S0zX1XP59BQIQhzcff
 +9BmcpRff2A4auUGVDITRDZfgyuovqdIvBVSrZVQwbxXXPG+Uu1r1B92b
 jKdzwvHANvAKy4EMLSOAQsg5QtCXwSFV+wHTPKcdt49fChCEOekLQSfET
 soPobK/aJI3kwfXkjEqsGH20B/baxki54IfdLviWJN3yepH0aW3wohHn/ w==;
X-CSE-ConnectionGUID: hMcIit/PREO4haEtm54QQg==
X-CSE-MsgGUID: qFmf0/1UTNKQrLoYqkL+kQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17505528"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17505528"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16657598"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:48 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, linux-mtd@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 11/13] spi: intel-dg: wake card on operations
Date: Thu, 28 Mar 2024 14:22:34 +0200
Message-Id: <20240328122236.1718111-12-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240328122236.1718111-1-alexander.usyskin@intel.com>
References: <20240328122236.1718111-1-alexander.usyskin@intel.com>
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

Enable runtime PM in spi driver to notify graphics driver that
whole card should be kept awake while spi operations are
performed through this driver.

CC: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/spi/spi-intel-dg.c | 44 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/spi/spi-intel-dg.c b/drivers/spi/spi-intel-dg.c
index d626e9526631..24be2f7e14d7 100644
--- a/drivers/spi/spi-intel-dg.c
+++ b/drivers/spi/spi-intel-dg.c
@@ -12,11 +12,14 @@
 #include <linux/module.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/partitions.h>
+#include <linux/pm_runtime.h>
 #include <linux/string.h>
 #include <linux/slab.h>
 #include <linux/sizes.h>
 #include <linux/types.h>
 
+#define INTEL_DG_SPI_RPM_TIMEOUT 500
+
 struct intel_dg_spi {
 	struct kref refcnt;
 	struct mtd_info mtd;
@@ -471,6 +474,12 @@ static int intel_dg_spi_erase(struct mtd_info *mtd, struct erase_info *info)
 	total_len = info->len;
 	addr = info->addr;
 
+	ret = pm_runtime_resume_and_get(mtd->dev.parent);
+	if (ret < 0) {
+		dev_err(&mtd->dev, "rpm: get failed %d\n", ret);
+		return ret;
+	}
+
 	mutex_lock(&spi->lock);
 
 	while (total_len > 0) {
@@ -512,6 +521,8 @@ static int intel_dg_spi_erase(struct mtd_info *mtd, struct erase_info *info)
 
 out:
 	mutex_unlock(&spi->lock);
+	pm_runtime_mark_last_busy(mtd->dev.parent);
+	pm_runtime_put_autosuspend(mtd->dev.parent);
 	return ret;
 }
 
@@ -545,6 +556,12 @@ static int intel_dg_spi_read(struct mtd_info *mtd, loff_t from, size_t len,
 	if (len > spi->regions[idx].size - from)
 		len = spi->regions[idx].size - from;
 
+	ret = pm_runtime_resume_and_get(mtd->dev.parent);
+	if (ret < 0) {
+		dev_err(&mtd->dev, "rpm: get failed %zd\n", ret);
+		return ret;
+	}
+
 	mutex_lock(&spi->lock);
 
 	ret = spi_read(spi, region, from, len, buf);
@@ -557,6 +574,8 @@ static int intel_dg_spi_read(struct mtd_info *mtd, loff_t from, size_t len,
 	*retlen = ret;
 
 	mutex_unlock(&spi->lock);
+	pm_runtime_mark_last_busy(mtd->dev.parent);
+	pm_runtime_put_autosuspend(mtd->dev.parent);
 	return 0;
 }
 
@@ -590,6 +609,12 @@ static int intel_dg_spi_write(struct mtd_info *mtd, loff_t to, size_t len,
 	if (len > spi->regions[idx].size - to)
 		len = spi->regions[idx].size - to;
 
+	ret = pm_runtime_resume_and_get(mtd->dev.parent);
+	if (ret < 0) {
+		dev_err(&mtd->dev, "rpm: get failed %zd\n", ret);
+		return ret;
+	}
+
 	mutex_lock(&spi->lock);
 
 	ret = spi_write(spi, region, to, len, buf);
@@ -602,6 +627,8 @@ static int intel_dg_spi_write(struct mtd_info *mtd, loff_t to, size_t len,
 	*retlen = ret;
 
 	mutex_unlock(&spi->lock);
+	pm_runtime_mark_last_busy(mtd->dev.parent);
+	pm_runtime_put_autosuspend(mtd->dev.parent);
 	return 0;
 }
 
@@ -747,6 +774,17 @@ static int intel_dg_spi_probe(struct auxiliary_device *aux_dev,
 		}
 	}
 
+	pm_runtime_enable(device);
+
+	pm_runtime_set_autosuspend_delay(device, INTEL_DG_SPI_RPM_TIMEOUT);
+	pm_runtime_use_autosuspend(device);
+
+	ret = pm_runtime_resume_and_get(device);
+	if (ret < 0) {
+		dev_err(device, "rpm: get failed %d\n", ret);
+		goto err_norpm;
+	}
+
 	spi->base = devm_ioremap_resource(device, &ispi->bar);
 	if (IS_ERR(spi->base)) {
 		dev_err(device, "mmio not mapped\n");
@@ -771,9 +809,13 @@ static int intel_dg_spi_probe(struct auxiliary_device *aux_dev,
 
 	dev_dbg(device, "bound\n");
 
+	pm_runtime_put(device);
 	return 0;
 
 err:
+	pm_runtime_put(device);
+err_norpm:
+	pm_runtime_disable(device);
 	kref_put(&spi->refcnt, intel_dg_spi_release);
 	return ret;
 }
@@ -785,6 +827,8 @@ static void intel_dg_spi_remove(struct auxiliary_device *aux_dev)
 	if (!spi)
 		return;
 
+	pm_runtime_disable(&aux_dev->dev);
+
 	mtd_device_unregister(&spi->mtd);
 
 	dev_set_drvdata(&aux_dev->dev, NULL);
-- 
2.34.1

