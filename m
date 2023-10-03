Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 366C27B6520
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 11:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4710A10E284;
	Tue,  3 Oct 2023 09:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E1A10E039;
 Tue,  3 Oct 2023 09:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696324407; x=1727860407;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DWcTTDvt7LUfnxSGBJt04L/BKW+TWKS+42GqgsxVHRI=;
 b=VEoey4lmBcxR91VV1VdLvQmDCzXfiwShfQrb21xf3I/eqg8xFBfnjDAM
 HHXi4GQuOzid+4cmbKKQgfwm7Oj29hioc8nG1l6EgNIIK1zkJTg09k6RR
 AUF28FavNb8OQIBv7c3G4xLhA2M+P++kky6VdcHLUjf0ujpbmQMU8i9eb
 yK7nuhNVYjrVF0bqDcRU1BHk586opt0DIEREO4FIwJcxd8FqIvoUuK4g/
 jHaVWQB2Jz+kqJi3COuHUvleL9WtsT5e8GUxY8c89X6JNx/X3q4/aYcZz
 Q8p2XFAkHat3qlYN+3jpNy0mRvBu/qsIE7bXGdA1yJXtSbaVU76z3sTET g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="1419693"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="1419693"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997935692"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="997935692"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.14.111])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:18 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Oct 2023 11:10:45 +0200
Message-ID: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/9] Kunit fixes and improvements
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

Janusz Krzysztofik (9):
  lib/kunit: Fix handling of potential errors from F_GETFL
  lib/kunit: Be more verbose on errors
  lib/kunit: Fix misplaced igt_kunit() doc
  lib/kunit: Parse KTAP report from the main process thread
  lib/kunit: Omit suite name prefix if the same as subtest name
  tests/kms_selftest: Let subtest names match suite names
  lib/ktap: Drop workaround for missing top level KTAP headers
  lib/kunit: Fetch a list of test cases in advance
  lib/kunit: Execute kunit test cases only when needed

 lib/igt_kmod.c              | 413 +++++++++++++++++++++----
 lib/igt_ktap.c              | 580 ------------------------------------
 lib/igt_ktap.h              |  22 --
 lib/tests/igt_ktap_parser.c |   3 +-
 tests/kms_selftest.c        |  37 +--
 5 files changed, 369 insertions(+), 686 deletions(-)

-- 
2.42.0

