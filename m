Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23252849038
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 20:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4373F10E8FF;
	Sun,  4 Feb 2024 19:58:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CHig8IVB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1A2F10E898
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707076736; x=1738612736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nRBOy0syiHNpRfXIP/Q/UnwchNoV5RctH1ZZBWx1v5k=;
 b=CHig8IVB2+n5xxvcpBShuy/IokUGbieDtTKAVsoxen27OGFQlH/I1USd
 cI3prBRzhsHNK8MzVgIgnTTcZ7I76oyKtmDJ1MxW70Zdo8Rv2Ms1S6p/S
 siXcnO/FVEyA3lcH9+RwLDBxnh3MEZGO8y8sbZjENZA4VoNmT5P5F8imv
 QvPhzhtI7LiXhpvtwePTaHWjRJbj2TwD9xSr+Y4PrNdv5rGaip36jqyEk
 jFgsfoXGtih+ptXQ7RPo6BWGJpEXhfenRLPRAL7HEVcSVO7Zev1458Psg
 MYpGZHjansYuXEprp4D+Zuf0Axssw2HTdpKTwn+LvzWFHk99Sg+gyguxF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="311177"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="311177"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 11:58:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5160724"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 04 Feb 2024 11:58:51 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [RFC PATCH 0/5] Cursor Fault Fixes
Date: Mon,  5 Feb 2024 01:22:02 +0530
Message-Id: <20240204195207.3616932-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

This series is based on top of [1] floated by Maarten.
To fix, regressions seen in CI following changes were made on top of the
original series.

1. add a check in the plane state destroy hook to not move forward if the vblank worker is scheduled.
2. add checks before accessing frame buffer object (we are not sure yet how much this helps but we have found that this operation causes dump stacks)
3. do not defer the intel atomic cleanup into a work queue, instead execute it at the end of atomic commit tail.

While this series is in noway a complete or proper solution it is meant to trigger a discussion to arrive at one.

[1] https://patchwork.freedesktop.org/series/126934/

Chaitanya Kumar Borah (3):
  drm/i915: do not destroy plane state if cursor unpin worker is
    scheduled
  drm/i915: Add sanity checks before accessing fb buffer object
  drm/i915: do not defer cleanup work

Maarten Lankhorst (1):
  drm/i915: Use the same vblank worker for atomic unpin

Ville Syrjälä (1):
  drm/i915: Use vblank worker to unpin old legacy cursor fb safely

 .../gpu/drm/i915/display/intel_atomic_plane.c | 55 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
 drivers/gpu/drm/i915/display/intel_crtc.c     | 27 +++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   | 26 ++++++++-
 drivers/gpu/drm/i915/display/intel_cursor.h   |  3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 11 ++--
 .../drm/i915/display/intel_display_types.h    |  3 +
 7 files changed, 120 insertions(+), 9 deletions(-)

-- 
2.25.1

