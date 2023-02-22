Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A131569EF6A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA1910E423;
	Wed, 22 Feb 2023 07:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ED6110E3EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051351; x=1708587351;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0+KheqYQhdA4C71Kg7N//1xNLtdvLCUzWLh4xNnit/Q=;
 b=B0dk67ccZVQY6LeEjIM/rYjkTy1RIPZMeUlSTzrurbqVOQG0bwWYRnyM
 3PvIC3QIVPfvRoYjtFRXOGZgEGHFKugCPN9YBxYMDfAtYMXs9nWj/wY+X
 H/QpiinqPpDe2VjJKnl4EOvGhm/DFsgQNJmN0Z60awS1GzfVHH++eqqew
 yHRHizk3AVLNOImpZjMpbqUyQwi0tx6J84zJfoHQiHNi1YSZZa/vAUZnN
 tcIZ+LORiEWcjpSUod1ztJoxDRzcPjqbCWrTMxSktBAZSuN8lXS0akc7k
 8HdK1YzbRw9oHjbhl5PTYlXekqe8Rf8Ctunsd0fTKmSfjT2KF2NtDCq4H g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544102"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544102"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811226"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811226"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:34:58 -0800
Message-Id: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] Misc Meteorlake patches
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

There are 2 GT related patches 1 to handle interrupts for both
render and media gt, 1 patches to generate per gt debug files.

There are 4 patches for CCS support, 1 for the phy to hold its values
during dc9 entry/exit, 1 fbdev related fix, 1 patch that fixes implementation
of a workaround.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Andi Shyti (1):
  drm/i915/gt: generate per tile debugfs files

Clint Taylor (1):
  drm/i915/mtl: Add MTL for remapping CCS FBs

José Roberto de Souza (1):
  drm/i915/display/mtl: Program latch to phy reset

Juha-Pekka Heikkilä (2):
  drm/i915/mtl: define MTL related ccs modifiers
  drm/i915/mtl: Add handling for MTL ccs modifiers

Pallavi Mishra (1):
  drm/i915/mtl: Drop FLAT CCS check

Radhakrishna Sripada (2):
  drm/i915/mtl: Fix Wa_14015855405 implementation
  drm/i915/mtl: make IRQ reset and postinstall multi-gt aware

Tejas Upadhyay (1):
  drm/i915/fbdev: lock the fbdev obj before vma pin

 .../drm/i915/display/intel_display_power.c    |  8 +++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 35 +++++++++++--
 drivers/gpu/drm/i915/display/intel_fb.c       | 51 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 24 ++++++---
 .../drm/i915/display/skl_universal_plane.c    | 22 +++++++-
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  4 +-
 drivers/gpu/drm/i915/gt/intel_migrate.c       |  4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  5 +-
 drivers/gpu/drm/i915/i915_irq.c               | 28 ++++++----
 drivers/gpu/drm/i915/i915_reg.h               | 12 +++--
 include/uapi/drm/drm_fourcc.h                 | 43 ++++++++++++++++
 12 files changed, 204 insertions(+), 34 deletions(-)

-- 
2.34.1

