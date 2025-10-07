Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B5FBC13E0
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 13:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D9510E677;
	Tue,  7 Oct 2025 11:40:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIoxZrXO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F1610E63B;
 Tue,  7 Oct 2025 11:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759837210; x=1791373210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XC5s5JnQWljcNdJrKzrYrP0DhPYIyQ7V5Hbt1kSNndg=;
 b=IIoxZrXOCTe62pON7SqMlGWUWJq8FdMFCPPHDhTu10pGiVLgiMmmaR1I
 Xt/VXVB0plWWhrSbrXG8bW53a9iyZE2fZSH318lpGjI13DQNwGKNwE+8B
 iOjHiIYYeby6Eu24HeIym17n+YVIfx+SxRgpgTH1K5/k6amRdoCwzg1L4
 tdrzYah3peAgzP9YE3UIxKNvkyA/PghewU2zYRHUcf8BpWgYs13xAfNG3
 jHg8SaVKs/Z+AeZtUCfBgA5Qz46Bc+t5k6DTtlOHxgLtPD55t96yazX0Q
 BdRareOm73xVqyUzDmtI0KhLV+80T8pJqxlq612mTC0k+fRg9QNXDB8tz A==;
X-CSE-ConnectionGUID: rHkXuWHuSDGXCsmtPikoiA==
X-CSE-MsgGUID: an3LzwS5TM++rSc6eby7PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73442894"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73442894"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:10 -0700
X-CSE-ConnectionGUID: ypx2IAKgRxOj1E2hMME18w==
X-CSE-MsgGUID: pw63lmZ/SGyApPRYF+B/4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184161211"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.225])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:08 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v2 1/5] tests/gem_eio: Skip on too few reset-resume
 cycles
Date: Tue,  7 Oct 2025 13:38:24 +0200
Message-ID: <20251007113910.3336564-8-janusz.krzysztofik@linux.intel.com>
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

Subtests that measure time of resume after engine reset compare a median
value calculated from the measurements against a presumed limit and fail
if the limit has been exceeded.  However, if it occurs not possible to
collect enough measurements required for stable median value calculation,
that condition is now ignored and success is reported, as if the measured
time fit below the limit.

Skip if not able to collect sufficient number of time measurements.  CI
results from slow platforms that always skip may be handled as expected
skips.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index b65b914faf..0a00ef026e 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -409,8 +409,9 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
 		 igt_stats_get_median(st)*1e-6,
 		 igt_stats_get_max(st)*1e-6);
 
-	if (st->n_values < 9)
-		return; /* too few for stable median */
+	igt_require_f(st->n_values > 8,
+		      "at least 9 resets completed for stable median calculation, %d is too few\n",
+		      st->n_values);
 
 	/*
 	 * Older platforms need to reset the display (incl. modeset to off,
-- 
2.51.0

