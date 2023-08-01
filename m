Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB57476B8CD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 17:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F403A10E40C;
	Tue,  1 Aug 2023 15:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D3310E406
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 15:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690904400; x=1722440400;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rTv9bODZAgTltTHvaeHHlTN47fMnzKAqcLuZkksORoU=;
 b=G1BbS7gnSgfy0OcPuyYXHEjIJ3Ns0FXO6O78CKyPwPNWVGECdKnT898X
 Pgx4XYWEf8IdGzPaduqlHVHJixIaBr1XjNur0Ym0MzYvOUB4nj+Jdth32
 VcEd5RIDylmhyjlX9cd2nQ+xoid+ayawsRdFIGHJTz4PtpwDEOT5ebtpt
 F4O+ogIwtHBJ83Oy21vC8FvajjvFweSfsLJKTB+pfXglnqPWaPXPqzwl9
 wTlGBpn4riI0riXN2/xamQx+qN6FIPE03EU+XcYrkxgVmVjiVsKxPDCbA
 ipVW9rE0ZxBTbU9+590Oyo1IubZJPLWpsZB8EH1vD0ruOPQggm3Q94IUl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435659014"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435659014"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 08:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="794237873"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="794237873"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 08:39:57 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 08:32:39 -0700
Message-Id: <20230801153242.2445478-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Fix Wa_22016122933 implementation
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
 jonathan.cavitt@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WA_22016122933 was recently applied to all MeteorLake engines, which is
simultaneously too broad (should only apply to Media engines) and too
specific (should apply to all platforms that use the same media engine
as MeteorLake).  Correct this for all current use cases.

There are two additional changes that deserve special attention:


First, the usage of the workaround in i915_coherent_map_type required
a more invasive change to check the gt, which was split into its own
patch.

Second, the addition of write barriers during ct_read and
gsc_fw_load_prepare were found to be unconditional, so the workaround
tags were removed as the usages were not platform dependent.

v2:
- Refactor i915_coherent_map_type to intel_gt_coherent_map_type and move
  it to the gt folder as it now takes an intel_gt instead of a
  drm_i915_private.

v3:
- Remove additional gt requirement from shmem_create_from_object.
  Instead of passing a gt to check if the workaround applies in
  intel_gt_coherent_map_type, only check if the object is lmem to
  determine the map type to use.

v4:
- Fix formatting warnings.
- Add this cover letter and all missing revision notes.
- Add missing acks and reviews to commit messages.
- Fix contributor ordering in commit messages.

Jonathan Cavitt (3):
  drm/i915/gt: Simplify shmem_create_from_object map_type selection
  drm/i915: Make i915_coherent_map_type GT-centric
  drm/i915/gt: Apply workaround 22016122933 correctly

 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    |  3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h       |  4 ----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c        | 15 ---------------
 .../drm/i915/gem/selftests/i915_gem_migrate.c    | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_engine_pm.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c               | 16 ++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h               |  9 +++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.c              |  4 ++--
 drivers/gpu/drm/i915/gt/intel_lrc.c              | 13 +++++++------
 drivers/gpu/drm/i915/gt/intel_ring.c             |  3 ++-
 drivers/gpu/drm/i915/gt/selftest_context.c       |  5 +++--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c     |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c           |  6 +++---
 drivers/gpu/drm/i915/gt/shmem_utils.c            |  3 +--
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c        |  7 +------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c           | 11 ++++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c        |  4 ----
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c        |  3 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c         |  3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c       |  3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c         |  5 ++++-
 drivers/gpu/drm/i915/selftests/igt_spinner.c     |  2 +-
 22 files changed, 71 insertions(+), 66 deletions(-)

-- 
2.25.1

