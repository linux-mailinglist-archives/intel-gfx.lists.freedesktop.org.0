Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916C7BACF1F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 14:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A2810E5A3;
	Tue, 30 Sep 2025 12:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BZ4WISf/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2BD10E5A8;
 Tue, 30 Sep 2025 12:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759236891; x=1790772891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xlUsfGE3bVUmu8eTewY6ka/JW6PO+nVsoqWHmj+axkg=;
 b=BZ4WISf/NaNL3LjZkjN4HdrLvHvi7hXnBrbAYzS9DYD/oA/qOPwF7Dro
 6EKjxoV3bITMhCQxcJAuJeAZj66E/Z0lN9AtG2r1to3QsV2wFO43eD98t
 LQlxowt2zXWjGODhDy99gqqfWlI8IBmOOk5pVgjQ8svNGlxZLxZfypjBw
 voF1IV41ERaGZU/Np7ULSUbDX7c1poA70D76SAEDqeQwKERTz7ZM5Vl49
 IiCv5aAQszoLZQRa3tJz5WcCjuOrlgtYgUVToRFj7QIVgT4cTTrASGSWs
 oWobUPwAhnBEw9yfp2uiIjh0iyuYV00YD6E6wHgvkelM3k+9Smu4YWtqB g==;
X-CSE-ConnectionGUID: nS/c/vMyS/uGHfAQ0PUumA==
X-CSE-MsgGUID: 8al5pg+GSb6O55S2Om0qIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="86934578"
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="86934578"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:51 -0700
X-CSE-ConnectionGUID: srs1ayRMTMi0qbuFX87h1w==
X-CSE-MsgGUID: AqcLe7QkThakNLXSjxJ7vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="209466891"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.244.151])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:49 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 1/3] tests/gem_eio: Adjust for long reset-resume cycle
 on Gen12+
Date: Tue, 30 Sep 2025 14:49:01 +0200
Message-ID: <20250930125430.2323555-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
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
value to be compared against presumed limits.  On most of Gen12+
platforms, the limit of 5 seconds for collecting those results occurs too
short for executing 9 reset-resum cycles.

Raise the limit to 20 seconds, and break the loop as soon as 9 results are
collected.  Also, warn if less than 9 resets have been completed within
the limit instead of silently succeeding despite the check being skipped.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index b65b914faf..b6155c7fc4 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -409,8 +409,10 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
 		 igt_stats_get_median(st)*1e-6,
 		 igt_stats_get_max(st)*1e-6);
 
-	if (st->n_values < 9)
-		return; /* too few for stable median */
+	if (igt_warn_on_f(st->n_values < 9,
+	    "%d resets completed -- less than 9, too few for stable median\n",
+	    st->n_values))
+		return;
 
 	/*
 	 * Older platforms need to reset the display (incl. modeset to off,
@@ -928,7 +930,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
 
 	igt_stats_init(&stats);
-	igt_until_timeout(5) {
+	igt_until_timeout(20) {
 		const intel_ctx_t *ctx = context_create_safe(fd);
 		igt_spin_t *hang;
 		unsigned int i;
@@ -977,6 +979,9 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
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

