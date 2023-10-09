Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFA57BDC96
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A7B10E108;
	Mon,  9 Oct 2023 12:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6036A10E0FF;
 Mon,  9 Oct 2023 12:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855410; x=1728391410;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=63H6vcYvxbv+iF8WFcxqpkKqrSb/D597I2kZnhI25H8=;
 b=npveLrr/oY7DpwgFn4S1ftYGIMHR7+CGGf0g8QnGyl4szhMtF0SVYp2e
 IzCAvseo5XI1gE+CdTdiwNZ3ozKTT8B9cU5lVRy7zn13hcwaWTIZCH17g
 0KBHrGllWfNHIaFSfzy9Jq8wyqY4nCY7bx75VIFeUrmHduS8Mx/Ag+WMN
 /kL62XU4XJ9zVP+OosQdmjD+Q7+oL7IMcphxvHQsz+FMe9+sa3OjuG2Vk
 mPcbSFXRgI9IrxEVyhosxqO1lLvVFNT3yox9cxGhz20mungZnCO6SSsKV
 NApeRqOnAQZggZe1pgLrKJJQEoAnfWRVjf5J6Cxq/ixJOe36gIIjgSuBQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010557"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010557"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326802"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326802"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:27 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:27:51 +0200
Message-ID: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 00/11] Kunit fixes and improvements
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
  lib/kunit: Fix handling of potential errors from F_GETFL
  lib/kunit: Be more verbose on errors
  lib/kunit: Fix misplaced igt_kunit() doc
  lib/kunit: Parse KTAP report from the main process thread
  lib/kunit: Omit suite name prefix if the same as subtest name
  tests/kms_selftest: Let subtest names match suite names
  lib/ktap: Drop workaround for missing top level KTAP headers
  lib/kunit: Provide all results cleanup helper
  lib/kunit: Prepare for KTAP parsing after modprobe completed
  lib/kunit: Fetch a list of test cases in advance
  lib/kunit: Execute kunit test cases only when needed

 lib/igt_kmod.c              | 418 ++++++++++++++++++++++----
 lib/igt_ktap.c              | 580 ------------------------------------
 lib/igt_ktap.h              |  22 --
 lib/tests/igt_ktap_parser.c |   3 +-
 tests/kms_selftest.c        |  37 +--
 5 files changed, 374 insertions(+), 686 deletions(-)

-- 
2.42.0

