Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E10728CA1EA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189F310E835;
	Mon, 20 May 2024 18:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+5xB1xU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E3810E835;
 Mon, 20 May 2024 18:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716229110; x=1747765110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V7BTHV0bB16NMJiAeyaX7nRgAYuA3fHu7DMRZAWW7QE=;
 b=E+5xB1xUCBVUSXkm/AmrHfDuNx6K/+lMYkcsa4Z9tbyVZi9VlcAmuoXo
 bA3EEvPPGcQrP7TfpVibXFegpaBMo+2Rs4Yx/XCET2OADmPbzl8/0U/pJ
 EaZn7v7BHu9d4OSiD4v8jsA1R82+pj1pd785TquMdO6bFcfXzZ8R9/ziP
 t45NAKQloXYtTCotMe53HqZuZMzRlp7KIKbJV6PEF7LL+n0/eIf9HKWn1
 Wq/DAAQpqHUHPwTruvFEI6it+C8S3HGdOW71DKFfORO4I6uUO1W+OcnVM
 neAo+DYcJ5I9yNNiaZjyCEYBq4PZnEGpoi0msqj0nX3qIO/AFFM81hpeu g==;
X-CSE-ConnectionGUID: SHZRGI8hRpizErc7LPrjoA==
X-CSE-MsgGUID: rKEHkMTgQQeWKRTVoaO7lA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="34894576"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="34894576"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:30 -0700
X-CSE-ConnectionGUID: gXpyrVtBRJ2t1Q0kLDog7Q==
X-CSE-MsgGUID: wsX54bvQQo2MrfUjlARzLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37466541"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.246.25.139])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:28 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [PATCH 3/3] drm/xe: Cleanup xe_mmio.h
Date: Mon, 20 May 2024 20:18:14 +0200
Message-Id: <20240520181814.2392-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240520181814.2392-1-michal.wajdeczko@intel.com>
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
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

We don't need <linux/delay.h> include since commit 5c09bd6ccd41
("drm/xe/mmio: Move xe_mmio_wait32() to xe_mmio.c").

We don't need <linux/io-64-nonatomic-lo-hi.h> include since commit
54c659660d63 ("drm/xe: Make xe_mmio_read|write() functions non-
inline").

And since commit 924e6a9789a0 ("drm/xe/uapi: Remove MMIO ioctl")
we don't need forward declarations of drm_device and drm_file.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/xe/xe_mmio.c | 7 +++++--
 drivers/gpu/drm/xe/xe_mmio.h | 9 +--------
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
index 05edab0e085d..548dc37e5893 100644
--- a/drivers/gpu/drm/xe/xe_mmio.c
+++ b/drivers/gpu/drm/xe/xe_mmio.c
@@ -3,10 +3,12 @@
  * Copyright © 2021-2023 Intel Corporation
  */
 
-#include <linux/minmax.h>
-
 #include "xe_mmio.h"
 
+#include <linux/delay.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
+#include <linux/minmax.h>
+
 #include <drm/drm_managed.h>
 #include <drm/xe_drm.h>
 
@@ -19,6 +21,7 @@
 #include "xe_ggtt.h"
 #include "xe_gt.h"
 #include "xe_gt_mcr.h"
+#include "xe_gt_printk.h"
 #include "xe_macros.h"
 #include "xe_module.h"
 #include "xe_sriov.h"
diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
index 445ec6a0753e..9ef7deecf38f 100644
--- a/drivers/gpu/drm/xe/xe_mmio.h
+++ b/drivers/gpu/drm/xe/xe_mmio.h
@@ -6,17 +6,10 @@
 #ifndef _XE_MMIO_H_
 #define _XE_MMIO_H_
 
-#include <linux/delay.h>
-#include <linux/io-64-nonatomic-lo-hi.h>
-
-#include "regs/xe_reg_defs.h"
-#include "xe_device_types.h"
-#include "xe_gt_printk.h"
 #include "xe_gt_types.h"
 
-struct drm_device;
-struct drm_file;
 struct xe_device;
+struct xe_reg;
 
 #define LMEM_BAR		2
 
-- 
2.43.0

