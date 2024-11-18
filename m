Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A59D1BCA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011B910E55E;
	Mon, 18 Nov 2024 23:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GfUV6ERl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9285A10E29D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 23:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731972149; x=1763508149;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=73u2jKsAQ+j+IXMoXEkyr8E4Kw+us7Yox/VvVnhu7mM=;
 b=GfUV6ERll6I9+1beGOUbe/EVS2VkGcOep8iWtXttZRm7HZNomW/OkZUO
 fx62OUXEcqGTIyCfROs0xdaVmVRMqtRNI1zNu6mAoyF0ocWQUUkOMtxGz
 9ub/erPn5UbnXDYIRHm6Y5qhG35xok22nq6gnF5kYY0YaUsWWUG13VeMl
 C7LQAQiEMYustt2+IrLLplCO1uzyyOAWSWvlNR5p5GzAZBkD8GYDxMf0I
 82lwrWLZz+YJBj+nat3DaJHbUim7+mPdTujnWT/yNO9a5xsjEcIwLgwUB
 KxEKnTBcMySaR07+6dCq8Yx4n3Qrv6Fb8ykktCwPITOPv1CzQFdD0CkDM w==;
X-CSE-ConnectionGUID: hERIIi+aSnmz6iEr5ETuYQ==
X-CSE-MsgGUID: WIh3C7t9Qke/u75TqojVqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42466977"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="42466977"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:29 -0800
X-CSE-ConnectionGUID: 2uPCVzbzQwyBJ7pD0NJ23Q==
X-CSE-MsgGUID: 0D0QcA+bSoaWAjTUoGQbvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89777988"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:27 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 0/3] Fix some races/bugs in GuC engine busyness 
Date: Mon, 18 Nov 2024 15:22:20 -0800
Message-Id: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
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

