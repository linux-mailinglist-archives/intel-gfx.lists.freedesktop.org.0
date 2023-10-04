Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C000F7B974D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A71F10E13D;
	Wed,  4 Oct 2023 22:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DC010E07E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 22:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696457903; x=1727993903;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KuQHvwQhn/B0TzaN2DAqnUkN9KIeZ+cg2qKUgSKp9es=;
 b=lLuhQ/1frtbtLshsIIItA/juwL6k/g4Chk0KNFPJuRxrkywe0cFkgt7P
 G8iubBbXIjYaCpErwaEjMmn5NJzLVQER1Lz+Nxc3ab6SJEa/7H9xekiqJ
 rHAB/vhW5zGHFkk7aLnRumevEVSSDSUaY0TskfErMCko5VrFufSZKTvxD
 dgHkSwmRiTfh9nnqDbXGLFbg7qrQf+QT8HXG0NDEwTI6Jv9pLwJBwkqtr
 G1jFrkBSsLnzdtnK4aGW7HIrUNw7Mp5e3JlgsKcZfWKREk75+M1/kZX+C
 p8/BFvvBF53XQ4e4yT56G2Q10SAFQuN0GCjef/2jioQuYa9h/bmWexLP8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="382195120"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="382195120"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867611810"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="867611810"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:21 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 15:07:33 -0700
Message-Id: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v6 0/5] Subject: [PATCH dii-client v6
 0/4] drm/i915: Define and use GuC and CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GuC firmware had defined the interface for Translation Look-Aside
Buffer (TLB) invalidation.  We should use this interface when
invalidating the engine and GuC TLBs.
Add additional functionality to intel_gt_invalidate_tlb, invalidating
the GuC TLBs and falling back to GT invalidation when the GuC is
disabled.
The invalidation is done by sending a request directly to the GuC
tlb_lookup that invalidates the table.  The invalidation is submitted as
a wait request and is performed in the CT event handler.  This means we
cannot perform this TLB invalidation path if the CT is not enabled.
If the request isn't fulfilled in two seconds, this would constitute
an error in the invalidation as that would constitute either a lost
request or a severe GuC overload.
The tlb_lookup table is allocated as an xarray because the set of
pending TLB invalidations may have no upper bound.  The consequence of
this is that all actions interfacting with this table need to use the
xarray functions, such as xa_alloc_cyclic_irq for array insertion.

With this new invalidation routine, we can perform GuC-based GGTT
invalidations.  GuC-based GGTT invalidation is incompatible with
MMIO invalidation so we should not perform MMIO invalidation when
GuC-based GGTT invalidation is expected.

v2:
- Add missing supporting patches.

v3:
- Split suspend/resume changes and multi-gt support into separate
  patches.
- Only perform GuC TLB invalidation functions when supported.
- Move intel_guc_is_enabled check function to usage location.
- Address comments.

v4:
- Change conditions for GuC-based tlb invalidation support
  to a pci tag that's only active for MTL.
- Address some FIXMEs and formatting issues.
- Move suspend/resume changes to helper functions in intel_gt.h
- Improve comment for ct_handle_event change.
- Use cleaner if-else conditions.
- Address comments.

v5:
- Reintroduce missing change to selftest msleep duration
- Move suspend/resume loops from intel_gt.h to intel_tlb.c,
  making them no longer static inlines.
- Remove superfluous blocking and error checks.
- Move ct_handle_event exception to general case in
  ct_process_request.
- Explain usage of xa_alloc_cyclic_irq.
- Modify explanation of purpose of
  OUTSTANDING_GUC_TIMEOUT_PERIOD macro.
- Explain purpose of performing tlb invalidation twice in
  intel_gt_tlb_resume_all.

v6:
- Add this cover letter.
- Fix explanation of purpose of
  OUTSTANDING_GUC_TIMEOUT_PERIOD macro again.
- s/pci tags/pci flags
- Enable GuC TLB Invalidations separately from adding the
  flags to do so.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
CC: Bruce Chang <yu.bruce.chang@intel.com>
CC: Chris Wilson <chris.p.wilson@intel.com>
CC: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
CC: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
CC: Fei Yang <fei.yang@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>
CC: John Harrison <john.c.harrison@intel.com>
CC: Nirmoy Das <nirmoy.das@intel.com>
CC: Janusz Krzysztofik <janusz.krzysztofik@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>

Jonathan Cavitt (4):
  drm/i915: Add GuC TLB Invalidation pci flags
  drm/i915: No TLB invalidation on wedged or suspended GT
  drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
  drm/i915: Enable GuC TLB invalidations for MTL

Prathap Kumar Valsan (1):
  drm/i915: Define and use GuC and CTB TLB invalidation routines

 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  42 +++-
 drivers/gpu/drm/i915/gt/intel_gt.h            |   1 +
 drivers/gpu/drm/i915/gt/intel_tlb.c           |  39 ++-
 drivers/gpu/drm/i915/gt/intel_tlb.h           |   3 +
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |   2 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  23 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 236 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_driver.c            |   6 +
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   3 +-
 14 files changed, 379 insertions(+), 18 deletions(-)

-- 
2.25.1

