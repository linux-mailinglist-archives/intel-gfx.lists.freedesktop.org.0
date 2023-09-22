Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E19057AB2DD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF9710E192;
	Fri, 22 Sep 2023 13:44:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B3F10E192;
 Fri, 22 Sep 2023 13:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390284; x=1726926284;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2t5alZFgsjRFPf0YMbhE+cakTpUpEbZgl15+hT5foXw=;
 b=QX1F9m5p94SINblpUM2hL4j4MYfPYxkiKUxCEgsMMJQL4jj04Mx9/HcT
 DcBTY6GTniDkzFjCMXsUGS1ji3trSRyUdtkG2WrZJEl01X7/CnlpRkgpo
 z6xwrDOUaqQ18HI7jQnWdsDFyboeVzkEY66wutUGxCN0bvXc7IR4p1cOi
 ahS+XC2YY4qGj04HeUUBVtzEpuL727EZ42LB+8jHm1YD9iZkZZNM/c7uG
 0hM32wttqP4AD273BGlIuMDTZreIqiuOmIzykjhqsxvMzgo5wurYKhDsH
 E1H8srE2AVMmNnTWudjuVSNSREHD+Rqeus4NRNqcw20dV+K883PyQzwOd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117123"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117123"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243527"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243527"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:25 +0100
Message-Id: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 00/12] fdinfo tests,
 intel_gpu_top memory support, etc
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Some basic testst for fdinfo memory stats, intel_gpu_top memory stats support
(first draft) and a couple fixlets.

Primarily sending to use as "Test-with" but review is also welcome.

Tvrtko Ursulin (12):
  tests/i915/drm_fdinfo: Stress test context close versus fdinfo reads
  tests/i915/drm_fdinfo: Add some memory info tests
  tools/intel_gpu_top: Restore user friendly error message
  tools/intel_gpu_top: Fix clients header width when no clients
  tools/intel_gpu_top: Fix client layout on first sample period
  tools/intel_gpu_top: Optimise interactive display a bit
  lib/igt_drm_fdinfo: Copy over region map name on match
  lib/igt_drm_clients: Fix client id type confusion
  lib/igt_drm_clients: Allow passing in the memory region map
  tools/intel_gpu_top: Fully wrap clients operations
  tools/intel_gpu_top: Add per client memory info
  tools/intel_gpu_top: Add ability to show memory region breakdown

 lib/igt_drm_clients.c    |   7 +-
 lib/igt_drm_clients.h    |   5 +-
 lib/igt_drm_fdinfo.c     |   4 +
 man/intel_gpu_top.rst    |   4 +
 tests/intel/drm_fdinfo.c | 269 +++++++++++++++++++++++++++++++++++++++
 tools/gputop.c           |   4 +-
 tools/intel_gpu_top.c    | 260 +++++++++++++++++++++++++++++++------
 7 files changed, 508 insertions(+), 45 deletions(-)

-- 
2.39.2

