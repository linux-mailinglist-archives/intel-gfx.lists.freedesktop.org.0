Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF134F66FB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 19:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FED610E244;
	Wed,  6 Apr 2022 17:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B7E10E244
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 17:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649266236; x=1680802236;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hdYMt+jpWOwT+qFTdkiq9JLf7NyiJvkhyxtjwQ4N8ps=;
 b=HZGoEfcPj58ikOHdQemGd9fYx/bRBuoTyW5ZOnm9XYTkXYMyEfrzBx1Y
 /TAOvWxIposCJCeQb+ypBnufcVzltGxfLjMiuzqOX3XbwIj9Wvw8ZA2fF
 wdpIr40i0FDnsjfchsn8oT+OcuCLMpX6/gdCbe6Td2MYktHsaC8vPdwq1
 1QKXS26HtUHnwbs2Xa4KHm1jEXBW6qf8m7Z93j60lRsYGTOYeBHCtdChs
 ZmzzaEjnGYMb7AjxpW0HK0lpUeaZ/It0poKpX66AUhJLeSjlvgf4O5eEJ
 NEYuQ2LNUEBs4xtAPrWCtj2AEL28fCc+bLk4SQC6T7isyC48JX3AG3W43 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="241043878"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="241043878"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:30:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="722607629"
Received: from amoneill-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.22])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:30:33 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Apr 2022 18:30:23 +0100
Message-Id: <20220406173023.1039107-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: handle more rounding
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

Ensure we account for potential rounding up of lmem objects.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5485
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_migrate.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index c9c4f391c5cc..cca3b0db83c9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -621,13 +621,15 @@ static int perf_copy_blt(void *arg)
 
 	for (i = 0; i < ARRAY_SIZE(sizes); i++) {
 		struct drm_i915_gem_object *src, *dst;
+		size_t sz;
 		int err;
 
 		src = create_init_lmem_internal(gt, sizes[i], true);
 		if (IS_ERR(src))
 			return PTR_ERR(src);
 
-		dst = create_init_lmem_internal(gt, sizes[i], false);
+		sz = src->base.size;
+		dst = create_init_lmem_internal(gt, sz, false);
 		if (IS_ERR(dst)) {
 			err = PTR_ERR(dst);
 			goto err_src;
@@ -640,7 +642,7 @@ static int perf_copy_blt(void *arg)
 				      dst->mm.pages->sgl,
 				      I915_CACHE_NONE,
 				      i915_gem_object_is_lmem(dst),
-				      sizes[i]);
+				      sz);
 
 		i915_gem_object_unlock(dst);
 		i915_gem_object_put(dst);
-- 
2.34.1

