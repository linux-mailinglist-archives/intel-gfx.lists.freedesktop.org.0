Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A53787919
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA5AA10E08A;
	Thu, 24 Aug 2023 20:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09BC10E08A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692907736; x=1724443736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gtQGBVrmIZjCEpX0dd8wHz8N9MHB7dKaaXo7im1s51M=;
 b=lLYRuTNVomlo225J/+4bla2e6tt3lIdHAvwdd9VLVeoLHVeUmFd8JbSL
 jQCoSU29kIt2l4j7RqLS3y4dtu6GjsD73SE94cLQnNFhAaOoO+bZeR3JJ
 Op4VOZTWjqIdXh+03UnZr5gg7BbUGmpLZi2sMBS6Hl34Ht3ctNAXmWotB
 PCRwEaOB3MFbxkcHlZa0p8mQKoFKmDHLLLmZqvV8MYghI9lFsZr9BZjqq
 cR+oXY28yoL1NHlKpGw5jxBk4RIPezvUo6Ypo3gGPG6izrGf2U7FPJqJQ
 paeZfRiA9PajUj7pQh0oXogjoqfaqAcdCnNsnHo1RIC68vyh6B7mFr+e3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364736158"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364736158"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="687020843"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="687020843"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:08:53 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 12:58:14 -0700
Message-Id: <20230824195816.2127026-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Apply Wa_16018031267 / Wa_16018063123
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

