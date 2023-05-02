Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702D56F475F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C599D10E314;
	Tue,  2 May 2023 15:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE63410E375
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041886; x=1714577886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sh9lYzq+KVwi4b64ddWMZ8ilb+Pjii9Zn0PUgyN6j+Q=;
 b=g3S9tLppISLq4aaQFuGzPuPB73waYkEtIDxhkrdIEzEi7XV5/cA2TZMI
 Vr6mWu+krITbuOCUIG0dpm/TIKoPbEkcVBTsaYk3u2AoT6+TQv0ie5Zq8
 SVn8QzUHY5Aq51VEGUEyTsEWAMEgmopNMMbW+eYj0c+UPalQ6RUjSVgB2
 AzO8BIWz8w0u7OjX43d/SfrJZ5bDmX8Q5bFWNBi/wwhJV2WcaGet+mFbX
 8T4mc4uaTLkJUxTfMHBGPQZTU3mq1DrZ82N/qaJUrC3oedG2r98qwZ/kG
 nItzGnQSDdm7ExIDsc2mSNQoHHx2+AZeozyfDhxS8niVOuxS0cVNa4R/J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889288"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889288"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="673699614"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="673699614"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:37:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:17 +0300
Message-Id: <cover.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/24] drm/i915: fix kernel-doc warnings,
 enable kernel-doc -Werror
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix all the remaining kernel-doc warnings, and enable -Werror for
kernel-doc.

Jani Nikula (24):
  drm/i915/gvt: fix intel_vgpu_alloc_resource() kernel-doc parameter
  drm/i915/vma: fix kernel-doc function name for i915_vma_size()
  drm/i915/utils: drop kernel-doc from __wait_for()
  drm/i915/vma: document struct i915_vma_resource wakeref member
  drm/i915/vma: fix struct i915_vma_bindinfo kernel-doc
  drm/i915/perf: fix i915_perf_ioctl_version() kernel-doc
  drm/i915/error: fix i915_capture_error_state() kernel-doc
  drm/i915/request: drop kernel-doc
  drm/i915/gem: fix i915_gem_object_lookup_rcu() kernel-doc parameter
    name
  drm/i915/gem: fix function pointer member kernel-doc
  drm/i915/ttm: fix i915_ttm_to_gem() kernel-doc
  drm/i915/engine: fix kernel-doc function name for
    intel_engine_cleanup_common()
  drm/i915/context: fix kernel-doc parameter descriptions
  drm/i915/gtt: fix i915_vm_resv_put() kernel-doc parameter name
  drm/i915/engine: hide preempt_hang selftest member from kernel-doc
  drm/i915/guc: add dbgfs_node member kernel-doc
  drm/i915/guc: drop lots of kernel-doc markers
  drm/i915/guc: add intel_guc_state_capture member docs for
    ads_null_cache and max_mmio_per_node
  drm/i915/active: fix kernel-doc for function parameters
  drm/i915/pmu: drop kernel-doc
  drm/i915/pxp: fix kernel-doc for member dev_link
  drm/i915/scatterlist: fix kernel-doc
  drm/i915/scatterlist: fix kernel-doc parameter documentation
  drm/i915: use kernel-doc -Werror when CONFIG_DRM_I915_WERROR=y

 drivers/gpu/drm/i915/Makefile                 |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_region.h    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h       |  1 +
 drivers/gpu/drm/i915/gt/intel_context.h       |  6 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  2 +-
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h | 20 ++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  2 +-
 drivers/gpu/drm/i915/gvt/aperture_gm.c        |  2 +-
 drivers/gpu/drm/i915/i915_active.h            | 14 ++---
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/i915_pmu.h               |  6 +--
 drivers/gpu/drm/i915/i915_request.h           | 52 +++++++++----------
 drivers/gpu/drm/i915/i915_scatterlist.h       |  9 ++--
 drivers/gpu/drm/i915/i915_utils.h             |  2 +-
 drivers/gpu/drm/i915/i915_vma.h               |  2 +-
 drivers/gpu/drm/i915/i915_vma_resource.h      | 46 +++++++++-------
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  4 +-
 22 files changed, 103 insertions(+), 82 deletions(-)

-- 
2.39.2

