Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E6079860E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FF410E04B;
	Fri,  8 Sep 2023 10:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E201310E0A6;
 Fri,  8 Sep 2023 10:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694169986; x=1725705986;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zhxQIZQ2Wjo4+jihA0ID4pCtNuLYo1E+i4NekAsq508=;
 b=TCHM/l4PhH64p/cd3BGlnjdrtASNPKdM/MG+uwx81fiDmRI7MNshDUvy
 ycJhD69LbZlsS9wTClaW1G2bnmNTf/bLCeP9devJXUArAJWFJLwgSk5O6
 7XuvlVOeenuFwjsSza8bH9aLZyqdIwIjCSDMwVq/SkZJRHg4XdS0HxbpM
 +rw/SRVh7yqOG8bb0DpB3gn8MMBpUnkRxn9d0XtSuMRUcwghm6bpRiN9t
 9flOwQzKOyafajq2GNcakCtcu4EBoyqVE/vwTZKbcgz/L/0LGnfG1i3r/
 bQqWbSPMHWy0HEsGex0c6Z+doJIRcWPqKiGS1WgPzRm0Cfa6LnZJij6PY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922542"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922542"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531544"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531544"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:24 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:39 +0200
Message-ID: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 00/17] Fix IGT Kunit implementation issues
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
 lib/tests/igt_ktap_parser.c | 235 ++++++++++
 lib/tests/meson.build       |   1 +
 tests/drm_mm.c              |  42 +-
 6 files changed, 728 insertions(+), 695 deletions(-)
 create mode 100644 lib/tests/igt_ktap_parser.c

-- 
2.41.0

