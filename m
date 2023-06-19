Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 900BA734E42
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 10:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07D310E1C3;
	Mon, 19 Jun 2023 08:44:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D828910E1C3
 for <Intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 08:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687164270; x=1718700270;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s7d9iWUrgMtt0+a8d8waWWS1Up4WlpZ36wpWKvYElCI=;
 b=gNqjJ8oGFxJCPQcYxKGiuDxkKqxcIskLK1kBm/Pk45BdzvNzi9jB5jJ8
 uvFh8QhmqtABs7X4lGzEk4HstXJpO/SzjNhDzaO4ScBpxqvi/A4Y8J50h
 ueIu/uHMRpKI2bJYO/LdtghCqd+ViWDdOJhJdZi0U08l/CMvgq6iOBumh
 8aVH1E7tMjPww+ZR3e5aAq7Yy4cjkiD1w25EcmwZ/z1+rx/P/Aty9xi76
 tH4Vvx8a9bVt5Qm+HWNSUaynbsHRXy5VQJM/9ueZYADMZX5YdYfXwXyti
 l19h3NMK8HZF+sS4XtHwnyv80IhrOpb5lAUfct6zNyf/ppf6KNMcWbKQl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="344327737"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="344327737"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:44:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="716785115"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="716785115"
Received: from acarew-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.214.207])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:44:29 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jun 2023 09:44:23 +0100
Message-Id: <20230619084423.1971233-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915: Replace kmap() with kmap_local_page()
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

From: Sumitra Sharma <sumitraartsy@gmail.com>

kmap() has been deprecated in favor of the kmap_local_page()
due to high cost, restricted mapping space, the overhead of a
global lock for synchronization, and making the process sleep
in the absence of free slots.

kmap_local_page() is faster than kmap() and offers thread-local
and CPU-local mappings, take pagefaults in a local kmap region
and preserves preemption by saving the mappings of outgoing tasks
and restoring those of the incoming one during a context switch.

The mapping is kept thread local in the function
“i915_vma_coredump_create” in i915_gpu_error.c

Therefore, replace kmap() with kmap_local_page().

Suggested-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: Sumitra Sharma <sumitraartsy@gmail.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index ec368e700235..4749f99e6320 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1173,9 +1173,9 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 
 			drm_clflush_pages(&page, 1);
 
-			s = kmap(page);
+			s = kmap_local_page(page);
 			ret = compress_page(compress, s, dst, false);
-			kunmap(page);
+			kunmap_local(s);
 
 			drm_clflush_pages(&page, 1);
 
-- 
2.39.2

