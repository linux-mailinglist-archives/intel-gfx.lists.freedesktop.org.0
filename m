Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 711DD5F6030
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 06:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90BE10E7DC;
	Thu,  6 Oct 2022 04:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C67010E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 04:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665030992; x=1696566992;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/E9YbIb0vYxPcZwne/d57Ol68g/DDTPpb5IuWdNQymo=;
 b=lor3S7PaabKPSB4YYGzkKIPUtdbEoFCm83HVrCbuCgj8LYYAJu0+vMaS
 hcQEavRRuR3fN8CR0OvGLc0ZLt1scTfNyiCE66IBNeYbpk4PQLZsiuFC8
 vYDunVQ50unOl+vpZpe7uLV6I6m6oc8UuAb469kbJiftCAxozMtr8XUjs
 esTv6/iK+MNUEMUbRMgiQlHiNZaLGIYFz/9hWudaOsVxwjLrNwJwfpMV2
 F8QTz3hydKa2jn+aHRFV9bpfCf1gVgD2ADIs+73dGwYIJdlCWzHdtNtZt
 6kOijuU7UxCAXwkqGmRJnKoDG0raEft2EMrvmC5z9nsocxdgyGjcikuRc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="290599846"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="290599846"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 21:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="953462909"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="953462909"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2022 21:36:31 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 21:38:26 -0700
Message-Id: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915/pxp: Prepare intel_pxp entry
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
   v1: Add one more patch to the series for the intel_pxp suspend/resume
       for similiar refactoring

Alan Previn (7):
  drm/i915/pxp: Make gt and pxp init/fini aware of PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_is_enabled implicitly sort PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_is_active implicitly sort PXP-owning-GT
  drm/i915/pxp: Make PXP tee component bind/unbind aware of
    PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_start implicitly sort PXP-owning-GT
  drm/i915/pxp: Make intel_pxp_key_check implicitly sort PXP-owning-GT
  drm/i915/pxp: Make intel_pxp power management implicitly sort
    PXP-owning-GT

 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  4 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         | 10 +--
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  5 ++
 drivers/gpu/drm/i915/gt/intel_sa_media.c      |  4 +
 drivers/gpu/drm/i915/i915_drv.h               |  6 +-
 drivers/gpu/drm/i915/i915_pci.c               |  1 +
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 79 ++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 10 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |  7 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       | 44 ++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       | 22 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 21 ++++-
 19 files changed, 177 insertions(+), 59 deletions(-)

-- 
2.34.1

