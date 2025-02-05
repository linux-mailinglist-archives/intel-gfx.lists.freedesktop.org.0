Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE3AA298E7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 19:25:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FFF610E091;
	Wed,  5 Feb 2025 18:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H884H7m8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C741110E091;
 Wed,  5 Feb 2025 18:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738779949; x=1770315949;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O02TquTsOPH9RCqV64LlR27ZbaX6S4ghsuT3hI5qw7I=;
 b=H884H7m8Bniky+LeRxxKQ4jb3UOVPz+DDACyZsWlZKn1rBhJlXJ/aMd3
 V/ClKJuT6O7RW8+GzyIma3zOxFpB9Zfhfd3xbtHvLgcy8PL+Yp8/QEzGG
 0bfWjCDLE+78oNmyrOoq0/tU+PeKGuJE6h7xVzyweVeaJl+Nkl6hgKZy5
 PDVZvxxUXhIMQ7au9A9S5Z7I8NPeuM4w6zRf8Zs9ufKteNVhBGjqE6XKE
 zOCrkkk46XbJ41Wan+WKEXLOZll/c1z0DNeGCMYNPQZCHW2qJa0NBx4RC
 DAYG4KIww6ao5OwCM+UQHhbIfonbwklhc/qnrVa7e+8WKvJw7DHwcSpK1 w==;
X-CSE-ConnectionGUID: kqWd8bqpQ1W5uNF7RIFCrg==
X-CSE-MsgGUID: Q+gefa3dQ8G3gC84lYd5YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26963226"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="26963226"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 10:25:49 -0800
X-CSE-ConnectionGUID: 3RLUlFkqTBqGPLKLsDIzwA==
X-CSE-MsgGUID: NcpgTwSkTeC5pF1Ab2k/dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="111512135"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa010.fm.intel.com with ESMTP; 05 Feb 2025 10:25:48 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v9 0/3] tests/intel/xe_pmu: Add PMU tests
Date: Wed,  5 Feb 2025 10:22:11 -0800
Message-Id: <20250205182214.1650169-1-vinay.belgaumkar@intel.com>
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
 tests/intel/perf_pmu.c                 |  82 +++++---------
 tests/intel/sysfs_heartbeat_interval.c |  19 +---
 tests/intel/xe_pm_residency.c          |  29 +----
 tests/intel/xe_pmu.c                   | 142 +++++++++++++++++++++++++
 tests/meson.build                      |   1 +
 13 files changed, 310 insertions(+), 197 deletions(-)
 create mode 100644 tests/intel/xe_pmu.c

-- 
2.38.1

