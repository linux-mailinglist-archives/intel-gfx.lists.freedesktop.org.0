Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0259600AE1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 11:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D2610ED2B;
	Mon, 17 Oct 2022 09:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C9610ED12;
 Mon, 17 Oct 2022 09:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665999168; x=1697535168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KW/vA0zXivrgHf+ZcWE46VMbBD0S6IoDScJkHoJEmxA=;
 b=BaZt/XIxFWbxluyydED/EOzxWFV1nuSHg3lFe+2xXBrvc0X6Y2MPZTZn
 b9ISGTSFA+yWOrmEf60LUA2PV0EdH1BfP88jUYYgz58mG307aSswsvQ9+
 06O19IXRnHQUFU5KqGtXCNA3ujoKMtSUD9bTcmK/jjuDA6t3J9rQxobLd
 fbjQjvmmGFu+UDnO8xkatMHIBuBsZ2xWgKFZIlh7E9DuLZVJnzG58Jd07
 AfYSWh01H10ToNdJ3Glm0c6dGvARQ9+VviuhsJwFzAO2BKyN1Xku6dFga
 zjSAasr2HyEN9hyoEyUPubzHk8r3OawnAUqvyeW6jF3k+ecJZipVrx/MS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="286142672"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="286142672"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 02:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="717431302"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="717431302"
Received: from liuzhao-optiplex-7080.sh.intel.com ([10.239.160.132])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 02:32:44 -0700
From: Zhao Liu <zhao1.liu@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Mon, 17 Oct 2022 17:37:22 +0800
Message-Id: <20221017093726.2070674-7-zhao1.liu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221017093726.2070674-1-zhao1.liu@linux.intel.com>
References: <20221017093726.2070674-1-zhao1.liu@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Use kmap_local_page() in
 gem/selftests/i915_gem_context.c
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
Cc: "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>, Zhao Liu <zhao1.liu@intel.com>,
 Zhenyu Wang <zhenyu.z.wang@intel.com>, Dave Hansen <dave.hansen@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Zhao Liu <zhao1.liu@intel.com>

The use of kmap_atomic() is being deprecated in favor of
kmap_local_page()[1].

The main difference between atomic and local mappings is that local
mappings doesn't disable page faults or preemption.

In drm/i915/gem/selftests/i915_gem_context.c, functions cpu_fill() and
cpu_check() mainly uses mapping to flush cache and check/assign the
value.

There're 2 reasons why cpu_fill() and cpu_check() don't need to disable
pagefaults and preemption for mapping:

1. The flush operation is safe for CPU hotplug when preemption is not
disabled. cpu_fill() and cpu_check() call drm_clflush_virt_range() to
use CLFLUSHOPT or WBINVD to flush. Since CLFLUSHOPT is global on x86
and WBINVD is called on each cpu in drm_clflush_virt_range(), the flush
operation is global and any issue with cpu's being added or removed
can be handled safely.

2. Any context switch caused by preemption or sleep (pagefault may
cause sleep) doesn't affect the validity of local mapping.

Therefore, cpu_fill() and cpu_check() are functions where the use of
kmap_local_page() in place of kmap_atomic() is correctly suited.

Convert the calls of kmap_atomic() / kunmap_atomic() to
kmap_local_page() / kunmap_local().

[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

Suggested-by: Dave Hansen <dave.hansen@intel.com>
Suggested-by: Ira Weiny <ira.weiny@intel.com>
Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Signed-off-by: Zhao Liu <zhao1.liu@intel.com>
---
Suggested by credits:
  Dave: Referred to his explanation about cache flush.
  Ira: Referred to his task document, review comments and explanation about
       cache flush.
  Fabio: Referred to his boiler plate commit message.
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index c6ad67b90e8a..736337f23f78 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -466,12 +466,12 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 	for (n = 0; n < real_page_count(obj); n++) {
 		u32 *map;
 
-		map = kmap_atomic(i915_gem_object_get_page(obj, n));
+		map = kmap_local_page(i915_gem_object_get_page(obj, n));
 		for (m = 0; m < DW_PER_PAGE; m++)
 			map[m] = value;
 		if (!has_llc)
 			drm_clflush_virt_range(map, PAGE_SIZE);
-		kunmap_atomic(map);
+		kunmap_local(map);
 	}
 
 	i915_gem_object_finish_access(obj);
@@ -496,7 +496,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 	for (n = 0; n < real_page_count(obj); n++) {
 		u32 *map;
 
-		map = kmap_atomic(i915_gem_object_get_page(obj, n));
+		map = kmap_local_page(i915_gem_object_get_page(obj, n));
 		if (needs_flush & CLFLUSH_BEFORE)
 			drm_clflush_virt_range(map, PAGE_SIZE);
 
@@ -522,7 +522,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 		}
 
 out_unmap:
-		kunmap_atomic(map);
+		kunmap_local(map);
 		if (err)
 			break;
 	}
-- 
2.34.1

