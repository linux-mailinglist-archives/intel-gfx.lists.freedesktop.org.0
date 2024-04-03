Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810FA896E1F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3F7112A23;
	Wed,  3 Apr 2024 11:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHGu5ale";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48DD9112A28;
 Wed,  3 Apr 2024 11:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143416; x=1743679416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=16hMndU3f7cgmqlWW160e2/ZvbO6vsyI1ZbGPYrwMsg=;
 b=aHGu5aleiDiJhNw8RqJhUT4Nrs8QqiZkOQsf06Y4VL9t4NZa3tmxYTri
 uYudmJeHFu7OR/PhW3VH8FYnid+pBCdUtakw+b+6tMavRuf3TfnIPimnW
 yAJfErWXJ41XJ9Tz2EmoqGkdL7w3N8Aih7+VICVBU0vrk4OV3rC0uKj9z
 JVOrXxXYwnu1bK01AbW5xwMUMmS6qplko2EEUFXZLBcUblB6a3oPP2ttX
 TViU5CVoqGna9d/QgZOdQmIcoAeuA4xupXItott8aiuYSgpFM4GcYkRNN
 4HPyroaKh+8yOUhn194nkxwufjcjQQ/YXdMzWbvPJ4kBsZUf+pg3WiHAD g==;
X-CSE-ConnectionGUID: dyrTQUJNRy2T1nk3mThKsA==
X-CSE-MsgGUID: iHP32rOLSLuNCClP7OJyDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824161"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824161"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:36 -0700
X-CSE-ConnectionGUID: zoEqUNCUTHyMzRsvfgi1MA==
X-CSE-MsgGUID: ew8Iub/XTDm2eTXVoqXV0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358588"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:34 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 22/25] drm/xe/gt_print: add xe_gt_err_once()
Date: Wed,  3 Apr 2024 16:52:50 +0530
Message-Id: <20240403112253.1432390-23-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

