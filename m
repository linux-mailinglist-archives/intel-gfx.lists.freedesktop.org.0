Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5A27AE82E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4B710E376;
	Tue, 26 Sep 2023 08:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009CC10E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695717472; x=1727253472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6sP2CSRq5sQTgFS7lU56veoti+uy6aFWLaZ9LLBBGYY=;
 b=XwRYgrf3pksXT3xjnIziy/wuaBjAtJBYaYllqZ/FysvmbO8KgIjbfTke
 yh5bRJ1hleom2UImWbhqsAarzmA6WfC6Ng6ZsGkb3zBTm/g/Od1AkPOD/
 Zy6ejZhbV4y894xa8FOc68qmvONtjZPCN006/PWiYNIzJzygn8MwDyzaq
 dZ4lGvLdi/cCNl2iSmCffrhUFZfERuE5k8lwlWDntlHXqoo04v7QH6ZaX
 5NDjvZtKz6eM66z7EM1R3J7Dxu/F8GEjXVIP648QVVF2YhP2x3bk7h/8z
 2U8kTBYNNK6+YXk84xJbXC7XN3Bncz+1gDtypq3ja+sUivlu9iA/vgTrj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381419207"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="381419207"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="1079623487"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="1079623487"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:50 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 10:37:35 +0200
Message-ID: <20230926083742.14740-1-nirmoy.das@intel.com>
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

1st patch improve pm wakeref handeling which needed as we
do GGTT update with vm->mutext held and not allowed to alloc
memory.

2: Fix lockdep warning related to GT wakeref vs
   blitter engine wakeref.

v3: Rearrange patches/diffs to fix code mixups(Andi)

v4: fix ce leak(Oak)

v5: rebase & resend with new "Test-with"

v6: move context ready status chnages to lower levels from
    i915_driver.c. Add more docs and improve function names.

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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  40 +++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c         | 235 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.c           |  49 ++++
 drivers/gpu/drm/i915/gt/intel_gt.h           |   3 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c        |   4 +
 drivers/gpu/drm/i915/gt/intel_gtt.c          |   5 +
 drivers/gpu/drm/i915/gt/intel_gtt.h          |   5 +
 drivers/gpu/drm/i915/i915_scatterlist.h      |  10 +
 drivers/gpu/drm/i915/intel_wakeref.c         |  52 ++--
 11 files changed, 380 insertions(+), 28 deletions(-)

-- 
2.41.0

