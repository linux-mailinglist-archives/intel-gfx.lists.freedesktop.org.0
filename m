Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC087E21DA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:36:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1745310E2DA;
	Mon,  6 Nov 2023 12:36:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13D310E06F
 for <Intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 12:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274189; x=1730810189;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dq08+f1LNZLs0jhkUyKNHlkppEilTovNsO4R6h1CrnQ=;
 b=ScwLaQEUJZixpx32wrPq1z0bS6EBMUqWR3MgcgZDXq2ZyObrSWFp5zdX
 udZRz9vvCfklSuoVJh6nG/rX9Tko9a7LpHoZY2AAgSOugw1ia6OEHhqjF
 cuUx32JcO85Ni9mz6LMzsjDeaKpYl6rpwl+wGsisjYMHp5Ty5XJ0YSdub
 3Cm9NaalfJlT0QnvnCEr74amoxYvrYxPoGbpIoARCmRz9nrb+0zstMvWp
 x7+yOKDZFBlisWQDp5fJPJapCwLKjrChZ2hCnctO4EBB9IArNteY0Ynn/
 cQ8kYIi/vqe/z5CZRLDzWbs3ZQGh1uaLJUKIniWaRxrcl0y5M6bBWF6on A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="374293565"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="374293565"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:36:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="906046110"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="906046110"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.234.152])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:36:28 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 12:36:19 +0000
Message-Id: <20231106123625.588659-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/6] fdinfo memory CI run
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

Test-with: 20231106123518.588528-1-tvrtko.ursulin@linux.intel.com

Tvrtko Ursulin (6):
  drm/i915: Add ability for tracking buffer objects per client
  drm/i915: Record which client owns a VM
  drm/i915: Track page table backing store usage
  drm/i915: Account ring buffer and context state storage
  drm/i915: Add stable memory region names
  drm/i915: Implement fdinfo memory stats printing

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  11 +-
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  13 ++-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  12 ++
 .../gpu/drm/i915/gem/selftests/mock_context.c |   4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       |  14 +++
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   6 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   1 +
 drivers/gpu/drm/i915/i915_drm_client.c        | 110 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.h        |  41 +++++++
 drivers/gpu/drm/i915/intel_memory_region.c    |  19 +++
 drivers/gpu/drm/i915/intel_memory_region.h    |   1 +
 12 files changed, 227 insertions(+), 8 deletions(-)

-- 
2.39.2

