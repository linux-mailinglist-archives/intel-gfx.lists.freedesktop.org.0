Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C92BC13E6
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 13:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EBF910E685;
	Tue,  7 Oct 2025 11:40:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TpXQFMZZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19CF10E66F;
 Tue,  7 Oct 2025 11:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759837215; x=1791373215;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/19kkde42x+AQf89CDTWNxO2IfFUZDKRBEHhtxSjhWI=;
 b=TpXQFMZZDOEpA5pj7JbQNKiwL2PI1QXkr9vs0V/JBxDb37rbBNZ/452W
 zns/vtEyd3jJQWk8Ha7Zga5ZygZwgEDZK8QAAOfLI+R8Vf1Mwv1QvGh1t
 vEA1dWlGuIiRcgrnlbnHMpFhJr1mt2EcKvbHD4MSnXpXaE7sxUDb9f8Hp
 auv+WTbptEl48bOIYg6ld4m4D1LyRlp/4R+phfkpZgOJLtwDW4vbdkP68
 qxgAdfPEsv1eWQdg4w3huZZYewETwATa73QXtDfF5S9Fr6+R1mA4y3JYm
 h2fVLjPAZxVMlxQASZi9e++u9MvvIu2W6KJNZaZBpSefjDK6EB0o2nPU7 Q==;
X-CSE-ConnectionGUID: fw/Okv6LRN+t3ZUcUsnOhg==
X-CSE-MsgGUID: 7NQtcE/RSgaIMN55GdsYow==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73442904"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73442904"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:15 -0700
X-CSE-ConnectionGUID: zktdfDiPT+OF0KEptSJLcA==
X-CSE-MsgGUID: WlSMwGfRRVGCPf0r00wtgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184161240"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.225])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:13 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v2 3/5] tests/gem_eio: Adjust for slow resume after
 reset on Gen12+
Date: Tue,  7 Oct 2025 13:38:26 +0200
Message-ID: <20251007113910.3336564-10-janusz.krzysztofik@linux.intel.com>
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

Upstream CI results from kms, reset-stress and unwedge-stress subtests of
igt@gem_eio show GPU resume after reset noticeably slower when running on
some Gen12+ platforms.  Since we think that's hardware specific and there
is nothing we can do about that at the i915 driver level, relax the test
expectations for Gen12+, similar to Gen5-.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 79dcef8fa6..da6171aee8 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -418,7 +418,7 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
 	 * modeset back on) around resets, so may take a lot longer.
 	 */
 	limit = 250e6;
-	if (intel_gen(intel_get_drm_devid(fd)) < 5)
+	if (intel_gen(intel_get_drm_devid(fd)) < 5 || intel_gen(intel_get_drm_devid(fd)) > 11)
 		limit += 300e6; /* guestimate for 2x worstcase modeset */
 
 	med = igt_stats_get_median(st);
-- 
2.51.0

