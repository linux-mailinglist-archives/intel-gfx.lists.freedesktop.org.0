Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77873694134
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 10:32:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E208310E509;
	Mon, 13 Feb 2023 09:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD4F10E509;
 Mon, 13 Feb 2023 09:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676280717; x=1707816717;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ARnV/V63nWHJTfjK6Qnizwr+xq/zrriSAWAmHu7PFaE=;
 b=KmRQatpa4jQic1nCdm1QiZQn84DkFkjF/ELSLfreqssHtA7H57HM3XI/
 ya4tfnPBgVNWtZgoiUOUfhQ/of4sCaeUT9nBgk2O+erRAFaBomUka7ELK
 1qNTlN3rgiFgqoxxq1QVV5a8ByMhCAMewj9bDsNAWY2PSH7vyszlTSqbv
 jeus4tMZndecNyWyeHCVF2S4uRf5jCXlyNJ285aDbqoKWXSwryq9/SHc/
 p6009t5l72BkznSuVZ+E6ktZvELSZ9eCOPoC9eUHpM/vuw/QRLaARrxYr
 2m0CUePa3pA2LRK3BK1X1DZ7h+QxE9/eaC4ZCoLnyvn3hQlYoVOVgdA0b g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="318876399"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="318876399"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:31:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="668746989"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="668746989"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:31:52 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 13 Feb 2023 10:31:31 +0100
Message-Id: <20230213093132.12763-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 0/1] tests/i915/perf: Add stress / race
 exercises
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Users reported oopses on list corruptions when using i915 perf with a
number of concurrently running graphics applications.  That indicates we
are currently missing some important tests for such scenarios.  Cover
that gap.

v3: locate the new subtest in a new tests, intedned for exercising
    intentionally racy barrier tasks list processing,
  - fixes and optimizations (see the patch changelog for details).
v2: drop open-race subtest for now, not capable of triggering the user
    reported bug, but triggering other bugs which I can't see any fixes
    for queued yet,
  - move the other new subtest out of tests/i915/perf.c (Ashutosh).

Janusz Krzysztofik (1):
  tests: Exercise remote request vs barrier handling race

 tests/i915/gem_barrier_race.c | 159 ++++++++++++++++++++++++++++++++++
 tests/meson.build             |   8 ++
 2 files changed, 167 insertions(+)
 create mode 100644 tests/i915/gem_barrier_race.c

-- 
2.25.1

