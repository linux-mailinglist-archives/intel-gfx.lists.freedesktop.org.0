Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D221379E8BB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 15:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC3410E31D;
	Wed, 13 Sep 2023 13:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7F010E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 13:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694610672; x=1726146672;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TopdM91B5IerLK4GCKYMmjxD2Nsm3z0xoVmsHDu84wQ=;
 b=WjS6CtFbBLdL2dZdzaSlqxNuvxj6PEsEktAe81cKAcjhCATzhIUhIt+S
 5CsE7IJYimWTbdT+o5XIIVXxlz0aXnvGNPuclwa61UZxBJlypNOFMX2z4
 hERIcpa8YwWAx0H+kg4h1rk6NvQ4Nc0HCD1GnbCe6nQiQ/WMj4+VDtpjh
 U7YKcD3kVfx4T6lC8Hrf4oARMW8/odhVpEpQHARN8tKZsG/zC8sXnB9Rc
 217SsqrXGQa1cdF9lcnLBnuU/O0RIs4/+ivJfJ3LTq/4piPoV4gF7QbEr
 EXOi/LUHwQ5yY1LvgEy5z/41DKc/b2+dUvgaeNLdzAxkWCVEJQtxTM7gm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="382461088"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="382461088"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="747303638"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="747303638"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:40 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 15:09:27 +0200
Message-ID: <20230913130935.27707-1-nirmoy.das@intel.com>
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

Test-with: 20230913094252.6246-1-nirmoy.das@intel.com

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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  33 ++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c         | 235 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.c           |  18 ++
 drivers/gpu/drm/i915/gt/intel_gt.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_gtt.c          |   5 +
 drivers/gpu/drm/i915/gt/intel_gtt.h          |   5 +
 drivers/gpu/drm/i915/i915_driver.c           |   5 +
 drivers/gpu/drm/i915/i915_scatterlist.h      |  10 +
 drivers/gpu/drm/i915/intel_wakeref.c         |  43 ++--
 11 files changed, 338 insertions(+), 23 deletions(-)

-- 
2.41.0

