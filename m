Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C10A868EE
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Apr 2025 00:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1CF10E182;
	Fri, 11 Apr 2025 22:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j6C4fGE1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CFC10E138;
 Fri, 11 Apr 2025 22:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744411585; x=1775947585;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l2amex0SeoDL4CWcmmssHRGqlkZa/4odM+8wVLTehFo=;
 b=j6C4fGE1tp/ozPwRuNLZ1UXkm9VT9g2iG4V1EVz79Bds3mkIW394iCwO
 HpYUwSapi7r8MURNDc4mY57ps/EX9n3EwNQxI+18ayM5UhT78jLS7vjSp
 TOneC+S+KYIL3u1xBIf2hcvtBk4om/JbSGtyYDmyYe8QlX6BBaw0RVLg7
 vLQayP3VFaNE+eEqK2QLwheqivx4/O8ZIeAQN7kRpBgvMncho2pjOZML8
 BkIW63yaIRodLoY0l0sRex0mqZVe1hWQUJzzRUDKQEs/CDxKxKi/mpDmT
 tXeItx7KVSCmw70ymMD6YUfH6le2ZjyO1ovUDNl0Up4piK5gX60vGFvpA g==;
X-CSE-ConnectionGUID: wytbD7yQRp2cKjmlCfQqLA==
X-CSE-MsgGUID: 7AJsdBnUQ06S3ZjkgFoCDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="45680294"
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; d="scan'208";a="45680294"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 15:46:24 -0700
X-CSE-ConnectionGUID: 0hdLv1QgTrCMLgpQ3peV0Q==
X-CSE-MsgGUID: yWF8V2u5TeCBeQB0Pa0ceQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; d="scan'208";a="129165727"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa006.fm.intel.com with ESMTP; 11 Apr 2025 15:46:25 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t 0/2] Add PMU test for GT frequency
Date: Fri, 11 Apr 2025 15:45:58 -0700
Message-Id: <20250411224600.665069-1-vinay.belgaumkar@intel.com>
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

This will validate PMU frequency attributes that have been added
to the driver.

Cc: Riana Tauro <riana.tauro@intel.com>>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  lib/xe_gt: Move get/set GT freq utils to lib
  tests/xe_pmu: Add frequency test

 lib/xe/xe_gt.c           |  64 +++++++++++++++
 lib/xe/xe_gt.h           |   2 +
 tests/intel/xe_gt_freq.c | 166 +++++++++++++++------------------------
 tests/intel/xe_pmu.c     | 147 ++++++++++++++++++++++++++++++++++
 4 files changed, 278 insertions(+), 101 deletions(-)

-- 
2.38.1

