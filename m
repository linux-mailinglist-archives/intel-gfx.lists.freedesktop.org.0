Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC948A281A3
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 03:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121F310E16B;
	Wed,  5 Feb 2025 02:14:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZFevTzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5790A10E16B;
 Wed,  5 Feb 2025 02:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738721684; x=1770257684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X1EKzpsexUqZffgpd8pvKg+5784SUUve8WlwcVLeRqI=;
 b=WZFevTzjhV4GAExpPbwXBK55/x+2NNW8sa/MtsfUp1I/oGIMOQrO8J7m
 Y5pfXgRgwAjyWYeu9ZjJPrzR1TRoNFWVEIMT+qBnW+Xk4Rhb/UzPVHYiL
 QXjrw4Qa7xx6mvsrVO1SdJGIPMWHhtkjARMd8mEgX/JcooOIFjikP0gCX
 IO15oH4NK+Gtq4SkkHAYulE1XZkMgGWR7EA7sMzsEwgBTZ5YTQ1wiQGXl
 xWF4B9s/cDWYfqXw7r8NcGnsnzO76aNlgZvhmS8Ibwg9EzQEgZB4WfQke
 /qw3p2xleWgB9nq32G7RiF0f5qx9QD1yQUinrm4pB067TpgMATYkxm7jH A==;
X-CSE-ConnectionGUID: 8Pwgn3ZdSMCXZSmC0ZXmAA==
X-CSE-MsgGUID: p049OeTSTnGmG7UcKgSNkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39160211"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="39160211"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 18:14:44 -0800
X-CSE-ConnectionGUID: Vxws4Lj1Q3+FQFNeSvm8gw==
X-CSE-MsgGUID: dNyDnWwgTC6nH4/9dwJlgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111643364"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa008.jf.intel.com with ESMTP; 04 Feb 2025 18:14:43 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v8 0/3] tests/intel/xe_pmu: Add PMU tests
Date: Tue,  4 Feb 2025 18:10:53 -0800
Message-Id: <20250205021056.1539902-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
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

Add utils and gt-c6 tests that utilize PMU counters.

Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (3):
  lib/igt_core: Add tolerance and measured_usleep utils
  lib/igt_perf: Add utils to extract PMU event info
  tests/xe/pmu: Add pmu tests for gt-c6

 lib/igt_core.c                         |  20 ++++
 lib/igt_core.h                         |  20 ++++
 lib/igt_perf.c                         |  70 ++++++++++++
 lib/igt_perf.h                         |   2 +
 tests/intel/drm_fdinfo.c               |  68 +++---------
 tests/intel/gem_exec_nop.c             |   6 --
 tests/intel/gem_spin_batch.c           |   6 --
 tests/intel/i915_pm_rc6_residency.c    |  42 ++------
 tests/intel/perf_pmu.c                 |  81 +++++---------
 tests/intel/sysfs_heartbeat_interval.c |  19 +---
 tests/intel/xe_pm_residency.c          |  29 +----
 tests/intel/xe_pmu.c                   | 142 +++++++++++++++++++++++++
 tests/meson.build                      |   1 +
 13 files changed, 309 insertions(+), 197 deletions(-)
 create mode 100644 tests/intel/xe_pmu.c

-- 
2.38.1

