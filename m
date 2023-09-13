Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD3479E8C1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 15:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4867410E4B4;
	Wed, 13 Sep 2023 13:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43CA10E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 13:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694610673; x=1726146673;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TopdM91B5IerLK4GCKYMmjxD2Nsm3z0xoVmsHDu84wQ=;
 b=dUbAslhSwFvJbq6T2eC7OpNmGKXjXhfboRacJHxvSW3czzesYIdSrCw4
 qTZwJuon0XziU+wadY8lQ65RNSWdZrIUK1ibhbKTLCW84xCfnXj4tVLMr
 /ApkOhOBO8jVNM36r54JVweQq2I+ecQme/cVY3Z0iaYgXpi8h22Bfy5GH
 wVFzM7b8tLjLUuPz8qms7AFk/VE48qN0rvYSh8IM9VGq8W7OKJcOgRVK4
 3N+9sR/RJSPBiOQO87znfcKQqLt5mBteH8ZkzDrAIMquACLQVvP7H5/bW
 naKypTGOcN3z+WYnptYaykB5wPtXEGJHdS9RB8NKSsH6eBugjLVjInwAC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="382461094"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="382461094"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="747303642"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="747303642"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:43 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 15:09:28 +0200
Message-ID: <20230913130935.27707-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230913130935.27707-1-nirmoy.das@intel.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
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

