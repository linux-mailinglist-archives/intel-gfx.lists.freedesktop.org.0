Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4DB4C001E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 18:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B74010EB7F;
	Tue, 22 Feb 2022 17:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD6010EB7C;
 Tue, 22 Feb 2022 17:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645550814; x=1677086814;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CAOY7D1XGhAYqvQP/hcL22aF29wRn657CuZ5WaLOiTw=;
 b=SzL4g1iQavO8hE8c5wPM3nGEagQ9ZPEpAugU+i4AlnvJ91lDxySz2Bfm
 0/QCQe539Y5NVMLXb+36sMcMJGo6I2VyZY0+MHWBwvPEOiDQvstLa1U82
 oyb1+btkQa6Y3akd0HVJgwg0s/nmSPqZrYmxXAykwqSPeQGFk4NVXhv0F
 946FlsTDB2+A9HHm439kiQyTr4pzNMw5DYBIm4NgaNVbyMmOOfcDmfgdz
 TbLzKy6YYAoWQG+/7cjTHRhRnayN2TatsnBFvdvI+z+mnwFVhtwXXqUW8
 m6X0H5rAYd96l21lKMon9dVPgCrtIWyg7BAyt/J3BY5nW/Aa4MN7p+7q3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231736914"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="231736914"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:26:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="683594308"
Received: from shreyasj-mobl1.amr.corp.intel.com (HELO
 mvcheng-desk2.intel.com) ([10.209.93.217])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:26:53 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 09:26:47 -0800
Message-Id: <20220222172649.331661-2-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220222172649.331661-1-michael.cheng@intel.com>
References: <20220222172649.331661-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm_cache: Add logic for
 wbvind_on_all_cpus
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add logic for wbvind_on_all_cpus for non-x86 platforms.

v2(Michael Cheng): Change logic to if platform is not x86, then
		   we add pr_warn for calling wbvind_on_all_cpus.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/drm_cache.c | 2 --
 include/drm/drm_cache.h     | 6 ++++++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
index 66597e411764..722e3931d68a 100644
--- a/drivers/gpu/drm/drm_cache.c
+++ b/drivers/gpu/drm/drm_cache.c
@@ -40,8 +40,6 @@
 #define MEMCPY_BOUNCE_SIZE 128
 
 #if defined(CONFIG_X86)
-#include <asm/smp.h>
-
 /*
  * clflushopt is an unordered instruction which needs fencing with mfence or
  * sfence to avoid ordering issues.  For drm_clflush_page this fencing happens
diff --git a/include/drm/drm_cache.h b/include/drm/drm_cache.h
index 22deb216b59c..24fcf6be1419 100644
--- a/include/drm/drm_cache.h
+++ b/include/drm/drm_cache.h
@@ -34,6 +34,12 @@
 #define _DRM_CACHE_H_
 
 #include <linux/scatterlist.h>
+#include <asm/smp.h>
+
+#if !defined(CONFIG_x86)
+#define wbinvd_on_all_cpus() \
+	pr_warn("Missing cache flush in %s\n", __func__)
+#endif
 
 struct iosys_map;
 
-- 
2.25.1

