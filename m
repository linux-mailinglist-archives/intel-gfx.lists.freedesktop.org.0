Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB676BC13E3
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 13:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C17510E657;
	Tue,  7 Oct 2025 11:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OmHhrF5x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE4810E63B;
 Tue,  7 Oct 2025 11:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759837212; x=1791373212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=78U8uV5xtpIlz0DgeVhCPkJ7Ori77y+wXLu5bLMhaU0=;
 b=OmHhrF5xF5p0eSt2yPiBYWbQ6iHIVpqYYy4lvabE4D29P7xbirR+OBxo
 PETdFV6w60Ta9QtxmnzFPSeCy6vjUz00rlfxvaC+ocS05BPjSCpckCtyY
 DVOpweq1jA9ZgmXSNFzZSXb0u3pmsfFG+bT92rLK/OA7MU3Q5xNqORjEz
 7EwRUpTni9u7SZa06FqXTaw+t0n+QOf9f+MLihjr6bNsyEqyzUt0zgHCy
 BUeKELs/AOpsN+1uc282UxWadsy/aomI9N89jox6L9IepGfRNZ2Op8QGh
 O6xrDlcfmFtAphapLh4pnSGrce3PBCNGxrW5GXfvAejydaccTaCbC0sTm g==;
X-CSE-ConnectionGUID: oP1jpEp7S0WOa16mLXXwXw==
X-CSE-MsgGUID: tqnJsGcPQG22io2+qiIadg==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73442898"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73442898"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:12 -0700
X-CSE-ConnectionGUID: SXNpAO6gRLa2vgNrTp5LQw==
X-CSE-MsgGUID: D6ok0p2BQS6D/JDQlYLTtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184161223"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.225])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:11 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v2 2/5] tests/gem_eio: Try harder to measure median
 resume time
Date: Tue,  7 Oct 2025 13:38:25 +0200
Message-ID: <20251007113910.3336564-9-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
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

Subtests that measure time of resume after engine reset require results
from at least 9 reset-resume cycles for reasonable calculation of a median
value to be compared against a presumed limit.  On most Gen12+ platforms,
as well as on some older ones like JSL, CHV, ILK or ELK, the current limit
of 5 seconds for collecting those results occurs too short.

Raise the limit to an empirically determined value of 20 seconds and break
the loop as soon as 9 results are collected.

v2: Split out a change in handling of not enough measurements to a
    separate patch (Kamil),
  - reword commit message to be more distinct from other patches in
    series (Kamil),
  - reword commit message and description so they no longer state the
    scope of the issue is limited to Gen12+, and list other (non-Gen12+)
    platforms found also affected.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 0a00ef026e..79dcef8fa6 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -929,7 +929,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
 
 	igt_stats_init(&stats);
-	igt_until_timeout(5) {
+	igt_until_timeout(20) {
 		const intel_ctx_t *ctx = context_create_safe(fd);
 		igt_spin_t *hang;
 		unsigned int i;
@@ -978,6 +978,9 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 		gem_sync(fd, obj.handle);
 		igt_spin_free(fd, hang);
 		intel_ctx_destroy(fd, ctx);
+
+		if (stats.n_values > 8)
+			break;
 	}
 	check_wait_elapsed(name, fd, &stats);
 	igt_stats_fini(&stats);
-- 
2.51.0

