Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9227A5056
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 19:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D2F10E28A;
	Mon, 18 Sep 2023 17:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B5E10E291
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 17:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695056627; x=1726592627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=60+UBHp1ldWW3uLTLo1fJ1EAlHOXcqK13ygMkuCLYFE=;
 b=M2hi/1DOmeEIsIVwaddQ66CutpP77aZ+Zwxi7B1m9YYny95FFN4RK0Xz
 3Dou/aoR0jWB6an4ujuNyTrbTfawSuAAPv5P3gMnUpB3q49RK1GaVfJGA
 +F7NP0yXv4s/8QHUMf/ZdEnfzy/5pAWukQm9g0GIxW9d8TqSgBMn/awe9
 CCDgcqeRo2QPzi9dLKb9dOXVuV7A9ulaWo2e6k82BPKfyyGLlzJ/Rmf9K
 9OQCXWHyruT2yeEkZV/KgoSCs5l0/ECsNnNe0AqCHntMl/rYQS9Zzvuph
 WejblDlxexhEGXr/ZoO9qZtcWX0Velwpm3NfqFauyZOLByV8nqKSHp3fI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="378626016"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="378626016"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="816109781"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="816109781"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:04 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 19:02:50 +0200
Message-ID: <20230918170257.8586-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] Update GGTT with MI_UPDATE_GTT on MTL
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
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement a way to update GGTT using MI_UPDATE_GTT command 
when possible for MTL as a suggested work around for HW bugs,
Wa_13010847436 and Wa_14019519902.

v2: Fix lockdep warning related to GT wakeref vs 
    blitter engine wakeref.

v3: Rearrange patches/diffs to fix code mixups(Andi)

v4: fix ce leak(Oak)

v5: rebase & resend with new "Test-with"

Test-with: 20230918164747.30171-1-nirmoy.das@intel.com

Chris Wilson (1):
  drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex

Nirmoy Das (6):
  drm/i915: Create a kernel context for GGTT updates
  drm/i915: Implement for_each_sgt_daddr_next
  drm/i915: Parameterize binder context creation
  drm/i915: Implement GGTT update method with MI_UPDATE_GTT
  drm/i915: Toggle binder context ready status
  drm/i915: Enable GGTT updates with binder in MTL

 drivers/gpu/drm/i915/gt/intel_engine.h       |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  35 ++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c         | 235 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.c           |  18 ++
 drivers/gpu/drm/i915/gt/intel_gt.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_gtt.c          |   5 +
 drivers/gpu/drm/i915/gt/intel_gtt.h          |   5 +
 drivers/gpu/drm/i915/i915_driver.c           |   5 +
 drivers/gpu/drm/i915/i915_scatterlist.h      |  10 +
 drivers/gpu/drm/i915/intel_wakeref.c         |  43 ++--
 11 files changed, 340 insertions(+), 23 deletions(-)

-- 
2.41.0

