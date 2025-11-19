Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EBBC6E2A7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 12:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2383910E5E8;
	Wed, 19 Nov 2025 11:13:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aat0fJ4W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4E010E5DE;
 Wed, 19 Nov 2025 11:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763550796; x=1795086796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4y8t/uHHhgcqUFS20O7driq4UDwMNE8L/DtNngGFgT8=;
 b=aat0fJ4WYmj3iz+4DUA6olXfzfAd/7bXaQlie2HEbpE1fI6jQGcKKj7b
 D5oFMN4qGZ1Ev+NGaQMCuRH4p/1Zz0ygfJXIaJf+oMPO31QXzXQUPwFbs
 Wx28FAPxoNMeTI58/N8zOD7ZyFBSh3f+sVrNKFrg/I2Bu7e4i31TwwK74
 TMg9Cp4aEV9PU4hFxgrlbhZl6iUTyH0rqkixrJy0HQ9T6I2UKe32csaTm
 jDgs+1qsGefi4H9iizR3n2tFdjshvBAmC120AEPG6gn6NtVn1078GrdVC
 qT0jDuSCAG2uFnSlTmoIcHx3vvU6oyjdXpyRgi6kRU/68mzbWcGI7dseN g==;
X-CSE-ConnectionGUID: yHRDHxp6SAyypwPGm7lOaw==
X-CSE-MsgGUID: FDx7h+LMQ1Oh0HRdeI5SVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88241623"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="88241623"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:16 -0800
X-CSE-ConnectionGUID: g0HgK3ZGQbuiYfyHu7A7Fg==
X-CSE-MsgGUID: RLLsfjx0TcWDs0ebz7qEtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191816425"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.203])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:14 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 2/3] tests/intel/gem_eio: Convert stress subtests to
 dynamic
Date: Wed, 19 Nov 2025 11:57:21 +0100
Message-ID: <20251119111205.1297907-7-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
References: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

These subtests used to succeed silently if we were not able to collect
enough measurements for median value calculation in a predetermined time
period.  We've fixed that issue to some extent by extending those time
periods to a maximum limited only by per-test timeout used in CI, and
returning skips if that still occurs to short.  However, since those
subtests exercise each physical engine one after another, we can limit the
impact of the CI per-test timeout by converting them to dynamic, so each
engine is exercised in a separate dynamic sub-subtest that gets its own
per-test timeout slot.  Go for it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index b9c4cdc436..5981ae4d71 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -995,22 +995,25 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
  */
 static void test_reset_stress(int fd, unsigned int flags)
 {
-	const intel_ctx_t *ctx0 = context_create_safe(fd);
-	uint64_t ahnd = get_reloc_ahnd(fd, ctx0->id);
-
 	for_each_physical_ring(e, fd) {
-		struct intel_execution_engine2 engine;
+		const intel_ctx_t *ctx0 = NULL;
+		uint64_t ahnd = 0;
 
-		engine = gem_eb_flags_to_engine(eb_ring(e));
+		igt_dynamic(e->name) {
+			struct intel_execution_engine2 engine;
 
-		if (gem_engine_can_block_ggtt_binder(fd, &engine))
-			continue;
+			engine = gem_eb_flags_to_engine(eb_ring(e));
+			igt_skip_on(gem_engine_can_block_ggtt_binder(fd, &engine));
 
-		reset_stress(fd, ahnd, ctx0, e->name, eb_ring(e), flags);
-	}
+			ctx0 = context_create_safe(fd);
+			ahnd = get_reloc_ahnd(fd, ctx0->id);
 
-	intel_ctx_destroy(fd, ctx0);
-	put_ahnd(ahnd);
+			reset_stress(fd, ahnd, ctx0, e->name, eb_ring(e), flags);
+		}
+
+		put_ahnd(ahnd);
+		intel_ctx_destroy(fd, ctx0);
+	}
 }
 
 /*
@@ -1154,10 +1157,10 @@ igt_main
 			igt_require(gem_has_contexts(fd));
 		}
 
-		igt_subtest("reset-stress")
+		igt_subtest_with_dynamic("reset-stress")
 			test_reset_stress(fd, 0);
 
-		igt_subtest("unwedge-stress")
+		igt_subtest_with_dynamic("unwedge-stress")
 			test_reset_stress(fd, TEST_WEDGE);
 	}
 
-- 
2.51.1

