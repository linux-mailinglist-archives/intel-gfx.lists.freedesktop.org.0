Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A574EEC0A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 13:10:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C506B10E036;
	Fri,  1 Apr 2022 11:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAFC10E037;
 Fri,  1 Apr 2022 11:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648811401; x=1680347401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NvNJ/rRFOCwq0Q8hyThto+w9VbPqZZF62YpX9J3vs6Q=;
 b=fR1gmdX8cS/DJkWYJoVlb3WydIyEb2FbQQYmeQif1g0/Zn0qXQHwsgh4
 gjnJdlibkRcoKm2boKxJ6A84rTQNzaK2aRx4qDljuwVKgBJVLbNLGSnTO
 dpyK2pDe4a74j/1prwc+XS/Du3m60F11kNsieIM9GSOA0CizPz0JrLXJO
 HMz1Eqh999nI8B35L0rdcBEHqp8uSiS6CHwU/raOOnyPTADh+nLm7E3JY
 5J4fpVSZgDT0yb1pocMhfmlrLnXSpJkQPILQFsdKa2cngRULPAXi0QPQ3
 DaXWSHIK/EAvbUs5En0W3l+UkfTsG7sYY2JgcLEIycMs3m+0Y3I6xPR1Q Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="260286900"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="260286900"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 04:09:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="555433997"
Received: from jasvinde-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.110])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 04:09:11 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  1 Apr 2022 12:09:02 +0100
Message-Id: <20220401110902.446305-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220401110902.446305-1-matthew.auld@intel.com>
References: <20220401110902.446305-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/gem_ctx_engines: handle missing
 set_caching
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

Not supported on discrete. Here the object will already have the GTT
caching bits enabled, and the mapping will be WB, which looks inline
with what the test is expecting here.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4926
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_ctx_engines.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
index de4b822c..19cf9b05 100644
--- a/tests/i915/gem_ctx_engines.c
+++ b/tests/i915/gem_ctx_engines.c
@@ -492,7 +492,8 @@ static void independent(int i915, const intel_ctx_t *base_ctx,
 	param.ctx_id = gem_context_create(i915);
 	gem_context_set_param(i915, &param);
 
-	gem_set_caching(i915, results.handle, I915_CACHING_CACHED);
+	if (!gem_has_lmem(i915))
+		gem_set_caching(i915, results.handle, I915_CACHING_CACHED);
 	map = gem_mmap__cpu(i915, results.handle, 0, 4096, PROT_READ);
 	gem_set_domain(i915, results.handle,
 		       I915_GEM_DOMAIN_CPU, I915_GEM_DOMAIN_CPU);
-- 
2.34.1

