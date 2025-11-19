Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C476CC6E29D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 12:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14DE10E5DD;
	Wed, 19 Nov 2025 11:13:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FSWfNE5u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1796210E5DB;
 Wed, 19 Nov 2025 11:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763550794; x=1795086794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b9cWbd+kqWkvLARBiX30zPlg6sKqSAmBriXlhUvklR8=;
 b=FSWfNE5ulQcZaR4qlG/P69qZ8ZU7Jkp+T1NRCPmkWG1dKsSHWvsl7p7K
 Y78nsRMUHRN11/ZUc2oktv+ca5G2QUCXwjNQ8iV7OCShpBbOnEMlw/rrc
 bgcqOev98ecKyqiixj2y3G0/t/30QzIYrK1LpvS/ysUeYX18D6sG9bgG2
 mOWhCXJGcjx8wQ35PYy/RFOmHq60UNvcOR+5qfWcFmNXFwSuCDkTOFDwD
 q/sr2JnDF9p3KVQ0O/kcHqZ5gWfNnx4oCJCZ/tJA5IcwS1UkdRa+tUlM+
 e+ykv8/CESTHcqo6gBmCob6bwXFCvqmH6Cp1Il5KfLMQqv4UHgOizDXpO A==;
X-CSE-ConnectionGUID: W+erjr3BRJO9IGSDtPQf0w==
X-CSE-MsgGUID: eMdzhv/SQ/m6p4tNAlC0Tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88241621"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="88241621"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:14 -0800
X-CSE-ConnectionGUID: TVk6LYLBSDSpJPT4v5CrkA==
X-CSE-MsgGUID: nqHwNjMpQuaY5irBIUmMEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191816413"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.203])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:12 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 1/3] tests/intel/gem_eio: Fix mistyped symbol
Date: Wed, 19 Nov 2025 11:57:20 +0100
Message-ID: <20251119111205.1297907-6-janusz.krzysztofik@linux.intel.com>
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

Commit 4e6a5de3fcb75 ("tests/intel/gem_eio: Try harder to measure median
resume time") unfortunately introduced a symbol with a spelling error.
Fix it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 3544cb1fb3..b9c4cdc436 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -410,10 +410,10 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
 		 igt_stats_get_median(st)*1e-6,
 		 igt_stats_get_max(st)*1e-6);
 
-#define NUMER_OF_MEASURED_CYCLES_NEEDED 9
-	igt_require_f(st->n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED,
+#define NUMBER_OF_MEASURED_CYCLES_NEEDED 9
+	igt_require_f(st->n_values >= NUMBER_OF_MEASURED_CYCLES_NEEDED,
 		      "at least %d completed resets are needed for stable median calculation, %d is too few\n",
-		      NUMER_OF_MEASURED_CYCLES_NEEDED, st->n_values);
+		      NUMBER_OF_MEASURED_CYCLES_NEEDED, st->n_values);
 
 	/*
 	 * Older platforms need to reset the display (incl. modeset to off,
@@ -981,7 +981,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 		igt_spin_free(fd, hang);
 		intel_ctx_destroy(fd, ctx);
 
-		if (stats.n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED)
+		if (stats.n_values >= NUMBER_OF_MEASURED_CYCLES_NEEDED)
 			break;
 	}
 	check_wait_elapsed(name, fd, &stats);
-- 
2.51.1

