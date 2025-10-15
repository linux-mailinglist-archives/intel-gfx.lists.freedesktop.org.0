Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B44BDE86F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A9910E7B0;
	Wed, 15 Oct 2025 12:44:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWKZiIEv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79C3E10E7B0;
 Wed, 15 Oct 2025 12:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532283; x=1792068283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N+xQY5kI+WbXIcJ9o1ijdWIPmySlo1uOtUEzhlE+N5I=;
 b=hWKZiIEvvfqHp7PlMT16vsVv7I4Gbo8cz8b/ArozO7yZmxdYP7dsJQew
 CUKrf4Nr4n/KbjAxIW5TOAjXqmdtycvX/D9ic10/a5kVU0ZC7+K6SPtaP
 qZ3nrda4x75DPsi/YIm5XsnJtz6seAlQj6/hUQ2VTHexS/nF1uQ59mTke
 XIRRMX3MDbR53CWgPEUukxbdK+J1GaUibVfrjZPIQ4IFL5W7YCKFj3U5e
 gbdroqdtfx8VJkIlHpFc/rXFVzFPyZD+1YCUfMIS4TXu76PNpAYj0lWJL
 UozXHs49VPF6MYmun5RmUh6d58N1tHT38GF2B2zIhwDj2gZphdn1kKPU2 A==;
X-CSE-ConnectionGUID: iH2oKl5AS1SzZlrsIgOwow==
X-CSE-MsgGUID: HXfX6WcwTm+wG8q/Yh7CQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62601558"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62601558"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:43 -0700
X-CSE-ConnectionGUID: RoeCGfX3R0C0P2BShHCO6A==
X-CSE-MsgGUID: aIkS5cbcR+GXKEqcdDEe4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181384938"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:42 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v3 2/6] tests/gem_eio: Try harder to measure median
 resume time
Date: Wed, 15 Oct 2025 14:39:20 +0200
Message-ID: <20251015124419.66460-10-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
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

v3: Use NUMER_OF_MEASURED_CYCLES_NEEDED symbol (Kamil).
v2: Split out a change in handling of not enough measurements to a
    separate patch (Kamil),
  - reword commit message to be more distinct from other patches in
    series (Kamil),
  - reword commit message and description so they no longer state the
    scope of the issue is limited to Gen12+, and list other (non-Gen12+)
    platforms found also affected.

Cc: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 35291e759d..3b7a6bd209 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -930,7 +930,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
 
 	igt_stats_init(&stats);
-	igt_until_timeout(5) {
+	igt_until_timeout(20) {
 		const intel_ctx_t *ctx = context_create_safe(fd);
 		igt_spin_t *hang;
 		unsigned int i;
@@ -979,6 +979,9 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 		gem_sync(fd, obj.handle);
 		igt_spin_free(fd, hang);
 		intel_ctx_destroy(fd, ctx);
+
+		if (stats.n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED)
+			break;
 	}
 	check_wait_elapsed(name, fd, &stats);
 	igt_stats_fini(&stats);
-- 
2.51.0

