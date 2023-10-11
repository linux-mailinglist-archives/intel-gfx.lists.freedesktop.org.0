Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7A27C56D6
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D217310E8BF;
	Wed, 11 Oct 2023 14:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC4D10E8B5;
 Wed, 11 Oct 2023 14:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034704; x=1728570704;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YqKE6jQzfRayftA1btr2QUy3HUbvXyBIHWf55f0qo7c=;
 b=UxJV1NzwBOsa+BNNUWJXvhvML6ZRhaqL+BwEZqwD+f2yA0y7+7+f0pG8
 pidWy3nbg+/8g0GduN8DPbXyYXh5GAAill663Gqr6WJS7JMiUgaBM/92k
 dQA/70wV1y6VbkzpUJ8NlKOmelMd82ogGv4BTXgvDr32dhvXDX54RVvKi
 QQ3FRocLknlCSACoyYnjme1iGiUUDzXW4K2B91Z3Kyg5Jg2E4i9B6AZK5
 5+1b81CZKxRtPHQjXtMtBRoAmx7NF8jI/3yD/DWKYp8FgAUv0xEMrWjJc
 YAYxW8tVhpdBEjz/OePiqJ7oG75H0PltRHN2Pw+J9y9P/RloJwklawraw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042003"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042003"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641530"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641530"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:29:54 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:35 +0200
Message-ID: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 00/11] Kunit fixes and improvements
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v3: Preserve backward compatibility with older kernels:
    - drop "lib/ktap: Drop workaround for missing top level KTAP headers",
      add "lib/ktap: Improve TODO workaround description" instead,
    - keep legacy processing patch when obtainig a list of test cases from
      kunit modules occurs not supported,
  - print debug message on pthread_kill() error once per loop (Mauro),
  - move "parent" field of the structure near other pthread_* type fields
    (Kamil),
  - drop unneeded explicit return from noop void function (Kamil),
  - if (!err) looks strange, add a comment (Kamil),
  - preserve a link to KTAP standard in a comment above the winning
    implementation of KTAP parser (Kamil).
v2: Add a new patch that provides all results cleanup helper,
  - split out changes in handling of modprobe errors and kernel taints from
    "Fetch a list of test cases in advance" to separate patches (Kamil),
  - prepare for KTAP parsing after modprobe completed in a separate
    patch,
  - drop other modprobe and kernel taint related changes from the series,
  - fix some string duplicates referenced from filtered out test cases not
    freed,
  - always pass last result to next dynamic sub-subtest, fetch first
    result right after loading the kunit test module for execution,
  - still break the loop of test cases on unexpected return codes from
    kunit_kmsg_get_result(),
  - fix typos (Kamil),
  - update commit descriptions.

Janusz Krzysztofik (11):
  lib/ktap: Improve TODO workaround description
  lib/kunit: Fix handling of potential errors from F_GETFL
  lib/kunit: Be more verbose on errors
  lib/kunit: Fix misplaced igt_kunit() doc
  lib/kunit: Parse KTAP report from the main process thread
  lib/kunit: Omit suite name prefix if the same as subtest name
  tests/kms_selftest: Let subtest names match suite names
  lib/kunit: Provide all results cleanup helper
  lib/kunit: Prepare for KTAP parsing after modprobe completed
  lib/kunit: Fetch a list of test cases in advance
  lib/kunit: Execute kunit test cases only when needed

 lib/igt_kmod.c       | 571 +++++++++++++++++++++++++++++++++++++-----
 lib/igt_ktap.c       | 582 +------------------------------------------
 lib/igt_ktap.h       |  22 --
 tests/kms_selftest.c |  37 ++-
 4 files changed, 540 insertions(+), 672 deletions(-)

-- 
2.42.0

