Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 815EA666746
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA92810E2C5;
	Wed, 11 Jan 2023 23:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618CE10E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481375; x=1705017375;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bIkb67EMeDraCIDWqCohv6KG+6/T3isMA/ys7bmPZF4=;
 b=FcHzpmWqyFLPLArJGD4LdTaO7QcTj/aErOfL5Oc3KzTIEflQ85Fax0lW
 yzcsPLjeVybQupDSJmeKOX8l/ISdzzY2FqaieaWV03NcB2j8uqGhNhJ2n
 nG9aulufWvw6BGpgqXIEe44TWDa9Fq73IGbqQ5HXrGgl8p/EGuCcC+YOX
 r8ZdwOg4J7wlh8SYNr2fpSSdaTHFzVRpa9HaduGHIi5Wr/EHYYK+Gje8f
 GEWJd4t9ES76U4pHhbmPGC7UzlXSyWARU+zxkxgzeNgMvH75tl4whuaU6
 BOkzX8Ak2W5l/Mu0jcv71JX8WXtKx3YXb4EjmKKrrxkxwKeW11YXRO7wU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090892"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090892"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486363"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486363"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:22 -0800
Message-Id: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 0/9] Misc Meteorlake patches
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series adds patches needed for Meteorlake platform.

Yjere are 4 GT related patches 1 to handle interrupts for both
render and media gt, 2 patches to generate per gt debug files,
and the fourth patch to fix the bcs default context.

There are 5 display patches, 1 for the phy to hold its values
during dc9 entry/exit, 1 fbdev related fix, 1 patch fixes an earlier
workaround, 1 patch to init empty clock gating hooks and 1 patch
to skip informing punit about bw changes through mail box.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Andi Shyti (2):
  drm/i915/gt: generate per gt debugfs files
  drm/i915/debugfs: Multiplex upper layer interfaces to act on all gt's

José Roberto de Souza (1):
  drm/i915/display/mtl: Program latch to phy reset

Lucas De Marchi (1):
  drm/i915/mtl: Fix bcs default context

Paulo Zanoni (1):
  drm/i915/mtl: make IRQ reset and postinstall multi-gt aware

Radhakrishna Sripada (3):
  drm/i915/mtl: Initialize empty clockgating hooks for MTL
  drm/i915/mtl: Fix Wa_14015855405 implementation
  drm/i915/mtl: Skip pcode qgv restrictions for MTL

Tejas Upadhyay (1):
  drm/i915/fbdev: lock the fbdev obj before vma pin

 drivers/gpu/drm/i915/display/intel_bw.c       |  3 ++
 .../drm/i915/display/intel_display_power.c    |  8 ++++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 35 ++++++++++++++---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 24 +++++++++---
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 37 +-----------------
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  5 ++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  2 +
 drivers/gpu/drm/i915/i915_debugfs.c           | 38 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_irq.c               | 28 +++++++++-----
 drivers/gpu/drm/i915/i915_reg.h               | 12 ++++--
 drivers/gpu/drm/i915/intel_pm.c               |  4 +-
 13 files changed, 135 insertions(+), 67 deletions(-)

-- 
2.34.1

