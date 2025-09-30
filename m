Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F731BACF22
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 14:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADB210E5AE;
	Tue, 30 Sep 2025 12:54:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxjdkuYD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA3B10E5A8;
 Tue, 30 Sep 2025 12:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759236893; x=1790772893;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e5tZZKulJisyASpkmf23mVILGYplF94tRcB7c/Z89TE=;
 b=GxjdkuYDM1jMGL2+ulJJs9eR+LuA23kGRAyW2LJ/i2lAB/7s73lg2xSn
 nno8gn910eNFosSQu0hPMxKBoAoL/MQjbU1/pMKs+W4Xn4jU1hD4kJsmr
 iAEagxwrF+kTbFTHao8qnLKaUXoYC7hTPP7qwFdkfsytqW/49DEH9b3Oo
 xO+rX7t8igtNj/KYizQvRuLQrfxzFGn+Q2lNRfGrFGvUIgtUx8RTc0TDC
 uGGaWbwjmlLZBQBSwDCeM2bXT508W8gf9CKPz+h8e6nyVLEDd/h7417if
 McIhCJoIaXIlrdDquS+xGN2hD1/VS5Lp9hC1Q8msGnmNM2Vav47mTT/kW w==;
X-CSE-ConnectionGUID: iFbeC2wJT3O6p4+Wj8jMUA==
X-CSE-MsgGUID: v7mglGUTSB+quVQocMcyZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="86934586"
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="86934586"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:53 -0700
X-CSE-ConnectionGUID: 4PYDrDTHQAuxfU5FF3koiA==
X-CSE-MsgGUID: FCa2QAI3QOSZTtiB8IZhvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="209466893"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.244.151])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:50 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 2/3] tests/gem_eio: Adjust for slow resume after reset
 on Gen12+
Date: Tue, 30 Sep 2025 14:49:02 +0200
Message-ID: <20250930125430.2323555-7-janusz.krzysztofik@linux.intel.com>
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

Upstream CI results from kms, reset-stress and unwedge-stress subtests of
igt@gem_eio show GPU resume after reset noticeably slower when running on
some Gen12+ platforms.  Since we think that's hardware specific and there
is nothing we can do about that at the i915 driver level, relax the test
expectations for Gen12+, similar to Gen5-.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index b6155c7fc4..5b0925a8c6 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -419,7 +419,7 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
 	 * modeset back on) around resets, so may take a lot longer.
 	 */
 	limit = 250e6;
-	if (intel_gen(intel_get_drm_devid(fd)) < 5)
+	if (intel_gen(intel_get_drm_devid(fd)) < 5 || intel_gen(intel_get_drm_devid(fd)) > 11)
 		limit += 300e6; /* guestimate for 2x worstcase modeset */
 
 	med = igt_stats_get_median(st);
-- 
2.51.0

