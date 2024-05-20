Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7488CA1E9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005E210E354;
	Mon, 20 May 2024 18:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WYWMe5bu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C87A10E6D5;
 Mon, 20 May 2024 18:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716229109; x=1747765109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RK+5m1Z1vyEzdz4Z3tXoDiD6CFaRjJ2rBSQcpMMo95Q=;
 b=WYWMe5buVsKqNhq6yfZVxS+IGcGSBa0KeIWdaOqMycmVbHJa25dOultS
 GtVfdWaeyoAVqgAn4SWkNp8Jf3yfdM++4T7Vdg6YSEa0Y3NET28Bg+9Dg
 /YXmU7mgmHja8Ry+ocJOJTZbIDnwbH5QUFDvyHY0F2/Dpqw5LzO569K6Q
 uVynhVYEK77RQFVKWsLnDJskyjMXpM3H5Df9fRcdt16fMMHRJY4LOaumP
 BUfYEra2jZU0tSjbH0SOHtc7dNMBP9Wb/K64dmpt7iSucMwizrn51zbNe
 2e8qm/B7HW7Bw2wrTCEdOrMdJcY3oONrsCr1XfwuG4Oe3kj3BABFHMTIj g==;
X-CSE-ConnectionGUID: gR7hkpmfS7+sROXI90X7vA==
X-CSE-MsgGUID: N+FuacFHSAa32iTl9hVkMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="34894571"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="34894571"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:28 -0700
X-CSE-ConnectionGUID: nsEE+YmUTnGgyFwswvKwGg==
X-CSE-MsgGUID: fabhRYcrRGOPHdqQ4JjTcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37466531"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.246.25.139])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:27 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [PATCH 2/3] drm/xe: Don't rely on indirect includes from xe_mmio.h
Date: Mon, 20 May 2024 20:18:13 +0200
Message-Id: <20240520181814.2392-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240520181814.2392-1-michal.wajdeczko@intel.com>
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
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

These compilation units use udelay() or some GT oriented printk
functions without explicitly including proper header files, and
relying on #includes from the xe_mmio.h instead. Fix that.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c         | 2 ++
 drivers/gpu/drm/xe/xe_gsc.c            | 2 ++
 drivers/gpu/drm/xe/xe_gt_ccs_mode.c    | 1 +
 drivers/gpu/drm/xe/xe_guc_ads.c        | 1 +
 drivers/gpu/drm/xe/xe_huc.c            | 2 ++
 drivers/gpu/drm/xe/xe_mocs.c           | 1 +
 drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 1 +
 drivers/gpu/drm/xe/xe_uc_fw.c          | 1 +
 8 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 8da90934c900..28a4e0c3b1fe 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -5,6 +5,7 @@
 
 #include "xe_device.h"
 
+#include <linux/delay.h>
 #include <linux/units.h>
 
 #include <drm/drm_aperture.h>
@@ -33,6 +34,7 @@
 #include "xe_gsc_proxy.h"
 #include "xe_gt.h"
 #include "xe_gt_mcr.h"
+#include "xe_gt_printk.h"
 #include "xe_hwmon.h"
 #include "xe_irq.h"
 #include "xe_memirq.h"
diff --git a/drivers/gpu/drm/xe/xe_gsc.c b/drivers/gpu/drm/xe/xe_gsc.c
index 8cc6420a9e7f..80a61934decc 100644
--- a/drivers/gpu/drm/xe/xe_gsc.c
+++ b/drivers/gpu/drm/xe/xe_gsc.c
@@ -5,6 +5,8 @@
 
 #include "xe_gsc.h"
 
+#include <linux/delay.h>
+
 #include <drm/drm_managed.h>
 
 #include <generated/xe_wa_oob.h>
diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
index a34c9a24dafc..f90cf679c5d7 100644
--- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
+++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
@@ -9,6 +9,7 @@
 #include "xe_assert.h"
 #include "xe_gt.h"
 #include "xe_gt_ccs_mode.h"
+#include "xe_gt_printk.h"
 #include "xe_gt_sysfs.h"
 #include "xe_mmio.h"
 
diff --git a/drivers/gpu/drm/xe/xe_guc_ads.c b/drivers/gpu/drm/xe/xe_guc_ads.c
index 9c33cca4e370..1c60b685dbc6 100644
--- a/drivers/gpu/drm/xe/xe_guc_ads.c
+++ b/drivers/gpu/drm/xe/xe_guc_ads.c
@@ -16,6 +16,7 @@
 #include "xe_bo.h"
 #include "xe_gt.h"
 #include "xe_gt_ccs_mode.h"
+#include "xe_gt_printk.h"
 #include "xe_guc.h"
 #include "xe_guc_ct.h"
 #include "xe_hw_engine.h"
diff --git a/drivers/gpu/drm/xe/xe_huc.c b/drivers/gpu/drm/xe/xe_huc.c
index 39a484a57585..b039ff49341b 100644
--- a/drivers/gpu/drm/xe/xe_huc.c
+++ b/drivers/gpu/drm/xe/xe_huc.c
@@ -5,6 +5,8 @@
 
 #include "xe_huc.h"
 
+#include <linux/delay.h>
+
 #include <drm/drm_managed.h>
 
 #include "abi/gsc_pxp_commands_abi.h"
diff --git a/drivers/gpu/drm/xe/xe_mocs.c b/drivers/gpu/drm/xe/xe_mocs.c
index f04754ad911b..de3f2d3f1b04 100644
--- a/drivers/gpu/drm/xe/xe_mocs.c
+++ b/drivers/gpu/drm/xe/xe_mocs.c
@@ -12,6 +12,7 @@
 #include "xe_force_wake.h"
 #include "xe_gt.h"
 #include "xe_gt_mcr.h"
+#include "xe_gt_printk.h"
 #include "xe_mmio.h"
 #include "xe_platform_types.h"
 #include "xe_pm.h"
diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
index f77367329760..64592a8e527b 100644
--- a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
+++ b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
@@ -18,6 +18,7 @@
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_gt.h"
+#include "xe_gt_printk.h"
 #include "xe_mmio.h"
 #include "xe_res_cursor.h"
 #include "xe_sriov.h"
diff --git a/drivers/gpu/drm/xe/xe_uc_fw.c b/drivers/gpu/drm/xe/xe_uc_fw.c
index ed819f1df888..12346645a8e5 100644
--- a/drivers/gpu/drm/xe/xe_uc_fw.c
+++ b/drivers/gpu/drm/xe/xe_uc_fw.c
@@ -14,6 +14,7 @@
 #include "xe_force_wake.h"
 #include "xe_gsc.h"
 #include "xe_gt.h"
+#include "xe_gt_printk.h"
 #include "xe_map.h"
 #include "xe_mmio.h"
 #include "xe_module.h"
-- 
2.43.0

