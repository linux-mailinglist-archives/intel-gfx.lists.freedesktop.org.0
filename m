Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D905607DA0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 19:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0EDE10E17F;
	Fri, 21 Oct 2022 17:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC0A10E17F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666373852; x=1697909852;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CaJpLi1eftesvuSvoyokl3UgB1JhW85kYHYlHmsWokg=;
 b=nTuGOShpfsBJbV/0LhZktSBFHfA3XAhINDuDSJavQdy6BrupMm9GZS61
 c6eh/9kp3KTG4W7PX+nN0Moy2hgMOXI755cMYquHYA5ZIqvOxQ8fraEfK
 kEoKcGu9U7R7vVSafazTsTG7UbDDHTnKwhB3nPuhjYPsVsHiawdBLzdLc
 Hlk2CbOBFQT3f1lE2FohuU0cN57+JXNVZXhNRSR6xDxVeXJrJDBFvgpyg
 c/b213esWqf/iwXgPqI3WwXWUg60Cokzibeww+/6cGroNletm563GKuQ4
 ribbyT9+fbW6vXalw6wQtC8C5Ed5fdyP6gJlJRvR0c1BQqsAB/8yAgqLS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286781659"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286781659"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 10:37:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="755898784"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="755898784"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2022 10:37:31 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 10:39:40 -0700
Message-Id: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/6] drm/i915/pxp: Prepare intel_pxp entry
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
   v2: - Avoid introduction of new device info or gt variables and use
         existing checks / macros to differentiate the correct GT->PXP
         control ownership (Daniele Ceraolo Spurio)
       - Don't reuse the updated global-checkers for per-GT callers (such
         as other files within PXP) to avoid unnecessary GT-reparsing,
         expose a replacement helper like the prior ones. (Daniele).
   v1: Add one more patch to the series for the intel_pxp suspend/resume
       for similiar refactoring

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
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 96 ++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 15 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 18 +++-
 12 files changed, 126 insertions(+), 41 deletions(-)


base-commit: 2d478d9598e835d952e7383b91ecc6fad6c624c2
prerequisite-patch-id: 81ce49bc04baa5bb11c05a74c756b13172e20bf3
prerequisite-patch-id: 541e7cb9133f684b52dfd9766adf927b3c8020c7
prerequisite-patch-id: 12e1fca75d27bd709dab9e9ca9ffb0126c6dc20d
prerequisite-patch-id: 6ac8d22df34db9e7d467b1ab95ad30f94841d5db
prerequisite-patch-id: f3fa135a3d73937cd923d642d2ad8c0760ac3175
prerequisite-patch-id: 61e40b88ca38aefdc6c17c0e6b83b875a832bc63
prerequisite-patch-id: 6f3232e12fbcf0e0cb312a040a2002de75e70842
prerequisite-patch-id: 46bc9cefd8b30b05c67a5b716d4ed045a62cac14
prerequisite-patch-id: fc2cb39b246060e635341a1afe4b2405ea615948
prerequisite-patch-id: b0e8d2c244bfa0b3235757b4304d8a0e30ad8263
prerequisite-patch-id: 0286c05f8ab431bd64925b533b75554d23403368
prerequisite-patch-id: 0449925cca36664b566f614bfb7d573a11f0575f
prerequisite-patch-id: 589984288c63b80b977c2207c206d5ee7fee95fa
prerequisite-patch-id: 92fdfb264c5c3e5260ac3694fe81861990bcaea0
prerequisite-patch-id: 78927aa21ee5861e6b52bef9955747836aeae671
prerequisite-patch-id: 65035537c403786c441b4923de1b2d8fecd2e1c9
prerequisite-patch-id: c4e8795fca364a616bd8fb45f9ee494b8562c2b8
prerequisite-patch-id: 8422c8394afa49ad81b6181431eecd2bc58a795c
prerequisite-patch-id: 1773517e679e5d6edf5930ce88e07576272ef055
prerequisite-patch-id: 541ce19060961f8fa097b946a306c0e0a4149eaf
prerequisite-patch-id: a803b51482f6e2d9cbda4b483f8520cee51dd337
prerequisite-patch-id: 8594d5dd0e743715dc1ffe3059dd3396e468d19f
prerequisite-patch-id: 2ab92d13ef03489b1a8f5f1103077ce02622a045
prerequisite-patch-id: c86ea938209873803eca30a1221d900f9c496f43
prerequisite-patch-id: f5e9703c738b05df12b50ed4421cca17b888908f
prerequisite-patch-id: 5cf07b65e26273b35723f9443d0f37d2f067df5e
prerequisite-patch-id: e25314fa6eddcf872897afd7c2eea38c2d79f2fb
prerequisite-patch-id: 1a218d6b5bb1284811c520c64e1a7ad34569a56a
prerequisite-patch-id: 3db039e977b397dd45dd676226fc4ab704f480b5
-- 
2.34.1

