Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD27508082
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 07:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62FB10F166;
	Wed, 20 Apr 2022 05:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B6210F166
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 05:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650432112; x=1681968112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=inUHudJQtIbIRsFITLbvyhAXZyEjQEDE7gRYytCkmwE=;
 b=YB6wxAcQgZDIfkCP+VBc4JWXjNFnZH1mymzQoOV2/57Ct4TEx/crzTev
 hpIXDn22tEUR3JxB6ilxu2RtPDhwUQDTpkup+6LJ3r32q8YcswamI06u1
 yxnbhZNIctWs/ieLIfPLNPgDz6dV/VXG0J8eH2e4J71tbDRc3uNNfo3hM
 t2Wybf/WuFsOFBM1Of4yBV1EPs1HfkmbYAwUNdjDQ5ljGP8tySdesk5YI
 /5oyeTqMkofs+Or5XB4LSsDeW4NkrAWl9AV7c1vOnG5yhaAzmEKNLcy2i
 am8AxTNbVYzBzTFTnJgq3m8AdPJbqBmpeUUk0BVRijmNhr75gCo3rYVbe g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263405518"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="263405518"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 22:21:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="555035712"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 22:21:51 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 22:21:24 -0700
Message-Id: <cover.1650430271.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1649871650.git.ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: Media freq factor and per-gt
 enhancements/fixes
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
Cc: Andi Shyti <andi.shyti@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some recent Intel dGfx platforms allow media IP to work at a different
frequency from the base GT. This patch series exposes sysfs controls for
this functionality in the new per-gt sysfs. Some enhancements and fixes to
previous per-gt functionality are also included to complete the new
functionality:
* Patches 1 and 2 implement basic sysfs controls for media freq
* Patches 3 and 4 extend previous pcode functions for multiple gt's and
  patch 5 adds a couple of pcode helpers
* Patch 6 uses the new pcode functions to retrieve media RP0/RPn frequencies
* Patch 7 fixes memory leaks in the previous per-gt sysfs implementation and
  some code refactoring
* Patch 8 creates a gt/gtN/.defaults directory to expose default RPS
  parameter values in the per-gt sysfs
* Patch 9 adds the default value for media_freq_factor to gt/gtN/.defaults

IGT tests for this new functionality have also been posted at:

  https://patchwork.freedesktop.org/series/102664/

Test-with: 85c51c99da76e3fe286ed28e80fa964e148f6020.1650430680.git.ashutosh.dixit@intel.com

v2: Fixed commit author on patches 5 and 6 (Rodrigo)
    Added new patch 4

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>

Ashutosh Dixit (7):
  drm/i915: Introduce has_media_ratio_mode
  drm/i915/gt: Add media freq factor to per-gt sysfs
  drm/i915/pcode: Extend pcode functions for multiple gt's
  drm/i915/gt: Convert callers to user per-gt pcode functions
  drm/i915/gt: Fix memory leaks in per-gt sysfs
  drm/i915/gt: Expose per-gt RPS defaults in sysfs
  drm/i915/gt: Expose default value for media_freq_factor in per-gt
    sysfs

Dale B Stimson (2):
  drm/i915/pcode: Add a couple of pcode helpers
  drm/i915/gt: Add media RP0/RPn to per-gt sysfs

 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      |  41 ++-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |  12 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 246 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  14 +
 drivers/gpu/drm/i915/gt/intel_llc.c           |   9 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   9 +-
 drivers/gpu/drm/i915/gt/selftest_llc.c        |   4 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   4 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  39 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  18 ++
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_pcode.c            | 136 ++++++----
 drivers/gpu/drm/i915/intel_pcode.h            |  39 ++-
 23 files changed, 499 insertions(+), 101 deletions(-)

-- 
2.34.1

