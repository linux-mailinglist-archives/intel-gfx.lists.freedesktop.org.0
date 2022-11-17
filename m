Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE2962CF92
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:28:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E148F10E4FB;
	Thu, 17 Nov 2022 00:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B1410E4F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668644889; x=1700180889;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X+i3OgSQQYyUXHGCLiYp67QwHobztCE3pZNmGAieUrg=;
 b=DGBfA+IKwMsdWVillMPC01Wxww9LO4duDvNDm7nC9C31/xcyHwMWD+Em
 ntfK+tfAOfOvt42rajvgExqipMP2G4EQyqGddSbpa8zc2WJ0fmucOf/Gk
 uvLzTeXunl13pgaAm4JL4lpqYqogDl9x4b747cteOLA676OdfkV0WGqq1
 tINKEwnHR9zmn8d7fDXm/qHaCQ1Gzy7UtXZfadgtozmu6r1X+lb2sz/oY
 rpRpDiZ1+YQJzUZMMsnmN8YfzNWeX+FLwWDNQZReb0Duc7LgP5DhvTNAP
 Wp3nzSeMMvXtJSzE4XxypRg4E08PIVwIcdTVmdvhL2sAf0sNxTg70ejCS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312722091"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312722091"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:27:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="781985080"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="781985080"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2022 16:27:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 16:30:12 -0800
Message-Id: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/6] drm/i915/pxp: Prepare intel_pxp entry
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

MTL has two tiles that  is represented by the intel_gt structure in the i915
code. The PXP feature has a control-structure that contains the PXP context
and this hangs of the intel_gt structure. In MTL, the standalone media tile
(i.e. not the root tile) contains the VDBOX and KCR engine which is what
PXP relies on for establishing and tearing down the PXP session. However
PXP is a global feature as other engines on other tiles can reference the
PXP session in object info within batch buffer instructions.That coherrency
is handled implicitly by the HW. However current intel_pxp functions such
as intel_pxp_enabled, intel_pxp_start and others take in the intel_gt
structure pointer as its input thus creation the perception that PXP is
a GT-tile specific domain that is independant from other GT tiles.

This series updates all of the intel_pxp_foo functions that are accessed
from outside the PXP subsystem so that the callers only need to pass in the
i915 structure as the input param (being a global handle). Internally,
these functions will loop through all available GT structures on the GPU
and find the one GT structure that contains the one PXP+TEE control
structure before proceeding with the rest of its operation.

Changes from prior revs:
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

Patches that received R-B so far:
   Patch 4, 5, 6.

Alan Previn (6):
  drm/i915/pxp: Make gt and pxp init/fini aware of PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_is_enabled implicitly sort PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_is_active implicitly sort PXP-owning-GT
  drm/i915/pxp: Make PXP tee component bind/unbind aware of
    PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_start implicitly sort PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_key_check implicitly sort PXP-owning-GT

 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 -
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 83 ++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 16 +++-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 18 +++-
 12 files changed, 114 insertions(+), 41 deletions(-)


base-commit: b7288a4715c68710aadbd63112b699356e8a2b65
-- 
2.34.1

