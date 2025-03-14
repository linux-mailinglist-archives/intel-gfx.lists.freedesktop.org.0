Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5D5A60760
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 03:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4365C10E1AE;
	Fri, 14 Mar 2025 02:12:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmheLxWa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA79110E1AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 02:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741918354; x=1773454354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=89hn02apVCa5q/WYyeqCJT1ZQ1Rtj0cIH4ewOrqT++w=;
 b=KmheLxWaGwlbnGbd8+p+pfky4VKFyADF/cxhT1ksa0SxhuLT9xQwdHqO
 Rl9pSPDPo7jeE5T1WPDpkT9humjpZGSeyZgNzmfNNg9Ll9yTSdOvW7sR5
 0AxPIIQ/i4E9XyvWYz8IUxtyISk1vjFDK4yClTP6NTl9wQ4RLx0fJIrdP
 2ZxC8srOW5FnbqDkNQaUDLVz9HdtX5+A/rvfBFZabQptHsSI9s8KZ015o
 tY8+vRcM9/RcYtOjY+W4XYBulLyrs3T9yd89CewiCQBFrCmdWfRMaTpCB
 3gk0/N5OYzGh0iIQPwuEjcZvNnzr8HkshhnwNWl9qkfBNFRS+4tb/p/YS A==;
X-CSE-ConnectionGUID: m20cJn/oQ2WRZN7XshOEyQ==
X-CSE-MsgGUID: bNa+0+O/RDW6DUsUuVd6YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="65520019"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="65520019"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:34 -0700
X-CSE-ConnectionGUID: LgHv/2naTLSC1U8od6cSUQ==
X-CSE-MsgGUID: skyJbgyJTouenbk+C2h9Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126009244"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:33 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH 0/4] Trivial style fixes
Date: Fri, 14 Mar 2025 03:12:20 +0100
Message-ID: <20250314021225.11813-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.47.2
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

Hi

Browsing through my endless list of branches I found a few with
random cleanups that I fix while rading the code. They tend to be
forgotten over the time and never sent. This time I decided to
send them. And I have plenty more :-)

Andi

Andi Shyti (4):
  drm/i915/gt: Fix typos in comments
  drm/i915/gt: Fix SPDX license format
  drm/i915/gt: Remove trailing blank lines
  drm/i915/gt: Use proper sleeping functions for timeouts shorter than
    20ms

 drivers/gpu/drm/i915/gt/intel_gtt.c     | 1 -
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 1 -
 drivers/gpu/drm/i915/gt/intel_migrate.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c    | 1 -
 drivers/gpu/drm/i915/gt/intel_reset.c   | 2 +-
 drivers/gpu/drm/i915/gt/intel_wopcm.h   | 3 +--
 drivers/gpu/drm/i915/gt/selftest_rc6.c  | 3 ++-
 drivers/gpu/drm/i915/gt/selftest_tlb.c  | 2 +-
 8 files changed, 6 insertions(+), 9 deletions(-)

-- 
2.47.2

