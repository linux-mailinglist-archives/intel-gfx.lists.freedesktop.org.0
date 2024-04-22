Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D51218AC463
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38700112800;
	Mon, 22 Apr 2024 06:40:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nz1WU1t0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2FA1127FF;
 Mon, 22 Apr 2024 06:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768040; x=1745304040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nQIsVKIs2iYDuQRPd7DkuHGVvjiw8mwR4g7NMEddPzk=;
 b=Nz1WU1t0SEoIu0OewdPhW/PkoDzEDU6e/+LqGJYl1xBrC44HD8eGX2O9
 TNPqfIOs2WXVGXHLELiYdIt3GZFHtIa6nmoV1UtaNhCROtIkde6uG/zk8
 KTCpiU254e12qrG/KYLEQXh88LAb0loDe2R1rbPUCjDkbZ7ovIr54rpyH
 q4nyeamifSDxlo9HIx1H3rVtDwoinsCWIUBkm9zgXPNKUMpvB+EiWP/G1
 NlvZZNYi6ByrGRl6yRDhBhi2EZtvVhXO+/MB0QW/8u0wJainO3N9YZVLE
 HJSOlR5qEl162Uty+ziYB+EURylRn8+VIpqbwVfG7pdCttnmLJRakDbAa g==;
X-CSE-ConnectionGUID: VWDHETirQ7qUwt4zP0DBDQ==
X-CSE-MsgGUID: 0blwp1btRTifVY7m18Eirg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208666"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208666"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:39 -0700
X-CSE-ConnectionGUID: SzFSniy6QiqrPNQfgb8HYA==
X-CSE-MsgGUID: szfTdjr5Th6B/DK6QvONNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896578"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:37 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: [PATCH v4 16/19] drm/xe/gt_print: add xe_gt_err_once()
Date: Mon, 22 Apr 2024 12:10:35 +0530
Message-Id: <20240422064038.1451579-17-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

From: Matthew Auld <matthew.auld@intel.com>

Needed in an upcoming patch, where we want GT level print, but only
which to trigger once to avoid flooding dmesg.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/xe/xe_gt_printk.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_gt_printk.h b/drivers/gpu/drm/xe/xe_gt_printk.h
index c2b004d3f48e..d6228baaff1e 100644
--- a/drivers/gpu/drm/xe/xe_gt_printk.h
+++ b/drivers/gpu/drm/xe/xe_gt_printk.h
@@ -13,6 +13,9 @@
 #define xe_gt_printk(_gt, _level, _fmt, ...) \
 	drm_##_level(&gt_to_xe(_gt)->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
 
+#define xe_gt_err_once(_gt, _fmt, ...) \
+	xe_gt_printk((_gt), err_once, _fmt, ##__VA_ARGS__)
+
 #define xe_gt_err(_gt, _fmt, ...) \
 	xe_gt_printk((_gt), err, _fmt, ##__VA_ARGS__)
 
-- 
2.25.1

