Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750888699F7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 16:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFF610E907;
	Tue, 27 Feb 2024 15:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JsvwxBzf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 224A810E907;
 Tue, 27 Feb 2024 15:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709046705; x=1740582705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WIJhB/6M0WY9wW+vSfXg/ZFwCIg6QVfmpWJ6zfkCsRA=;
 b=JsvwxBzfPNDcbWXpCM3+FhyoAvoTjKyf/IqgGydLr4ugiy5HZu9JHitW
 ZWlyIQzVpXffcne89kmyP2XMFukUYxlJPxqQ8cFF7a3/r7Nj042KLI/DR
 3hzNosZm3AvnQLYAVUF96IXjt+cAkwR/GcbO2wB7Is7NMRIm+yICmTPBJ
 1OB+F3LZsBM2z3d5Cg79XVJZzwFZFPIRouigE32lXCxCmCaLe2mJ7u5JJ
 Mcf5rftnm0Z9Pwimvfjz2vNIVtOwM5EZBpHBP2BOkmodtXD1HxqXbgg2Q
 V0Vb0eYzer0q73vh2DnVrP4rB9xFGfaeEGOAyvaLn+8bKlVz2B5qT3mvZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3260406"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="3260406"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 07:11:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7635334"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.4.234])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 07:11:43 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v2 0/2] lib/kunit: Execute test cases synchronously
Date: Tue, 27 Feb 2024 16:10:40 +0100
Message-ID: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
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

Janusz Krzysztofik (2):
  lib/kunit: Execute test cases synchronously
  lib/kunit: Minimize code duplication

 lib/igt_kmod.c | 172 ++++++++++++++++---------------------------------
 1 file changed, 54 insertions(+), 118 deletions(-)

-- 
2.43.0

