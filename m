Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEA963B69E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 01:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E481910E35C;
	Tue, 29 Nov 2022 00:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4F210E358
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 00:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669681763; x=1701217763;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8hKF0YLxVNCZEzsUun+STnoCKQSbarnPXA0FaYEj/WA=;
 b=ZlBkdepwIjwfG3/TPkcENqggv6B2Cj0TDtf49JzgMlSgjJdgUI8/pq/0
 3x1jCRNp2nJfZx4TYoieFjJQ4KbTNlEbCESgm25K/vN9cDa597k+gi2hg
 rif30o35N1BZUxp+3Yr7l0kBG9m/N4FeRPwXaprc/4GOkppVgsd12JJeo
 CiTPz4IJpIDYHXZUIXvrI4j6wZe63H+LPlgKNwJRjWL/OdfHe+68Vi18B
 eX/yRwzmlao7i+C7LrUW8Gf7qymP/HHB+eYZ1jST3KDrgNKPdcTnzKaUC
 YIzMEfXQuNbvdPkYnbsEORyIa4gdC/6jcCMs60ToeTlKuEDy4lI9lr2hQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="298333487"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="298333487"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:29:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="888638565"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="888638565"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 28 Nov 2022 16:29:22 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 16:31:51 -0800
Message-Id: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/1] drm/i915/pxp: Prepare intel_pxp entry
 points for MTL
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

MTL has two tiles that is represented by the intel_gt structure in the i915
code. The PXP feature has a control-structure that currently hangs off the
intel_gt structure. In MTL, the standalone media tile (i.e. not the root
tile) contains the VDBOX and KCR engine which are among several assets
that PXP relies on for establishing and tearing down the PXP session.

However PXP is a global feature as other engines on other tiles can reference
the PXP session in an object's info within batch buffer instructions. That
coherrency is handled implicitly by the HW. In fact, for the forseeable future,
we are expecting this link whereby only one of the tiles will be the control-gt
for the PXP subsystem.

Keeping the intel_pxp structure within the intel_gt structure makes some
internal functionalities more straight forward but adds code complexity to
code readibility and maintainibility to many external-to-pxp subsystems
which may need to pick the correct intel_gt structure. An example of this
would be the intel_pxp_is_active or intel_pxp_is_enabled functionality which
should be viewed as a global level inquiry, not a per-gt inquiry.

That said, this series promotes the intel_pxp structure into the
drm_i915_private structure making it a top-level subsystem and the PXP
subsystem will select the control gt internally and keep a pointer to
it for internal reference.

Changes from prior revs:
   v4: - Instead of maintaining intel_pxp as an intel_gt structure member and
         creating a number of convoluted helpers that takes in i915 as input
         and redirects to the correct intel_gt or takes any intel_gt and internally
         replaces with the correct intel_gt, promote it to be a top-level i915
         structure.
   v3: - Rename gt level helper functions to "intel_pxp_is_enabled/supported/
         active_on_gt" (Daniele)
       - Upgrade _gt_supports_pxp to replace what was intel_gtpxp_is_supported
         as the new intel_pxp_is_supported_on_gt to check for PXP feature
         support vs the tee support for huc authentication. Fix pxp-debugfs-
         registration to use only the former to decide support. (Daniele)
       - Couple minor optimizations.
   v2: - Avoid introduction of new device info or gt variables and use
         existing checks / macros to differentiate the correct GT->PXP
         control ownership (Daniele Ceraolo Spurio)
       - Don't reuse the updated global-checkers for per-GT callers (such
         as other files within PXP) to avoid unnecessary GT-reparsing,
         expose a replacement helper like the prior ones. (Daniele).
   v1: Add one more patch to the series for the intel_pxp suspend/resume
       for similiar refactoring

Alan Previn (1):
  drm/i915/pxp: Promote pxp subsystem to top-level of i915

 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  5 --
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  1 -
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  8 ---
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 -
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            | 20 ++++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 72 ++++++++++++++-----
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  6 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  8 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  | 41 +++++++----
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h  |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 10 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  8 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    | 11 +++
 21 files changed, 150 insertions(+), 70 deletions(-)


base-commit: d21d6474a37e5d43075a24668807ea40a7ee9fc1
-- 
2.34.1

