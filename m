Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D35A3A3B9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 18:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF2A10E04C;
	Tue, 18 Feb 2025 17:10:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvpG4IXH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E126C10E04C;
 Tue, 18 Feb 2025 17:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739898641; x=1771434641;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=duq3snlH3Edq+e4YMB8UKUFvtQ1283hQvOXzB/pY9zc=;
 b=mvpG4IXHESPewFfIVqbBWnCGM1EzzvD+i+PcOOzdaeG4q4iTRnLRLSKp
 /hMTKXVXJpeTTQpYwDgmnezDbk0yil6HfqEOqOoeMEbXJl240iM/ko+gM
 gP7aN9hqbSuGFvmYnCGrApV4GWtgpyMbft2yy2sXEoLalfdjrMVTLCpV8
 /jHuF5W69tqqmm+ZcRaMj0uRtZvf1LgLzrgJGu8SXvZ8q8fO6wTTrw2c6
 7+1zhlfyP520nt3xrAo3HdcIbkBrdniWX1SWsEtTBGAcCZCY58rbQnBPH
 ruc8CG/RKU7JTYG6Jlucq5OxdRtHP5/9s5UuZe+pjwmZUFSSQSohTmc9X A==;
X-CSE-ConnectionGUID: eckl6p41R06F6ABoCHjy0Q==
X-CSE-MsgGUID: j5xSzcfKSmilHBk/9Qusnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="28207558"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="28207558"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 09:10:41 -0800
X-CSE-ConnectionGUID: Ldxv1V0/Tn2Mmh3E+BAEmA==
X-CSE-MsgGUID: d5kZu8XUReGpDxoQ9DoV6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="119544163"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 18 Feb 2025 09:10:40 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v10 0/3] tests/intel/xe_pmu: Add PMU tests
Date: Tue, 18 Feb 2025 09:06:54 -0800
Message-Id: <20250218170657.214076-1-vinay.belgaumkar@intel.com>
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
 lib/igt_perf.c                         |  71 +++++++++++++
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
 13 files changed, 311 insertions(+), 197 deletions(-)
 create mode 100644 tests/intel/xe_pmu.c

-- 
2.38.1

