Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D35217C03F0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E0B10E3D3;
	Tue, 10 Oct 2023 18:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342EF10E3CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964245; x=1728500245;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/46pg3hulEppdV3t8lEJAF03kjy5jYvT01Jj+PN8AC8=;
 b=JlwJa1WjeyYWpQuSXUOXfHJHuLNng3RU4NpLk4tx6aAxcCPwcmkJoNJq
 UST/LdUrDwgLGZPdruUB/2voH3XRKcMYnFqyBcXUQeMUJhivAuz42wHfw
 G/OVK4dUGZcRaWa8sE/DDvsRcHNdwUFixMUw12u+nVFhpJAJ23rIUz5jU
 6jWxXPlewuzjEKFqFg3Uy8m7U6c3rjJdlT1cy9u+x+r4kfE3kPRhlwWs5
 dT6na0EW3xmC/lzXNN9O40il04aPundtMadwHb9FiyoHYIyGpXpvGK4+o
 1QAAqbhEbdVg1NRfGID+0U2/6T3JCQCZqtD3m7hHP7gvq5uOE93G9N9UV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374830081"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374830081"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000802275"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000802275"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:23 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:46:31 -0700
Message-Id: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 00/10] drm/i915: Implement range-based TLB
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
Cc: andi.shyti@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement range-based TLB invalidations on top of GuC-based TLB
invalidations.  This is the future plan for GuC-based TLB
invalidations because it helps improve performance over performing
full tlb invalidations all the time.

Jonathan Cavitt (7):
  drm/i915: Add GuC TLB Invalidation device info flags
  drm/i915/guc: Add CT size delay helper
  drm/i915: No TLB invalidation on suspended GT
  drm/i915: No TLB invalidation on wedged GT
  drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
  drm/i915: Enable GuC TLB invalidations for MTL
  drm/i915: Use selective tlb invalidations where supported

Prathap Kumar Valsan (3):
  drm/i915: Define and use GuC and CTB TLB invalidation routines
  drm/i915: Define GuC Based TLB invalidation routines
  drm/i915: Add generic interface for tlb invalidation

 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   8 +
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   2 +-
 drivers/gpu/drm/i915/gt/intel_tlb.c           |  68 +++-
 drivers/gpu/drm/i915/gt/intel_tlb.h           |   1 +
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |  99 +++++-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  35 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  34 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  13 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 290 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   7 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_vma.c               |  14 +-
 drivers/gpu/drm/i915/i915_vma.h               |   3 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 .../drm/i915/selftests/i915_mock_selftests.h  |   1 +
 19 files changed, 597 insertions(+), 21 deletions(-)

-- 
2.25.1

