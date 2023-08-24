Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C8D787917
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFAC10E142;
	Thu, 24 Aug 2023 20:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8506010E142
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692907669; x=1724443669;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gtQGBVrmIZjCEpX0dd8wHz8N9MHB7dKaaXo7im1s51M=;
 b=HxI5OK/PxdtHh+kW0u5vwBNZKnY0mYEKiDM0q28Aa/JQCGaddK3fCmFi
 cESlHkeX7Qw1SyCX7BA1U1U6YZ+5Wb+nLte/1z/lF+xa1OKr0mpdGxDoX
 NwRixL0Ik1DihcQlwRL9eqQR+QmFYZ+BOo+B9u7tBlDtc1WsCCMBLtorP
 nmGJUuFktTbVh5n1tuTLMMIvyq6VfwOSC3UENddkzw/Ya3bMDJf68sKHX
 5s8Aqs4iqLTNr8fqNSWP5eMdvZjbFyT12kij27StI858MaG1ytTRIdNO5
 Q63KzRmvT9TV5mRBuGhRVJxDs2IdRn2v3G6KXLlCCym5wUXOU0lxYbZ4l Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354076120"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354076120"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:07:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="827304295"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="827304295"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:07:47 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 12:57:05 -0700
Message-Id: <20230824195707.2126899-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v3 0/2] Apply Wa_16018031267 /
 Wa_16018063123
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

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Tomasz Mistat <tomasz.mistat@intel.com>
CC: Gregory F Germano <gregory.f.germano@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: James Ausmus <james.ausmus@intel.com>

Nirmoy Das (2):
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

