Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04941490B2A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jan 2022 16:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACA510E3A1;
	Mon, 17 Jan 2022 15:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EA010E3A5;
 Mon, 17 Jan 2022 15:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642432168; x=1673968168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vtzUIZZWjkSisETv1ver7NNGnY6RZaYsdprVpsFObbk=;
 b=SodUojhCpRh/zIiSqSBgisxcbu3TQ48AIIVfuEGNic2T5dRB4i3DvLMm
 /rkfC8xtvGWTEBWHOtyrgXbdm4iXwQ8xGt2MDtaD9idYRmmehX6YPaZsT
 tKemZX1G7O2VbadXjtycTDUIYknLZW57Uy5uMdIuDg5rvmXTdb3btFnw0
 9qvR5RIFlgtSS4fQ4co0Omj5d6gQTtXIaRhaFqtBj+4AvuPNWt9H0+Sch
 mHfwo/btEQXUJW2hU3Px3TfieYQvRFSS9S1jxbFuCBpITHKvuBRRFtLUZ
 8T+H/CUL93CFtqZvz8Tv15PKgx1hqx9MAnvxgfy4/G6PSS3HDHUY/zfQH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10229"; a="224620408"
X-IronPort-AV: E=Sophos;i="5.88,295,1635231600"; d="scan'208";a="224620408"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 07:09:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,295,1635231600"; d="scan'208";a="517444299"
Received: from ashvay-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.49.118])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 07:09:20 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Mon, 17 Jan 2022 17:09:08 +0200
Message-Id: <20220117150910.231889-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Introduce multitile support
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
Cc: Abdiel Janulgue <abdiel.janulgue@gmail.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
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

Thanks,
Andi

Patchwork: https://patchwork.freedesktop.org/series/98741/

Changelog
=========
v2 -> v3
 - Added Matt and Sujaritha's r-b for patch 1 and 2.
 - Reworded the commit of patch 2 to underline the fact that the
   interface is useful also when used manually.
v1 -> v2
 - fixed a couple of coding style issues in patch 2.

Andi Shyti (1):
  drm/i915/gt: make a gt sysfs group and move power management files

Tvrtko Ursulin (1):
  drm/i915: Prepare for multiple GTs

 drivers/gpu/drm/i915/Makefile                 |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 141 ++++++-
 drivers/gpu/drm/i915/gt/intel_gt.h            |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   9 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   7 +
 drivers/gpu/drm/i915/gt/sysfs_gt.c            | 126 ++++++
 drivers/gpu/drm/i915/gt/sysfs_gt.h            |  44 ++
 drivers/gpu/drm/i915/gt/sysfs_gt_pm.c         | 393 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/sysfs_gt_pm.h         |  16 +
 drivers/gpu/drm/i915/i915_driver.c            |  29 +-
 drivers/gpu/drm/i915/i915_drv.h               |   8 +
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 drivers/gpu/drm/i915/i915_sysfs.c             | 315 +-------------
 drivers/gpu/drm/i915/i915_sysfs.h             |   3 +
 drivers/gpu/drm/i915/intel_memory_region.h    |   3 +
 drivers/gpu/drm/i915/intel_uncore.c           |  12 +-
 drivers/gpu/drm/i915/intel_uncore.h           |   3 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   5 +-
 18 files changed, 785 insertions(+), 348 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/sysfs_gt.c
 create mode 100644 drivers/gpu/drm/i915/gt/sysfs_gt.h
 create mode 100644 drivers/gpu/drm/i915/gt/sysfs_gt_pm.c
 create mode 100644 drivers/gpu/drm/i915/gt/sysfs_gt_pm.h

-- 
2.34.1

