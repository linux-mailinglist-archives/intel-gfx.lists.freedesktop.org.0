Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFBB709BA5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 17:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C212310E533;
	Fri, 19 May 2023 15:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490FB10E545
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 15:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684511388; x=1716047388;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nMwbtztxjUug9RXxMdYljPC864ddMQIqu6ZA5x3vuig=;
 b=TuKAXBVYpj6GrM6qkOKpYCfn/XoqjOJ4YuuB45A7UQvn6GVQKNJInRki
 ruTjaFohycekVsSZ/9pSWlZ0NX/vC+xjOXviA2sjlLV+gs65aVbdcHVUn
 q0gPE6AuMSYG2U/on9zQGqZ3lO8WymON44l1CC9shF3WK75OK/z2r+pM8
 soP2KCYPjEQQqGsMhJfz27JhUi5fW69y7SZhrEea6GGBtNULZ/n3LFS9s
 FO0LqkCh//5Dxm1V7KXQpbFEdLad4D+lmq2k41SLRTGZgBYB9wIij7ZeZ
 LRz6lLkrh7zNG+08y+XIPttldu+Gw899MsW3t0P3qoyReZ4N5Z6pZxSgq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="354759564"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="354759564"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="1032652185"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="1032652185"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:49:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 May 2023 08:49:39 -0700
Message-Id: <20230519154946.3751971-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/7] Add MTL PMU support for multi-gt
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

With MTL, frequency and rc6 counters are specific to a gt. Export these
counters via gt-specific events to the user space.

v2: Remove aggregation support from kernel
v3: Review comments (Ashutosh, Tvrtko)
v4:
- Include R-b for 6/6
- Add Test-with
- Fix versioning info in cover letter
v5:
- Include "drm/i915/pmu: Change bitmask of enabled events to u32"
v6: s/u64/u32 (Ashutosh)
v7: CI rerun with updated IGT

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230519154650.3751855-1-umesh.nerlige.ramappa@intel.com

Tvrtko Ursulin (7):
  drm/i915/pmu: Change bitmask of enabled events to u32
  drm/i915/pmu: Support PMU for all engines
  drm/i915/pmu: Skip sampling engines with no enabled counters
  drm/i915/pmu: Transform PMU parking code to be GT based
  drm/i915/pmu: Add reference counting to the sampling timer
  drm/i915/pmu: Prepare for multi-tile non-engine counters
  drm/i915/pmu: Export counters from all tiles

 drivers/gpu/drm/i915/gt/intel_gt_pm.c |   4 +-
 drivers/gpu/drm/i915/i915_pmu.c       | 290 ++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h       |  22 +-
 include/uapi/drm/i915_drm.h           |  17 +-
 4 files changed, 238 insertions(+), 95 deletions(-)

-- 
2.36.1

