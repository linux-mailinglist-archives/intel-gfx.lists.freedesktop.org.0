Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E627A0EAD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 22:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE45C10E2B3;
	Thu, 14 Sep 2023 20:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D73D10E0D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 20:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694721857; x=1726257857;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XJtmv6En7A8Ucr+hJBbA8OxrTHjWeoJLmXo0HRIcJf8=;
 b=ljRjsW5ubovf9sKQWjiqUM+1DTxo48MmTHFwbWEmsWNtIWKtvImf26nT
 zaqCVSVYFsjuoTsW3gtGpIos+rRJNCKk9molYakYpXZexwpThWG4p7TDJ
 RLwA4z4llhtWapJxwl86vuGyAMdt7vcnHF9y7AWcGJCeGieIw3iM98P7v
 8Z7YbVbzHpRpyFkPYabDbFSUDyBDxSWVUpTXBE38IH1ztWrG3qM1200cn
 1WM+MAY5JUfwaO81aIj35cCiZyB1bwH7v5+NeG5omjlQAkdAyyH432K/M
 hhbEG+8LyS2/4gpsKjZq9UEXtk1DiFfuFBvyY/zumuXI2ypSN9NKvWFyM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="364109004"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="364109004"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 13:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="744671011"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="744671011"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 13:04:15 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 12:53:32 -0700
Message-Id: <20230914195335.2607636-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 0/3] Apply Wa_16018031267 / Wa_16018063123
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
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

v6:
- Append MI_BATCH_BUFFER_END to end of all PER_CTX_BB
  command streams.
- No longer skip on empty, as command stream will never
  be empty (always contains at least MI_BATCH_BUFFER_END).
- No longer append MI_NOOP until cachline aligned (was a
  fragment from INDIRECT_CTX setup).

v7:
- Use 0x6b instead of 0 for color to maintain functionality.

v8:
- Revert v7.
- Add some reserved kernel space per vm to run the
  workaround on.

v9:
- Hide reserved kernel space per vm from userspace.

v10:
- Revert v7 properly.
- Test on updated IGT.

Test-with: 20230914172332.2322524-2-jonathan.cavitt@intel.com

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Tomasz Mistat <tomasz.mistat@intel.com>
CC: Gregory F Germano <gregory.f.germano@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: James Ausmus <james.ausmus@intel.com>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: Andi Shyti <andi.shyti@intel.com>

Jonathan Cavitt (3):
  drm/i915: Reserve some kernel space per vm
  drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
  drm/i915: Set copy engine arbitration for Wa_16018031267 /
    Wa_16018063123

 drivers/gpu/drm/i915/gt/gen8_ppgtt.c        |   7 ++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |   2 +
 drivers/gpu/drm/i915/gt/intel_gtt.h         |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   5 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++++----
 8 files changed, 169 insertions(+), 21 deletions(-)

-- 
2.25.1

