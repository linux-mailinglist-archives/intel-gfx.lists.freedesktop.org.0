Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B64938AD1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:10:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A6B210E3EE;
	Mon, 22 Jul 2024 08:10:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bnmXtdqE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB86110E3D6;
 Mon, 22 Jul 2024 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721635794; x=1753171794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vi0K1DntkP/Tuz9xM7tuojD9fBCZDNTvlpfzPG+69dw=;
 b=bnmXtdqEOyAilB03sY6uG1cfkoDl7lxss6HsDbGLkjzRMS+cljVD9Cwi
 cabMWQwLOrmwwxK/t7Uf8ulPUY1A3vRzGfw6UOlOmEzoMfN4JOckjmuUK
 mvWrc04GYORmr0/dKHCIvkqIs3+jPVhF8ZIULJGQQR0ZuAf0+WBe076fh
 11A5EUncmq299fptNozH9/uvB+PPSS1iJg5QIRii5qg4LyF02iovd4NUo
 srGMaIKp27cD+mzmvUS5TYjgCdX9fVyYQD5mPW8eHo2Jgms7ADf0cNgC7
 3aurJ9tvoNV34YNUfjPZ97tP8A2kUaq3bbjiRgDzV37vhW06ubSby3+CB A==;
X-CSE-ConnectionGUID: ZEGTXfTDTNyKiTPA9ZCtFg==
X-CSE-MsgGUID: uPo3P+mWTWOqFrLP/RLu2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="19037726"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="19037726"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:54 -0700
X-CSE-ConnectionGUID: FOob59qsQeml7i5Hvth2qA==
X-CSE-MsgGUID: UMbWChTQTqekg/EW3kfUoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51463688"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.233])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 3/3] lib/kunit: Improve a comment on action=list
 parameter
Date: Mon, 22 Jul 2024 10:01:04 +0200
Message-ID: <20240722080913.74333-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
References: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
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

Emphasize the fact that test case list of unknown length we want to avoid
parsing of is an unstructured free text list.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index a13c6fe063..464c0dcf48 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1284,10 +1284,10 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 	/*
 	 * To get a list of test cases provided by a kunit test module, ask the
 	 * generic kunit module to respond with SKIP result for each test found.
-	 * We could also use action=list kunit parameter to get the listing,
-	 * however, parsing a KTAP report -- something that we already can do
-	 * perfectly -- seems to be more safe than extracting a test case list
-	 * of unknown length from /dev/kmsg.
+	 * We could also try to use action=list kunit parameter to get the
+	 * listing, however, parsing a structured KTAP report -- something that
+	 * we already can do perfectly -- seems to be more safe than extracting
+	 * a free text list of unknown length from /dev/kmsg.
 	 */
 	if (igt_debug_on(!kunit_set_filtering(suite, "module=none", "skip")))
 		return false;
-- 
2.45.2

