Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBFB896D44
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C7F1129C2;
	Wed,  3 Apr 2024 10:52:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NcvbsdvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEFC4112643;
 Wed,  3 Apr 2024 10:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141554; x=1743677554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=16hMndU3f7cgmqlWW160e2/ZvbO6vsyI1ZbGPYrwMsg=;
 b=NcvbsdvQpuDNFMztVXvHMcUrVd80DaBvmfdcB68MA6CuWYjAJEVw37q/
 0VehULdwXHrUArQfVlJebLkuNvrMEL2YvgtLNeg8GKpieqwi7JiMYLzie
 E6iYkw+eqlXjHp+WMEhT2854liYRbmFyeHa/xCDjGI8g5lVklhhW3w97H
 8TAgdHW8cN75pmTsvzqaT4eqrmkqx6gM980rQRt2gZH2RFmuZdCZthAZO
 ucYKIoVlffkjPY2MAQIlj0cgbIgFE/eWvhI26A1WPcksZwogy7P26YjXX
 rbH9dBHbrGTnDkHZogwdJm0uO/cjwMwbKYIVjnwZ1s774kjqe3Rhac532 Q==;
X-CSE-ConnectionGUID: dooFQoRLS1ucNZb9rGpnbA==
X-CSE-MsgGUID: CejNlAoxRDyleODnO3GA6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212263"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212263"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:52:00 -0700
X-CSE-ConnectionGUID: LhaziSKiRvmsNGSmWUR4YA==
X-CSE-MsgGUID: wd+rgsPQTmqxwyk1XubZBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493440"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:57 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 22/25] drm/xe/gt_print: add xe_gt_err_once()
Date: Wed,  3 Apr 2024 16:21:20 +0530
Message-Id: <20240403105123.1327669-23-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

