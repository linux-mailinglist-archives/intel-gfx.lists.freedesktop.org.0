Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A72F4E650E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 15:26:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667C910E8BF;
	Thu, 24 Mar 2022 14:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3D010E8BB;
 Thu, 24 Mar 2022 14:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648132001; x=1679668001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ykLz4uy2qHCv8w+f8VuX9UwX3gC+ANosLklclpVTgm4=;
 b=ACF29DU/5coz7sKBTjn1U/i0DFVLjLgJg63+S+ecXIRb03m2PMjq6m6I
 0PAS43VlGaWPeQQEUxfXi0kkavsf2B+AEM63zcJ6uH/TFRt9/p3vn8x/J
 EVB2xTXCSGlUyCCRm3YYbvn9/jW+l+pVAyzxJKyicZ0t35bHiF2E8IOOU
 VaV90pcmFK/12GMI3U7hQ7/Cp1WwkjVoSPTYLXAsErfKCWDGmMEsADLLO
 fcn31IKSslSBbtrV/qIZpBryaobKqfJb4wQT1i1EIRc4V+nJZf/SlakK6
 /m7lK9uRFg0edo3xSF/8sUhiAM9lPvUpD2+AlR+2HYic89x9J2SEYTIZX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283249719"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="283249719"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="501409755"
Received: from smurkank-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.102])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:40 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 24 Mar 2022 14:26:18 +0000
Message-Id: <20220324142621.347452-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220324142621.347452-1-matthew.auld@intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/4] test/gem_lmem_swapping: account for
 object rounding
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On DG2 the object size might be rounded when allocating lmem. Make sure
we account for any rounding up.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_lmem_swapping.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 582111dd..193ff370 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -72,7 +72,7 @@ struct object {
 };
 
 static uint32_t create_bo(int i915,
-			  uint64_t size,
+			  uint64_t *size,
 			  struct drm_i915_gem_memory_class_instance *region,
 			  bool do_oom_test)
 {
@@ -80,7 +80,7 @@ static uint32_t create_bo(int i915,
 	int ret;
 
 retry:
-	ret = __gem_create_in_memory_region_list(i915, &handle, &size, region, 1);
+	ret = __gem_create_in_memory_region_list(i915, &handle, size, region, 1);
 	if (do_oom_test && ret == -ENOMEM)
 		goto retry;
 	igt_assert_eq(ret, 0);
@@ -172,7 +172,7 @@ static void __do_evict(int i915,
 
 	__gem_context_set_persistence(i915, 0, false);
 	size = 4096;
-	batch = create_bo(i915, size, region, params->oom_test);
+	batch = create_bo(i915, &size, region, params->oom_test);
 
 	gem_write(i915, batch, 0, &bbe, sizeof(bbe));
 
@@ -199,7 +199,7 @@ static void __do_evict(int i915,
 			params->count = i;
 			break;
 		}
-		obj->handle = create_bo(i915, obj->size, region, params->oom_test);
+		obj->handle = create_bo(i915, &obj->size, region, params->oom_test);
 
 		move_to_lmem(i915, objects + i, 1, batch, engine,
 			     params->oom_test);
@@ -270,7 +270,7 @@ static void fill_params(int i915, struct params *params,
 
 	if (flags & TEST_RANDOM) {
 		params->size.min = 4096;
-		handle = create_bo(i915, params->size.min, &region->region,
+		handle = create_bo(i915, &params->size.min, &region->region,
 				   do_oom_test);
 		gem_close(i915, handle);
 		params->size.max = 2 * size + params->size.min;
-- 
2.34.1

