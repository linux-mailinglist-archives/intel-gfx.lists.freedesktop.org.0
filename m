Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFF1BDE86C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA86D10E7AD;
	Wed, 15 Oct 2025 12:44:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NDTtlr5x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF7A10E7AD;
 Wed, 15 Oct 2025 12:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532281; x=1792068281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Jgr636DTcJs2cRTtSyKveKOxwgUBAIRwVjcJW/L9q4=;
 b=NDTtlr5xlWTnGd6+DAXz1lQrlBNy1lBH6NCiNT+an4k8RJaDvNVuUhpv
 QpEgK7LGgDoasaOct0UdCinBAoN/g7NHDV1twRBVdrwM5FUDyF10Ydj0O
 YRAiZO1q92L+Dtfe87MfMhQtTmpWWMZlnOH9mFThz/u6DSBfVXZCWi5qs
 7yBmaUxLIgw/WPflqQKx8xUiJWpUyRg/cQLR0LWvSyu6r6RPbZGTFq6G6
 5BpeXk+IAnssFPzc/0SVfAJE+JzOl+xNi3tGPMf4hIv5ERq9560W378QC
 1Kq3MHlSMu3xyUEca4MTieQ8Gpnehyu6JS/59v0o2mJ2Ha6IcmC/D0yaE Q==;
X-CSE-ConnectionGUID: NAJzZ4siQZuCvW5UgeDmlQ==
X-CSE-MsgGUID: zcbl/ZmNQ16AFRKhg3DK/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62601556"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62601556"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:41 -0700
X-CSE-ConnectionGUID: +jS3oE7oR7yj7Fn2stNHDg==
X-CSE-MsgGUID: zpim8IBJRKCau62868Pbsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181384930"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:39 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v3 1/6] tests/gem_eio: Skip on too few reset-resume
 cycles
Date: Wed, 15 Oct 2025 14:39:19 +0200
Message-ID: <20251015124419.66460-9-janusz.krzysztofik@linux.intel.com>
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

Subtests that measure time of resume after engine reset compare a median
value calculated from the measurements against a presumed limit and fail
if the limit has been exceeded.  However, if it occurs not possible to
collect enough measurements required for stable median value calculation,
that condition is now ignored and success is reported, as if the measured
time fit below the limit.

Skip if not able to collect sufficient number of time measurements.  CI
results from slow platforms that always skip may be handled as expected
skips.

v3: Use a symbol for minimum number of measurements (Kamil),
  - reword skip message for its better readability (Kamil).

Cc: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index b65b914faf..35291e759d 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -409,8 +409,10 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
 		 igt_stats_get_median(st)*1e-6,
 		 igt_stats_get_max(st)*1e-6);
 
-	if (st->n_values < 9)
-		return; /* too few for stable median */
+#define NUMER_OF_MEASURED_CYCLES_NEEDED 9
+	igt_require_f(st->n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED,
+		      "at least %d completed resets are needed for stable median calculation, %d is too few\n",
+		      NUMER_OF_MEASURED_CYCLES_NEEDED, st->n_values);
 
 	/*
 	 * Older platforms need to reset the display (incl. modeset to off,
-- 
2.51.0

