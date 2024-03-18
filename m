Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FE087E768
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 11:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB4110F53C;
	Mon, 18 Mar 2024 10:36:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOpYe6JS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8812510F532;
 Mon, 18 Mar 2024 10:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710758174; x=1742294174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A0ckI4yIt8JeYlk3m/O9ex6hvy31yb5Lli/eLy2dJcI=;
 b=HOpYe6JSTrXlO360zTa2+dYI0djj4GOJJeajUaEVscEf4Eihf8Ia1Lw/
 oCTIF2PY1qSe5OfYooRpMTVqwOSEm8/MoF4tuZQodx3pnBnsXq5D/P0NQ
 W9zD+Yn6HzbSqtP6nR0ScPGW4QTv6oVfJT5BogqG/JCK6AtNko51Itk77
 /qcryPs/utsmybFjbtdzAbnD1d/XW8G9vjsj1+KJGdvxjzh5cuZxj1BBK
 I7F0Ium8j8lfUbXmR7vC8uP5g6eb9oAk9fM8ji1KX2Twhn0f3f820PokL
 mz/WZ8UAX/JlwXRB4XJ+8FDi2eXpDFhNezRk8wirGPbT5bm+tr573tszN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="6168188"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; 
   d="scan'208";a="6168188"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="18015788"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.105])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:11 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v3 0/5] lib/kunit: Execute test cases synchronously
Date: Mon, 18 Mar 2024 11:13:26 +0100
Message-ID: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Up to now we were loading a KUnit test module in test execution mode only
once per subtest, in background, and then, in parallel with execution of
test cases while the module was loading, we were looking through dmesg for
KTAP results from each expected test case.  As a consequence, our IGT
messages were more or less delayed, never in full sync with kernel
messages.  Moreover, parsing of KTAP results from already completed test
cases could be abandoned on a failure from loading the test module or
kernel taint caused by a subsequent test case.  Also, parsing of KTAP
results from all subsequent test cases could be abandoned on a failure of
the parser caused by any test case.  Other than that, if a user requested
a single dynamic sub-subtest, all test cases were executed anyway while
results from only one of them that corresponded to the selected dynamic
sub-subtest were reported.  That way, kernel messages from unrelated test
cases, not only the selected one, could contribute to dmesg-fail or dmesg-
warn CI results from that sub-subtest.

Since recent KUnit implementation is capable of executing only those test
cases that match a user filter, stop executing all of them asynchronously
and parsing their KTAP results as they appear.  Instead, reload the test
module once per each dynamic sub-subtest with a filter that selects a
specific test case and wait for its completion.  If successful and no
kernel taint has occurred then parse the whole KTAP report from a single
test case it has produced and translate it to IGT result of that single
corresponding sub-subtest.

v3: Insert new patches 1-3 that fix an infinite loop when we try to get a
    list of test cases from an unexpectedly missing KTAP report.
v2: Refresh the series on top of changes to KUnit filters handling,
  - move the code of a new helper from a previous patch 1 to a previous
    patch 2 which now becomes patch 1,
  - actually limit the scope of the helper to fetching a KTAP report from
    a file descriptor, and let the callers decide on how other steps, like
    setting up filters or loading a test module, and errors they return
    are handled,
  - update commit description with a more detailed justification of why we
    need these changes,
  - rebase the former patch 1 on top of the new patch 1, update its commit
    message and description and provide it as patch 2.

Janusz Krzysztofik (5):
  lib/kunit: Store igt_ktap_results pointer in a central location
  lib/kunit: Let igt_ktap_free() take care of pointer reset
  lib/kunit: Time out promptly on missing KTAP report
  lib/kunit: Execute test cases synchronously
  lib/kunit: Minimize code duplication

 lib/igt_kmod.c              | 193 ++++++++++++++----------------------
 lib/igt_ktap.c              |   5 +-
 lib/igt_ktap.h              |   2 +-
 lib/tests/igt_ktap_parser.c |  24 ++---
 4 files changed, 93 insertions(+), 131 deletions(-)

-- 
2.43.0

