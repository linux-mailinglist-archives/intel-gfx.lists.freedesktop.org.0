Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EEA4B0196
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 01:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4A310E6DF;
	Thu, 10 Feb 2022 00:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D47710E172;
 Thu, 10 Feb 2022 00:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644453552; x=1675989552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eTz887wyBv7NfdeyCIHg+z/qcdhoHBXI+e4os8TlW7Y=;
 b=cDCcsJmCZ81p+pNZiicwtDOasS3k7/1aDb+drD8UMC/AlXTY0UbtiFwi
 iZ20N0htkITJoEuKRFoMuqJCfUKRF9YPFkwpfu+pPcC1wNi8yuAP700BP
 XW5BGEhKPcMCXYYCA9QPlUiPMkrvTl1vTZFygo7ptMuSDsL95ngXSxqo0
 3ipgwZdNv3IfEcVx/iHpkIXW+Mg7xsHJH7L1no4HqLHekN1V9pISpLtsV
 Cbzyn6twqv33omJX4VcOiXOqrAwAdD9q7HenrbawKtFbNhMf0CSjCH5UX
 jFlSqcG4+wflWSjyxtYAmEHe74A0N09gxTAcEPmItfDaOzbVThI4C2M86 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="230023278"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="230023278"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 16:39:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="482544751"
Received: from sroy1-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.85.186])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 16:39:10 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 16:38:59 -0800
Message-Id: <20220210003904.1055898-2-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220210003904.1055898-1-michael.cheng@intel.com>
References: <20220210003904.1055898-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 1/6] drm: Add arch arm64 for
 drm_clflush_virt_range
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

Add arm64 support for drm_clflush_virt_range. dcache_clean_inval_poc
performs a flush by first performing a clean, follow by an invalidation
operation.

v2 (Michael Cheng): Use correct macro for cleaning and invalidation the
		    dcache.

v3 (Michael Cheng): Remove ifdef for asm/cacheflush.h

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/drm_cache.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
index f19d9acbe959..f167bc19afb9 100644
--- a/drivers/gpu/drm/drm_cache.c
+++ b/drivers/gpu/drm/drm_cache.c
@@ -28,6 +28,7 @@
  * Authors: Thomas Hellström <thomas-at-tungstengraphics-dot-com>
  */
 
+#include <asm/cacheflush.h>
 #include <linux/dma-buf-map.h>
 #include <linux/export.h>
 #include <linux/highmem.h>
@@ -176,6 +177,10 @@ drm_clflush_virt_range(void *addr, unsigned long length)
 
 	if (wbinvd_on_all_cpus())
 		pr_err("Timed out waiting for cache flush\n");
+
+#elif defined(CONFIG_ARM64)
+	void *end = addr + length;
+	dcache_clean_inval_poc((unsigned long)addr, (unsigned long)end);
 #else
 	pr_err("Architecture has no drm_cache.c support\n");
 	WARN_ON_ONCE(1);
-- 
2.25.1

