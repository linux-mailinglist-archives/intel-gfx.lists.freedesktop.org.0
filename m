Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE454F3AFA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 17:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658FB10E715;
	Tue,  5 Apr 2022 15:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C7010E70A;
 Tue,  5 Apr 2022 15:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649171276; x=1680707276;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N/0w0Quv4oMhaEpe6FYAGImWYpQbUM1iYG5c/wC+Bcg=;
 b=UqbrmTJ05KuHzp0jL2Bgy2hd2BtDeT5PDTOKPd9+BRLYOabyLeMKrODD
 TkszzXpszTuA/mzvsgMGnrQkPYL2yjJltTOCoSIY5ZWifk3n6BD4oNTuz
 SWch9yEjqIPCHLOLJjsLDUvpB1JHOI+4XQdFq3RMX1LXlahMOpaPF/8Tc
 WtMXIafRFYZzEOkrC0A28iAh4ZCbqu13kswiqr9HJXxanSyOIdc50/Jac
 8/4IlQpBEijGYZdKHG3iAk3urrCWaUqjrh6lNXrxyCqNiN84hVSIAXkry
 yKvzicSFq1lsBdt9ra5EuZyCAQnaK75mYG8G0asBc3wJpG7dYnu/kLcXE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="240706442"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="240706442"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:07:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="641644290"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:07:54 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Tue,  5 Apr 2022 20:38:31 +0530
Message-Id: <20220405150840.29351-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 0/9] drm/i915/ttm: Evict and restore of
 compressed object
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

On Xe-HP and later devices, we use dedicated compression control
state (CCS) stored in local memory for each surface, to support
the 3D and media compression formats.

The memory required for the CCS of the entire local memory is
1/256 of the local memory size. So before the kernel
boot, the required memory is reserved for the CCS data and a
secure register will be programmed with the CCS base address

So when we allocate a object in local memory we dont need to explicitly
allocate the space for ccs data. But when we evict the obj into the smem
to hold the compression related data along with the obj we need smem
space of obj_size + (obj_size/256).

Hence when we create smem for an obj with lmem placement possibility we
create with the extra space.

When we are swapping out the local memory obj on flat-ccs capable platform,
we need to capture the ccs data too along with main meory and we need to
restore it when we are swapping in the content.

When lmem object is swapped into a smem obj, smem obj will
have the extra pages required to hold the ccs data corresponding to the
lmem main memory. So main memory of lmem will be copied into the initial
pages of the smem and then ccs data corresponding to the main memory
will be copied to the subsequent pages of smem.

Swapin happens exactly in reverse order. First main memory of lmem is
restored from the smem's initial pages and the ccs data will be restored
from the subsequent pages of smem.

Extracting and restoring the CCS data is done through a special cmd called
XY_CTRL_SURF_COPY_BLT

v8 and v9:
  New patch for return value fix
  Fix a return error code

Test-with: 20220405141050.16037-1-ramalingam.c@intel.com

Ramalingam C (9):
  drm/i915/gt: use engine instance directly for offset
  drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+
  drm/i915/gt: Optimize the migration and clear loop
  drm/i915/gt: Pass the -EINVAL when emit_pte doesn't update any PTE
  drm/i915/gt: Clear compress metadata for Flat-ccs objects
  drm/i915/selftest_migrate: Consider the possible roundup of size
  drm/i915/selftest_migrate: Check CCS meta data clear
  drm/i915/gem: Add extra pages in ttm_tt for ccs data
  drm/i915/migrate: Evict and restore the flatccs capable lmem obj

 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      |  30 +-
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  21 +
 drivers/gpu/drm/i915/gt/intel_migrate.c      | 387 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/selftest_migrate.c   | 253 ++++++++++--
 4 files changed, 631 insertions(+), 60 deletions(-)

-- 
2.20.1

