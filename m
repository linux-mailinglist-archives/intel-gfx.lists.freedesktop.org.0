Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 170A15F5A84
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E04B610E757;
	Wed,  5 Oct 2022 19:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E01B810E392
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664997403; x=1696533403;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1oq7+D/FWa4oxdNwinvF+Lld3E02bbpG/ClzDJbtm4o=;
 b=gDUTHaTR/angTaqaO/eNLoWzm5W5Ejxibgkq5AQn1CpB14vqNBNkOVJD
 XPxD2CSTi7giYGYf50WwcxYEHLqV1DKXjzmoHbuu5ZKCYvUbFXnriC/yf
 ZxpwICjbDc4nPAqRjQg1UYQRcIJYBk9Ry6sysdWrLFjmhe1dOUldZ95n1
 b3O60nsxTPFX+NtacPc5wmQegqBmzH/m5RHBLUF9SaNvqGmlbp6kbh31N
 SCtOlVLs3pEfYDdBiGbKuFAYyvz6HCmFzIyvKn4VL93yEXt2mV1MWMfwi
 ILXMsmV5na9kbfrneXbUMPLKeo82Ku21EnRuyu+aIlMV1azl49lF2CK8g Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="283618485"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="283618485"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="602132206"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="602132206"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2022 12:16:35 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 12:18:32 -0700
Message-Id: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915/pxp: Prepare intel_pxp entry
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
 drivers/gpu/drm/i915/gt/intel_gt.c            |  4 +
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
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 21 ++++-
 17 files changed, 130 insertions(+), 38 deletions(-)


base-commit: eeba73dc310025dbbf2edf81098cd114cbcec54b
-- 
2.34.1

