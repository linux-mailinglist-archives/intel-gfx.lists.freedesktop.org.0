Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC3E9DAC9F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:40:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91DF10E306;
	Wed, 27 Nov 2024 17:40:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bx4/l2kN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999C610E146
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 17:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732729213; x=1764265213;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sYtnlAYCsY3cOZXOu7HUEPJGKsn9j/LFANZlP7O2T7s=;
 b=bx4/l2kNmuOFUMk5K6ZWfxtCGYD8kr6NaYejEQXDOXz21oEFldOb0kvb
 P7RbN+E/MJSVe8ImJjrmXW/rtEiV6ApWWsfZmoTwjhP1d533yymNf4C6d
 D8oHze2UriTZ2mQL0DGch84xIAcUZ8eD9bqGSoU0yWZ3CGGjs3ob3AlNf
 K9djDt6BOh2ZODs06kZQ7De1G6vXIXCfINeI4Ks+/0IYDh5ar6a4tYn3o
 yciSQWk8T8oWT8rRblgEovRVbwKAvW+RhUwzmAWJq22FTbY3oRCONgb6L
 qKC6spesu8UTs3z8dwGTg1ijF0sVDajif70K9nd58nLy0930oUUWobszu w==;
X-CSE-ConnectionGUID: uh5jjhu2Tc64qnPXe6fyXw==
X-CSE-MsgGUID: o+S/O8sWS+yIPn8esCsV+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="50470702"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="50470702"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:12 -0800
X-CSE-ConnectionGUID: FoNZlNkuSDWclIY3oOrHWQ==
X-CSE-MsgGUID: MxiyNaKmQ66Ykj4JSEBFlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91818796"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:11 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 0/3] Fix some races/bugs in GuC engine busyness 
Date: Wed, 27 Nov 2024 09:40:03 -0800
Message-Id: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
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

A few races and bugs in PMU busyness implementation are resulting in a wide
range of IGT failures. This series addresses some failures that are easily
reproduced.

To repro the issues, we run a couple iterations of igt@perf_pmu@busy-hang
followed by igt@perf_pmu@most-busy-idle-check-all test.

v2: Review rework

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (3):
  i915/guc: Reset engine utilization buffer before registration
  i915/guc: Ensure busyness counter increases motonically
  i915/guc: Accumulate active runtime on gt reset

 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  5 +++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 ++++++++++++++++++-
 2 files changed, 44 insertions(+), 2 deletions(-)

-- 
2.34.1

