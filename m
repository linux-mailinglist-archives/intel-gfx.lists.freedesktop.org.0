Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B7B78F024
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 17:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95BD010E696;
	Thu, 31 Aug 2023 15:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16A9510E68F
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 15:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693495282; x=1725031282;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qtUKb17RFQF1ZXrUBL+49CnViiNmYSkdYwek5Nig+is=;
 b=AmuLwekRnkdyH9n2nnhmwIrSqKE6geg6B86WzFC0zldMMa/kBfcNJvQy
 2ZV/nF0hXSRbSxG/FhNeYjYExxMKPA4Adw/MX03HXSF1lPKY3r4yVnco+
 lgVENBfY5o/c5mgUEdCRXd/M4RDjQ9xT0ngBc4HimReGZIM74sr6r38uL
 tSH/dg/fzzYG/S+EOrCVfeTD4g4Zkr8p7oiB6DNHl56d5tPEudgXIEg9e
 ZBBcGIxZQ7BWMNG088b1hJVKCXOGL67UUSIkRpGPS50NNhAhNKt5nr+Rt
 4xiQbIiviqQzUFomh6l3GwnQibBgIzzQds0sZd3281QvpfO8EnlQMGDPW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="375916977"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="375916977"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 08:20:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="863122604"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="863122604"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 08:20:35 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Aug 2023 08:09:53 -0700
Message-Id: <20230831150955.36525-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] Apply Wa_16018031267 / Wa_16018063123
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

