Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204E0225E4B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1836E3C1;
	Mon, 20 Jul 2020 12:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED7A6E3B8;
 Mon, 20 Jul 2020 12:19:29 +0000 (UTC)
IronPort-SDR: 8wifIEWTt4h9jH9hUzOCVLDaoXHo0qYrKZ+iWy/xztdtSXg2FIfN6eoqzdsQ9evXVWi/mLGqyH
 XVXZ3kDtB0bg==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463943"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463943"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:29 -0700
IronPort-SDR: nXFLaFendFhnZVV52XQcPCyECX26GznECGfEWTt58pF5tLqRzWHYPdgk9pogwDTZYalcCeMzcI
 K858jhUfYf3A==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669576"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:27 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:18:53 +0200
Message-Id: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 00/15] tests/core_hotunplug: Fixes and
 enhancements
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
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the test is still blocklisted due to driver issues and won't be
executed on CI, I'm providing a link where results obtained from a 
rybot run with the test removed from the blocklist can be found:
https://patchwork.freedesktop.org/series/79662/
Failures reported there come from driver and not test issues, I
believe.

Thanks,
Janusz

Janusz Krzysztofik (15):
  tests/core_hotunplug: Use igt_assert_fd()
  tests/core_hotunplug: Constify dev_bus_addr string
  tests/core_hotunplug: Consolidate duplicated debug messages
  tests/core_hotunplug: Assert successful device filter application
  tests/core_hotunplug: Fix missing newline
  tests/core_hotunplug: Maintain a single data structure instance
  tests/core_hotunplug: Pass errors via a data structure field
  tests/core_hotunplug: Handle device close errors
  tests/core_hotunplug: Prepare invariant data once per test run
  tests/core_hotunplug: Skip selectively on sysfs close errors
  tests/core_hotunplug: Follow failed subtests with health checks
  tests/core_hotunplug: Fail subtests on device close errors
  tests/core_hotunplug: Process return values of sysfs operations
  tests/core_hotunplug: Assert expected device presence/absence
  tests/core_hotunplug: Explicitly ignore unused return values

 tests/core_hotunplug.c | 333 +++++++++++++++++++++++++----------------
 1 file changed, 202 insertions(+), 131 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
