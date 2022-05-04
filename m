Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5605A51A34C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9F910E741;
	Wed,  4 May 2022 15:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D1710E741;
 Wed,  4 May 2022 15:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676950; x=1683212950;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=STtjQNDZjayQFfG/F+Hc2OqXgt30EINDHIKS6AVLW8U=;
 b=Bf3z0VlGSKbCLH94SgdcGuwItaBElDB9ojo3deP6/nPfDZ6aerl78q1d
 Fj9mnkDfOnHYreuCgWedh78D5i7GsASN8LyEPbYyicGK2LhuIEsda0n2E
 GnEQjZEtEZ+Yjz1+9Lc8j49GWPjISAi8nfrdvGPsvZPCFZkIf+BIX84Mt
 YBiwt5gaRl6PC1zf8YeF+SCFjCshmHyVhI+Ni8SKKB5LVq5NcWJak1V64
 Bn28jiSD/V3RHere89e+Pw9MVnkQuaYEF6PtCaXbaWTaO5HrgRjNnRHOZ
 WeHyMJQyhSAIXy+IgMLbKukuaaQ9uF4QKx8qdyc7TgzoKYZTzgKSU1qfQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="255259444"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="255259444"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:09:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="562763380"
Received: from ffagan-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.26.131])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:09:06 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  4 May 2022 16:08:44 +0100
Message-Id: <20220504150845.158789-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/2] tests/i915/gem_caching: handle
 discrete
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

Test should still be valid, even if we can't explicitly control the PTE
caching bits, like on discrete, where the caching should already be
enabled by default for system memory objects.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4873
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_caching.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tests/i915/gem_caching.c b/tests/i915/gem_caching.c
index 4e844952..eb0170ab 100644
--- a/tests/i915/gem_caching.c
+++ b/tests/i915/gem_caching.c
@@ -147,7 +147,8 @@ igt_main
 
 		igt_require_gem(data.fd);
 		gem_require_blitter(data.fd);
-		gem_require_caching(data.fd);
+		if (!gem_has_lmem(data.fd))
+			gem_require_caching(data.fd);
 
 		data.devid = intel_get_drm_devid(data.fd);
 		if (IS_GEN2(data.devid)) /* chipset only handles cached -> uncached */
@@ -162,7 +163,8 @@ igt_main
 		scratch_buf = intel_buf_create(data.bops, BO_SIZE/4, 1,
 					       32, 0, I915_TILING_NONE, 0);
 
-		gem_set_caching(data.fd, scratch_buf->handle, 1);
+		if (!gem_has_lmem(data.fd))
+			gem_set_caching(data.fd, scratch_buf->handle, 1);
 
 		staging_buf = intel_buf_create(data.bops, BO_SIZE/4, 1,
 					       32, 0, I915_TILING_NONE, 0);
-- 
2.34.1

