Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9C37A18EE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 10:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF91410E5CC;
	Fri, 15 Sep 2023 08:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00AC110E5CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 08:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694766868; x=1726302868;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2Bi84qngYbwmSCKmKUPV64x+dnQ3QcqPrn/e+fWMi08=;
 b=jV/Opch5grt9oSUNoWzv8iYchgUWzN57PFM4BDiC/vwdTXTTE19E1Sp+
 DfJrBImO7a7PVtuOdKYGUbFosm4UOtw5usyVCLDCbGRNowWScwMjj1XIQ
 8vlHGAL116ezgyq5gVZTpSgjG9rxs+H9ikipqquoGUoTsBW0TbXZXHmTm
 Vqy5fwZh+WZa0pgopp+cO9CVrYyjndWvdQxn7UaCOkWK1gCPN2p1vX2b2
 nRQ2Z7GuwSQarEJAPfEju638fomBo/iPkmy5bfSaa9bs1vt6sQ48/WCjA
 Z7G74YQvSZxRYniiV4EPZSKCWaFPocn80A8WAJxkj+b0ofnzL9tgsA4zg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="381925560"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="381925560"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694647694"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="694647694"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:25 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:34:05 +0200
Message-ID: <20230915083412.4572-1-nirmoy.das@intel.com>
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

Test-with: 20230914201809.1804-1-nirmoy.das@intel.com

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

