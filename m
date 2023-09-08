Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6833779870B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 14:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E43410E8A5;
	Fri,  8 Sep 2023 12:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC5510E8A3;
 Fri,  8 Sep 2023 12:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694176459; x=1725712459;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hG6KP8GafOXCMwPwKokHGuftzckch6XuSvn2yD7zMgA=;
 b=IrkFGsD8EsJ2frLGBHdmPgY4SSsNDS7hgLfvCHwegITtCXElA3DhyQNC
 pMWfwR8MK0ips4M3DthQ4jrDKNCn2pRRnTIfuI7ewZfhmUJJDPJrynJ7N
 jmbrxd5cnS2uKcMebz3AgZokqgmjA0d6PeBtLMYDw6AhP+Swl7Wxcsm0+
 e8zc7i5SMK9nwkbCJLvu1YoSKomyVgPAVCQvaRXOHqDPkvdktKZ5c6DHU
 ypOjxvikDKHdIiYsJPIjwKWzjbMUom3y2gLgt26u0Wsv8JGWVjE3NF/wN
 IO7hHhLMi2PQcyZ4u2Y76DL8dBxyrmvhSi/kUbYum6UyDmk4EywO9Kh8a Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="375014937"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="375014937"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="857381901"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="857381901"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:16 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 14:32:34 +0200
Message-ID: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 00/17] Fix IGT Kunit implementation
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

v2: Fix incorrect and missing includes in the test source file,
  - add license and copyright clauses to the test source file.

Janusz Krzysztofik (17):
  lib/kunit: Drop unused file stream
  lib/kunit: Stop loading kunit module explicitly
  lib/kunit: Fix struct kmod_module kunit_kmod not freed
  lib/kunit: Optimize calls to igt_success/skip/fail()
  lib/kunit: Fix illegal igt_fail() calls inside subtest body
  lib/ktap: Make sure we fail on premature cancel
  lib/ktap: Don't ignore interrupt signals
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

 lib/igt_kmod.c              | 284 ++++++++----
 lib/igt_ktap.c              | 833 ++++++++++++------------------------
 lib/igt_ktap.h              |  28 +-
 lib/tests/igt_ktap_parser.c | 246 +++++++++++
 lib/tests/meson.build       |   1 +
 tests/drm_mm.c              |  42 +-
 6 files changed, 739 insertions(+), 695 deletions(-)
 create mode 100644 lib/tests/igt_ktap_parser.c

-- 
2.41.0

