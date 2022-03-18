Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3E44DD2DB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 03:11:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C0310E946;
	Fri, 18 Mar 2022 02:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD9810E937;
 Fri, 18 Mar 2022 02:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647569478; x=1679105478;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+sOD+62jhtek17XZ0/dlyRkx8BhH24o4T5jP0sqFbxg=;
 b=E2H4EeRErynCJqGS0uve0bYKTh61HVQozq0nMKfznUy9moygYqEYEzry
 hd2U6P2ST2k4W+ulbyBd6BoGjXREXhYCqzT37FH35+U82jrBAVGgKDtAn
 DgShw3VR6SBKVFxVYVlzZmjRoN5OzaURim4UVfXG5578uyuTJiUCP93EX
 v6P6SUhyrRRt6k9pLbYKkm4gYGwFykLs7RP+wcifiEfBydbV1KGI1+QwH
 L6zP/xBZ4wzofTeJq1HfgSz+ys+BC86ocgm59lakfggpD8Y2o3wRm1JPW
 vvyW4psXR+rfB15Ny58Tu1Y+TamjC54gemq5LXvaaonkvT8bZOptz8YMv g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="256977034"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="256977034"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 19:11:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="558203161"
Received: from akramak-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.222.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 19:11:13 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Fri, 18 Mar 2022 04:10:39 +0200
Message-Id: <20220318021046.40348-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/7] Introduce multitile support
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

This is the second series that prepares i915 to host multitile
platforms. It introduces the for_each_gt() macro that loops over
the tiles to perform per gt actions.

This patch is a combination of two patches developed originally
by Abdiel, who introduced some refactoring during probe, and then
Tvrtko has added the necessary tools to start using the various
tiles.

The second patch re-organises the sysfs interface to expose the
API for each of the GTs. I decided to prioritise this patch
over others to unblock Sujaritha for further development.

A third series will still follow this.

Thanks Michal and Andrzej for the reviews and support!

Thanks,
Andi

Patchwork: https://patchwork.freedesktop.org/series/98741/

Changelog
=========
v5 -> v6
 - address all Michal and Andrzej's reviews that consist mainly
   in code refactoring.

v4 -> v5
 - fixed Michal's reviews.
 - the sysfs patches have been split in 3 parts to make reviews
   easier.
 - Sujaritha's patch on pm throttle has been queued.
 - INTEL_REGION_LMEM has been renamed to INTEL_REGION_LMEM_0
 - added the gt_is_root() helper
 - the sysfs files will be called intel_gt_sysfs_* instead of
   sysfs_gt_*

v3 -> v4
 - fixed Tvrtko's review:
    - remove the SYSFS_DEPRECATED_V2 mention from the commit log
    - reworded the error message when accessing deprecated files
    - errors in sysfs are printed as warnings as they are not
      fatal
    - the inline functions are moved to be out of line.
   and some other minor refactoring.

v2 -> v3
 - Added Matt and Sujaritha's r-b for patch 1 and 2.
 - Reworded the commit of patch 2 to underline the fact that the
   interface is useful also when used manually.

v1 -> v2
 - fixed a couple of coding style issues in patch 2.

Andi Shyti (5):
  drm/i915: Rename INTEL_REGION_LMEM with INTEL_REGION_LMEM_0
  drm/i915/gt: add gt_is_root() helper
  drm/i915/gt: create per-tile sysfs interface
  drm/i915/gt: Create per-tile RC6 sysfs interface
  drm/i915/gt: Create per-tile RPS sysfs interfaces

Sujaritha Sundaresan (1):
  drm/i915/gt: Adding new sysfs frequency attributes

Tvrtko Ursulin (1):
  drm/i915: Prepare for multiple GTs

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_fb.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   2 +-
 .../drm/i915/display/intel_plane_initial.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c      |   4 +-
 .../drm/i915/gem/selftests/i915_gem_dmabuf.c  |   6 +-
 .../drm/i915/gem/selftests/i915_gem_migrate.c |   8 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 135 +++-
 drivers/gpu/drm/i915/gt/intel_gt.h            |  22 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   9 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      | 122 ++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |  34 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 601 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.h   |  15 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   7 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |  18 +
 drivers/gpu/drm/i915/gt/intel_rps.h           |   4 +
 drivers/gpu/drm/i915/i915_driver.c            |  28 +-
 drivers/gpu/drm/i915/i915_drv.h               |   8 +
 drivers/gpu/drm/i915/i915_reg.h               |  11 +
 drivers/gpu/drm/i915/i915_sysfs.c             | 310 +--------
 drivers/gpu/drm/i915/i915_sysfs.h             |   3 +
 drivers/gpu/drm/i915/intel_memory_region.c    |   2 +-
 drivers/gpu/drm/i915/intel_memory_region.h    |   7 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  11 +-
 drivers/gpu/drm/i915/intel_uncore.h           |   3 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   7 +-
 scripts/extract-cert                          | Bin 0 -> 17952 bytes
 28 files changed, 1017 insertions(+), 366 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.h
 create mode 100755 scripts/extract-cert

-- 
2.35.1

