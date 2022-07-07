Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 537D056A1E2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 14:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80AEB112902;
	Thu,  7 Jul 2022 12:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA38E11289D;
 Thu,  7 Jul 2022 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657196633; x=1688732633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SBniOMnQSJfavfDCzGSHttGCH1zHTwsFtj56l9q/YUM=;
 b=SLuEOI4P8YSNSywiBuDrdP2Uwqyc/+4o6h/jcO++PNlrxDZXjA5AhYuS
 vsughTEGgWnMdO3rgYWmcTcVZeDsSPVwbpIlDKnEnNzUIqXJTl1cDE9E/
 7isf71RjmGZW0jCTgIt/KClV1tfHYs0kxToQMY6MOwLJXnH5W3RIjiPdZ
 v2uP4I+bTnQbpYLAWDUqgrfQk1wwKUWJnN0tE2p4A4qIhVHRjdatFw2Nr
 VzbYuFqxet3sOu0Gkq1lvwHEWu2tvk+CM1K5Rq3Ga5U/6WEbntPfKoxJb
 pUluLPVnRZ5T3cxStulZgejXC9jSmc4/ajwn98rNoj5gr7SSeID4lYCPd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="264426309"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="264426309"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 05:23:53 -0700
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="920570157"
Received: from amohindr-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.226.251])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 05:23:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  7 Jul 2022 13:23:36 +0100
Message-Id: <20220707122336.391524-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] Revert "lib/i915: request CPU_ACCESS for
 fb objects"
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 3cf110f8dcd1f4f02cf84339664b413abdaebf7d.

This is too big of a hammer it seems, since we can't really support
flat-CCS with lmem + smem objects, and here adding the flag means we
also attach the smem placement, which seems to break kms_ccs.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 lib/ioctl_wrappers.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
index 7713e78b..09eb3ce7 100644
--- a/lib/ioctl_wrappers.c
+++ b/lib/ioctl_wrappers.c
@@ -635,8 +635,7 @@ uint32_t gem_buffer_create_fb_obj(int fd, uint64_t size)
 	uint32_t handle;
 
 	if (gem_has_lmem(fd))
-		handle = gem_create_with_cpu_access_in_memory_regions(fd, size,
-								      REGION_LMEM(0));
+		handle = gem_create_in_memory_regions(fd, size, REGION_LMEM(0));
 	else
 		handle = gem_create(fd, size);
 
-- 
2.36.1

