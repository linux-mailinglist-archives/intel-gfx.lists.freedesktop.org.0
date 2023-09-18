Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C42727A4ACA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A240C10E0C7;
	Mon, 18 Sep 2023 13:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B65AF10E011;
 Mon, 18 Sep 2023 13:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045144; x=1726581144;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NP1h+0UKldLz1lY9m6HbO8rN+lE/bgTGhXtzh53+ZzU=;
 b=StO+iggF6C8h96MCl/t/rM7CKp+jLnFTT9QogSkTATfF8HNKmif+V277
 Ea9jN63K8XWWUhw2igU/q39nXueOXYHA7sBhxAl4bFeyctxpQWU0TtuY5
 YRxQf4BnEwpMTNz/AAW3gQDW1GbEYcYujQV0oIx8QaQQpFfrCOwL4D/5x
 EmFzThxeKCa0LSnMdv2uRYNapii9e5Fp0cWsWXL71+Vv7cVniFAWEyr1y
 OhMz9ZTNQC3jph/Zb3NztjnMUVW7+1MTZuAc4b3/TTyfvGAN+FbQu8tGf
 vSY/ieOFP9EYwch64Ru7CTG1ag/vLOmrKmgccAE52+eyQfMOQms5gbWt2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969479"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969479"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030431"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030431"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:21 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:50 +0200
Message-ID: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 00/17] Fix IGT Kunit implementation
 issues
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Dominik=20Karol=20Pi=C4=85tkowski?=
 <dominik.karol.piatkowski@intel.com>, Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v3: Also call igt_skip() on igt_ktest_init() failure (Mauro), but then,
    initialize local tst structure when declaring it to avoid freeing a
    random pointer from igt_ktest_fini() when only listing subtests,
  - call igt_ktest_end() from igt_fixture so it is not unnecessarily
    called when only listing subtests,
  - drop EINTR handling completely as not applicable since SIGINT default
    signal handler kills the whole process anyway,
  - update commit description to also mention read error handling fix,
  - interrupt blocking read() on modprobe failure.
v2: Fix incorrect and missing includes in the test source file,
  - add license and copyright clauses to the test source file.

Janusz Krzysztofik (17):
  lib/kunit: Drop unused file stream
  lib/kunit: Stop loading kunit module explicitly
  lib/kunit: Fix struct kmod_module kunit_kmod not freed
  lib/kunit: Optimize calls to igt_success/skip/fail()
  lib/kunit: Fix illegal igt_fail() calls inside subtest body
  lib/ktap: Make sure we fail on premature cancel
  lib/ktap: Drop checks for EINTR on read() failures
  lib/kunit: Cancel KTP parser on module load failure
  lib/ktap: Drop is_running flag
  lib/ktap: Read /dev/kmsg in blocking mode
  lib/kunit: Fail / skip on kernel taint
  lib/ktap: Use IGT linked lists for storing KTAP results
  lib/ktap: Reimplement KTAP parser
  lib/kunit: Load test modules in background
  lib/kunit: Parse KTAP report from the main process thread
  lib/kunit: Strip "_test" or "_kunit" suffix from subtest names
  lib/kunit: Omit suite name prefix if the same as subtest name

 lib/igt_kmod.c              | 320 ++++++++++----
 lib/igt_ktap.c              | 833 ++++++++++++------------------------
 lib/igt_ktap.h              |  28 +-
 lib/tests/igt_ktap_parser.c | 246 +++++++++++
 lib/tests/meson.build       |   1 +
 tests/drm_mm.c              |  42 +-
 6 files changed, 775 insertions(+), 695 deletions(-)
 create mode 100644 lib/tests/igt_ktap_parser.c

-- 
2.41.0

