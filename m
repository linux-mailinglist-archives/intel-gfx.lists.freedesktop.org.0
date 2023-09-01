Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89F878FFB1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 17:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AD310E80A;
	Fri,  1 Sep 2023 15:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43A610E023
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 15:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693581066; x=1725117066;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=88ZVt/B3a5idW2gwPIUUq6fWnQHG064pq15wpHF6l4M=;
 b=nlChU4+oW1hanl5uX1jfaPt9fMi4IhZfqZGDv+ZXhdmLl7fKVCeXdkvY
 WYOdO1/mSp/oNaMRkf1mBQebcR+M+7WZcGtfNrmx+620AZ5yGo1qoSB3l
 lbL8XO+993FAdHWisU3DkI6jbOEQFOrV24iE/xGHnY2zlKMq4IspEFnzz
 afYWm1n64Cnze6RBrQnG5biNRTjPQxurSClyUYl9m2ApZRTyCnQByAzxk
 dxJ6Tt7lDOyJOrpeAvE9wciMTwpp+SvMFmoQy39m9QWZG2B9naA9KR2Za
 O1Oy3sW9kchKTj6C5oM9cHvP079/p7/LJDuyMwTwDAVhpv4KsueFpIxo+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="440212152"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="440212152"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 08:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="733560042"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="733560042"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 08:11:06 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 08:00:24 -0700
Message-Id: <20230901150026.284883-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] Apply Wa_16018031267 / Wa_16018063123
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
Cc: tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apply Wa_16018031267 / Wa_16018063123.  This necessitates submitting a
fastcolor blit as WABB and setting the copy engine arbitration to
round-robin mode.

v2:
- Rename old platform check in second patch to match
  declaration in first patch.
- Refactor second patch name to match first patch.

v3:
- Move NEEDS_FASTCOLOR_BLT_WABB to intel_gt.h.
- Refactor NEEDS_FASTCOLOR_BLT_WABB to make it more
  streamlined to use.
- Stop dividing PAGE_SIZE by sizeof(u32) when computing
  ctx_bb_ggtt_addr for lrc_setup_bb_per_ctx.
- Reduce comment complexity.
- Fix several checkpatch warnings.

v4:
- Actually stop dividing PAGE_SIZE by sizeof(u32) when
  computing ctx_bb_ggtt_addr for lrc_setup_bb_per_ctx.

v5:
- Stop dividing PAGE_SIZE by sizeof(u32) in
  check_ring_start during lrc live selftest.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Tomasz Mistat <tomasz.mistat@intel.com>
CC: Gregory F Germano <gregory.f.germano@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: James Ausmus <james.ausmus@intel.com>

Jonathan Cavitt (2):
  drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
  drm/i915: Set copy engine arbitration for Wa_16018031267 /
    Wa_16018063123

 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |   2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 107 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   5 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 ++++++++----
 6 files changed, 168 insertions(+), 21 deletions(-)

-- 
2.25.1

