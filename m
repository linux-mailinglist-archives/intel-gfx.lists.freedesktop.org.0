Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3382155BE81
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 07:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607C01139B0;
	Tue, 28 Jun 2022 05:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EB2113994
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 05:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656395447; x=1687931447;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i4qaaUzZBIBuwG9TnUuNvLvL4JnhZYWaqExuGzXqayU=;
 b=E9N9bjtMMQyljBYBFcXbAI2NQSJVqpNgzhnZHPiidem6iqqjKvBCTptI
 s1/WGogy7e1hZdrYITeM9g5YNSHYPzdZGeriFffIAcnN5m3PBtY0fR/aq
 PeGj4J55As8g1fpjF0VDJt7mmHQY8HwDJt5yeoKSLKwftcxteSgDA3QvE
 zijIuM0iCajh2+ZV4p3FoZXRuxWwIUAmXwKlhwgI6/FBjt5PdM221vkmY
 J8YR0fSuK0zNtihrq3A8jpLGPADavV+HDpkUx/rAoCXp/A5S5cIpu7oIe
 PYCf7JfKxsDDc3FA1uQWbr4CQqjK4KH7ZelwgntGcWz5zSmk4Mw6AUtoA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="282733266"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="282733266"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 22:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="657993726"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jun 2022 22:50:47 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jun 2022 22:51:28 -0700
Message-Id: <20220628055130.1117146-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 0/2] Delay disabling scheduling on a context
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

This is a revival of the same series posted by Matthew Brost
back in October 2021 (https://patchwork.freedesktop.org/series/96167/).
Additional real world measured metrics is included this time around
that has proven the effectiveness of this series.

This series adds a delay before disabling scheduling on a context. 2nd patch should
explain it quite well.

Matthew Brost (2):
  drm/i915/selftests: Use correct selfest calls for live tests
  drm/i915/guc: Add delay to disable scheduling after pin count goes to
    zero

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |   2 +-
 .../drm/i915/gem/selftests/i915_gem_dmabuf.c  |   2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   2 +-
 .../drm/i915/gem/selftests/i915_gem_object.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   9 ++
 drivers/gpu/drm/i915/gt/intel_context_types.h |   8 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  10 ++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  28 ++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 132 ++++++++++++++----
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 drivers/gpu/drm/i915/i915_trace.h             |  10 ++
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   2 +-
 drivers/gpu/drm/i915/selftests/i915_perf.c    |   2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 16 files changed, 183 insertions(+), 34 deletions(-)


base-commit: ab91e54f0a9cec3fba39a2beae980ffbb8f7cea7
-- 
2.25.1

