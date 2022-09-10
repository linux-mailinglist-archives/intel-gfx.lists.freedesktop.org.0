Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 003E85B46DD
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 16:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4892D10E1E6;
	Sat, 10 Sep 2022 14:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A9410E1E4
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Sep 2022 14:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662820728; x=1694356728;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qGhB+V3zghSa97YuScVkE0tjlkW7TolISaaX736XKn4=;
 b=Uo5uJOAsJvBpe3G3M9HFbm5H5rj3XZ2b22Ph2Dirc1TtGDSMTPVnPygC
 zGQWm52+9uUwdu4XqJvQbBX5rAdm6Dbf5PU7+/BlDaW8laejwj021IosD
 7aFmNlCscgzyVKkep5By7LKWvL47POBIdiU/sn/2QfJETWLrb8b8Rkvct
 GpRgTV/riDfEimzRzewy5W77oJoQ9hw2IXZ/880DnfPxV7qhTHEe5SBSA
 Ato+iozvDm3TbRxK1/b4wq3sknBAMOLQRFmDKc0W848vQmNJa4e19GPXQ
 zVKgBkYiE3bxGCxNsLwve0JneEEoYIcY0S3kpOoLIIQ0++5OHISPMuffG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10466"; a="295231746"
X-IronPort-AV: E=Sophos;i="5.93,306,1654585200"; d="scan'208";a="295231746"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 07:38:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,306,1654585200"; d="scan'208";a="566685277"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 07:38:47 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Sep 2022 07:38:41 -0700
Message-Id: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] i915: freq caps and perf_limit_reasons
 changes for MTL
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

Since https://patchwork.freedesktop.org/series/107908/ is now merged,
rebase this series on latest drm-tip and post a clean series.

Ashutosh Dixit (2):
  drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
  drm/i915/rps: Freq caps for MTL

Tilak Tangudu (1):
  drm/i915/debugfs: Add perf_limit_reasons in debugfs

 drivers/gpu/drm/i915/gt/intel_gt.c            |  6 +++
 drivers/gpu/drm/i915/gt/intel_gt.h            |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 +++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  6 +--
 drivers/gpu/drm/i915/gt/intel_rps.c           | 46 +++++++++++++++----
 drivers/gpu/drm/i915/i915_reg.h               | 11 +++++
 6 files changed, 89 insertions(+), 12 deletions(-)

-- 
2.34.1

