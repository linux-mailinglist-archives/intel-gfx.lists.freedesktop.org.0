Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F30BA236BA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:34:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E6810E114;
	Thu, 30 Jan 2025 21:34:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WF9ZQaWr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA3AF10E114;
 Thu, 30 Jan 2025 21:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738272845; x=1769808845;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UmdnrRMm26EvT8YhpFfGz/ODIyo/zmUVoxUW4EMlQC0=;
 b=WF9ZQaWr++dnyPDVDv8kwLPZdyIksmXxf6ZdSX4aRyVj+sdDO9uyQPTO
 vzLapsCVyf62YsETD0p7gT9oN0TQd/q8Lx2Pn1Sn52g2eFqLrq+CrDDUy
 XM4oFGu0o5qo56pYSzBXDcpZDGTGF9MMKBz5e6mW1ucyKhFkYNUNywMMm
 XcWLarfe3XbzW9fTekp7H/aft5xy/NI05vv1SLaCHVL78cccX6lx85n5o
 bjrOP4MdqNu2Z7lAC6EMCfaXRwxsHIF6HkeFCqVBPfUripRcjd/coMgiM
 XrLi6V6gG2Q/YtvhaTsbW0ZDPzvxxrsbGOyqMIHBMZsf8N/U9D5DSpoB5 Q==;
X-CSE-ConnectionGUID: GY4lmdmqQiaKCWx3+yaW9w==
X-CSE-MsgGUID: FQU2+NLvSDi9RpAFa5MB3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38083287"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="38083287"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:34:05 -0800
X-CSE-ConnectionGUID: CjHwwBuHRAyPxr6Lx/o+wA==
X-CSE-MsgGUID: 1AThMqHcRZKlW4lP5boJIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="109352052"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jan 2025 13:34:03 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v7 0/3] tests/intel/xe_pmu: Add PMU tests
Date: Thu, 30 Jan 2025 13:30:25 -0800
Message-Id: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
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
 tests/intel/drm_fdinfo.c               |  55 ++-------
 tests/intel/gem_exec_nop.c             |   6 -
 tests/intel/gem_spin_batch.c           |   6 -
 tests/intel/i915_pm_rc6_residency.c    |  42 ++-----
 tests/intel/perf_pmu.c                 |  15 +--
 tests/intel/sysfs_heartbeat_interval.c |  17 +--
 tests/intel/xe_pm_residency.c          |  29 +----
 tests/intel/xe_pmu.c                   | 149 +++++++++++++++++++++++++
 tests/meson.build                      |   1 +
 13 files changed, 284 insertions(+), 148 deletions(-)
 create mode 100644 tests/intel/xe_pmu.c

-- 
2.38.1

