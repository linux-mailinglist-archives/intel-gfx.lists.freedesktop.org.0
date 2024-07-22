Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB9E938AC8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C3DB10E3DE;
	Mon, 22 Jul 2024 08:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OmsgoNOz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB8210E3D5;
 Mon, 22 Jul 2024 08:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721635789; x=1753171789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u0c4CLmg6kKc/T1kSboigVfbrnw1Nzk13+I0h9+KlN8=;
 b=OmsgoNOz/h0bZWHcBI5cp2qOc/T0n8HakzJWXBBnV0D7u+J8AsGYG4DA
 ma0vFZ6W5P/s7n+l8LYPTUESz5p1lnKFnaUasF6MHPXC/8jCaJZI1Ecv7
 0v2DxU3E5XVsWUdJZPuSqxDkXJgNy5BTpkCQ/+2efmqMVhzHO9wYB/C8F
 u/ciHUdul2feA6otp3MrpInIzndOVE2CHarwIMSU8FmI57hSwALJHXwAR
 6rLWXsvHlXA1c/tIuoChDLLJLP7P/+lKIxkyT9DHkfC00uGac8xY9g8CZ
 XhcTAxdUdt0uszvvkyz6jh1S9roFTZiyWgA3NQL1VwKnOT/PbLXSzUkpy g==;
X-CSE-ConnectionGUID: GeRIU2jbShODY4NE1Lg/UQ==
X-CSE-MsgGUID: uYw0nhOMR8WW/M58yKjHBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="19037710"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="19037710"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:48 -0700
X-CSE-ConnectionGUID: Le7PEqoPRuOJnoIjDqW30Q==
X-CSE-MsgGUID: iG3RFfRPQv2HqJYlDF+ghg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51463599"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.233])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:43 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 0/3] lib/kunit: Fixes and enhancements
Date: Mon, 22 Jul 2024 10:01:01 +0200
Message-ID: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

An issue has been discovered when running an IGT kunit test with a dynamic
sub-subtest specified: only the first kunit test case of a test suite can
be actually executed.  Selecting a test case other than the first one
results in "Unloading test module failed, not executing more selftests."
message being displayed and no single test case (dynamic sub-subtest)
executed.

Besides, an optional 'suite' argument was used as a KUnit filter_glob
when we were loading KUnit test module once per IGT subtest.  Since we are
now loading the module once per IGT dynamic sub-subtest, we use
test_suite.test_case obtained from a list of test cases as filter_glob.

Resolve the above issues, and also update an inline comment to emphasize
the fact that test case list of unknown length we want to avoid parsing of
is an unstructured free text list.

Janusz Krzysztofik (3):
  lib/kunit: Fix selective execution of test cases
  lib/kunit: Drop 'suite' from __igt_kunit arguments list
  lib/kunit: Improve a comment on action=list parameter

 lib/igt_kmod.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

-- 
2.45.2

