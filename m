Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABC350ED8A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 02:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D7B10EF3E;
	Tue, 26 Apr 2022 00:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26EB210EEF3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 00:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650932465; x=1682468465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tx3xmaQUI3oOrnW7FV4DO4SUMFDe6j0BaJv2CpGOd5c=;
 b=n8v4mVIDfLfNzyrvtV4g5DkKu+vKmfa0VOaJ1q8qvpuBhjc5lqj3ghcz
 qKSPfUgGb3Gjq/jMvjCk3W6vmbwErowSEM56JLzYY9UhYapyHkmUx9oy3
 G5mKLMy3rO8i197EqJ++Eie7CPVG7qb4+zwD9zF5OpiMA+OJLuLN4y/vy
 ohtJloM3KWYhRrBKWB/GOvQKBEsinb8KJh6WqiuHOMthqm9tCSQHqDcPs
 HDwM1OEGRYh0Q2c4vJkzWUryCk6nWNVSLWOq7u2biZOcKyVjhAn0dbE+Q
 qfI8fJIvEiy3G1yc/sEzMDfL5S3TJQtRXDLz32DxmTYogJusgZ8FGymHq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="262997456"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="262997456"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 17:21:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="564318289"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 17:21:04 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Apr 2022 17:20:54 -0700
Message-Id: <cover.1650931855.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: Media freq factor
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split out the first two patches (which already have R-b) from:

https://patchwork.freedesktop.org/series/102665/

so that they can go through CI and be merged while we work through reviews
of the remaining patches.

Test-with: 20220426000337.9367-1-ashutosh.dixit@intel.com

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Ashutosh Dixit (2):
  drm/i915: Introduce has_media_ratio_mode
  drm/i915/gt: Add media freq factor to per-gt sysfs

 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 130 ++++++++++++++++++
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  20 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 9 files changed, 166 insertions(+)

-- 
2.34.1

