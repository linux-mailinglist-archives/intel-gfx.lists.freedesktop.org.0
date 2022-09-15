Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF0E5B928C
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 04:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C149810EA38;
	Thu, 15 Sep 2022 02:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2902C10E23A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 02:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663207836; x=1694743836;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OBrU+hj3TQrZAxcSkysLiR3BJqRZ2f3iSfyBLUO4y6E=;
 b=m47GcpjMl5eD/gIM/kSFsCoRk4Qm6gzZCHK3MLrWVgse58fiUppZO/W0
 jWSgXjfyvZsdpG6fHe7GowkL5E2KGyeHkkNSrF1lD7hongYIgprByVOWI
 HLEHFdR72XPIhEWl/Z1+ksMWOTb4kHHty3kgH99zGmeTI50q37pzJ5p7B
 /jCoP3ogsdfKU6pkMjG+aHpwqbC+ELp0jxaI3MOOcwmn0NxzX/IrJByb3
 TwEKMyrtwqRYsLbriTrRyl287I24MT0kx3vSCiDvEzuSZLaJvoexlLhXf
 CTxAX6py/d7W6m7DKF/FznRo1J0eA1Vgut+qhixZRnVdENYU8RvQJ4P2p Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="324849102"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="324849102"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 19:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="619518013"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga007.fm.intel.com with ESMTP; 14 Sep 2022 19:10:35 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 19:12:17 -0700
Message-Id: <20220915021218.1412111-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Delay disabling GuC scheduling of an idle
 context
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

This series adds a delay before disabling scheduling of the guc-context
when a context has become idle to avoid costly re-registration that may
occur immediately after. The 2nd patch should explain it quite well.

The origin of this series was posted by Matthew Brost back in Oct 2021
(https://patchwork.freedesktop.org/series/96167/). However no real
world workload performance impact was available until recently proving
it's intended results.

This series is a redo of a prior patch that was reverted:
2ccddb758079d0c62ce03e69ee8929bb212f7799 drm/i915/guc: Add delay to
disable scheduling after pin count goes to zero

The cause for the reversion is now fixed here (was not caught due to
issues with CI reporting at that time). Two additional changes included
in this redo:
 - Resolve race between guc_request_alloc and guc_context_close in
completing the delayed disable-guc-scheduling worker.
 - GT Reset flow properly closing contexts that were pending for the

Matthew Brost (1):
  drm/i915/guc: Delay disabling guc_id scheduling for better hysteresis

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   8 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  16 ++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  60 +++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 220 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 7 files changed, 288 insertions(+), 27 deletions(-)


base-commit: 37b0cd34584fab54ae910bffd0f148c8ceb2a9c7
-- 
2.25.1

