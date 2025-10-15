Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0DEBDEA1B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86BFE10E7CF;
	Wed, 15 Oct 2025 13:05:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GvQs/jiH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0CB10E7CF;
 Wed, 15 Oct 2025 13:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760533536; x=1792069536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+MaAEAWwfY/YgB+nXPd4b5YVGUHNYWndjIP9eQ5pjzE=;
 b=GvQs/jiHhG3/kxEg8HUHdow8iaIbgJJhTKHwskWXCUJR6UAWF69Ev99q
 FqO0Cdacuz9qUoUfv/RBJAPm9ig0TJ+O3fqVsCYCmJ9iqvrj+Gj24n5xd
 4hCrRjvdKWYsTkkMdz+HKBSFFPRFf71O3KdLvhgFw0WDZy8dUP0OEE6OA
 9e4M58Ay+4/y654Mt4JY276M+VGOaKP+AzyYfhHtqUNNUKtWQ0eoa8xZ5
 La0josPJVnKiOL9bI1DvBxZIizihuSroXjUvpllCwA3u+jLQV5fHt7Ykg
 Ma/Lpx3XXVaxpXttqEKYg5JlahI7SMIihqCuSLKK+kz46oC+kNJv+KQdz w==;
X-CSE-ConnectionGUID: A1koYU+wS06bcKzmVn8PNQ==
X-CSE-MsgGUID: YQzV1BPeQ6KEpzlFFTRZWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80341293"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="80341293"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:05:36 -0700
X-CSE-ConnectionGUID: IB5cptWsQ0eNrcYhV+zTmw==
X-CSE-MsgGUID: OnM9UBkpS+K8SVl2tqsgYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186586958"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2025 06:05:35 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 0/7] drm/i915/display: Fix C20 PHY PLL DP/HDMI mode programming
Date: Wed, 15 Oct 2025 15:54:39 +0300
Message-Id: <20251015125446.3931198-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

This patchset fixes the DP/HDMI mode programming for C20 PHY PLLs. While at it,
it also adds the missing port clock HW readout for C10 PHY PLLs.
 
These patches were originally part of the RFC PLL rework patch series [1],
now resent separately since they include a fix, which as such should be
tested/merged separately.

[1] https://lore.kernel.org/all/20251001082839.2585559-1-mika.kahola@intel.com

Imre Deak (7):
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE
    field macros
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_DP flag
    macro
  drm/i915/display: Sanitize
    PHY_C20_VDR_CUSTOM_SERDES_RATE/CONTEXT_TOGGLE flag macro
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_HDMI_FRL
    flag macro
  drm/i915/display: Fix PHY_C20_VDR_CUSTOM_SERDES_RATE programming
  drm/i915/display: Fix PHY_C20_VDR_HDMI_RATE programming
  drm/i915/display: Add missing clock to C10 PHY state compute/HW
    readout

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 43 ++++++++++++-------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 10 +++--
 .../drm/i915/display/intel_snps_hdmi_pll.c    |  2 +
 3 files changed, 36 insertions(+), 19 deletions(-)

-- 
2.34.1

