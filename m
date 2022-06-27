Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A3355BAF9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 18:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4700910E675;
	Mon, 27 Jun 2022 16:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A7710E409;
 Mon, 27 Jun 2022 16:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656346224; x=1687882224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q6WhEMVC33IrkujEPGv+2dOI1BpZTNdNLEd2UQjcRpg=;
 b=iSa9zp++H4tY+Bc0HX/3YPAA2kAmDLHTZwVlwAA97zeuzf9yNRwy4wJR
 O2BbbncQfCuelPvfThwiUubcD/RZyphImb2BlG97rLtyu4vxFl+HA2OUt
 ui1hdUkTBWY5IPuAgsppzOxl/AtWMEgWyNmxWvytT5Y6kcE1bxfVbZ3WN
 jiukScnLNpJAFkTm/qSc01IDt4Ikl8rQzK0rDtnTaliRkCdYmw186hygI
 2oZHmZmhLROr0ixyqIG27JBHC00I2DQRFIiFVkk6ly99j511tw0NXzXTs
 OC8LT5UhoNHCnHDSa2PeqM4Z5R+I+O9hkLzPW4EBjdq+f3e63Bnpp0rWU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="367797714"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="367797714"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:10:24 -0700
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="692677369"
Received: from lnsoh-mobl2.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.148.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:10:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 27 Jun 2022 17:10:03 +0100
Message-Id: <20220627161004.70153-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220627161004.70153-1-matthew.auld@intel.com>
References: <20220627161004.70153-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/3] tests/i915/kms_mmap_write_crc: handle
 missing gem_get_caching()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The kernel is meant to force the caching level for the object to
CACHE_NONE or CACHE_WT when first scanning out the object, since the
display engine is not coherent (assuming userspace hasn't already done
this). On discrete we no longer support set/get_caching, but we can only
do the scanout from lmem, which can only be mapped as WC and so should
always be coherent for scanout. Adjust the test and ensure it still
passes as expected.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5303
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 tests/i915/kms_mmap_write_crc.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/tests/i915/kms_mmap_write_crc.c b/tests/i915/kms_mmap_write_crc.c
index b17e5fdb..da7312d6 100644
--- a/tests/i915/kms_mmap_write_crc.c
+++ b/tests/i915/kms_mmap_write_crc.c
@@ -78,7 +78,6 @@ static void test(data_t *data)
 	drmModeModeInfo *mode;
 	cairo_t *cr;
 	char *ptr;
-	uint32_t caching;
 	void *buf;
 	igt_crc_t crc;
 
@@ -102,9 +101,13 @@ static void test(data_t *data)
 	igt_plane_set_fb(data->primary, &data->fb[0]);
 	igt_display_commit(display);
 
-	/* make sure caching mode has become UC/WT */
-	caching = gem_get_caching(data->drm_fd, fb->gem_handle);
-	igt_assert(caching == I915_CACHING_NONE || caching == I915_CACHING_DISPLAY);
+	if (!gem_has_lmem(data->drm_fd)) {
+		uint32_t caching;
+
+		/* make sure caching mode has become UC/WT */
+		caching = gem_get_caching(data->drm_fd, fb->gem_handle);
+		igt_assert(caching == I915_CACHING_NONE || caching == I915_CACHING_DISPLAY);
+	}
 
 	/*
 	 * firstly demonstrate the need for DMA_BUF_SYNC_START ("begin_cpu_access")
-- 
2.36.1

