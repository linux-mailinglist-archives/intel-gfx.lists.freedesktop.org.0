Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A00948FBF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 14:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 251FC10E355;
	Tue,  6 Aug 2024 12:57:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U++BO+/A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6900C10E355;
 Tue,  6 Aug 2024 12:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722949033; x=1754485033;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EFVJ0sqowUgk9hbypjPbbILVXtk9h5Ee0aSS8Os2bTo=;
 b=U++BO+/AK9MlloYCZ5oN4VXFSeOICVdBg1A4o0K+Vu+wlr/ytEh37acA
 aN1QSEDvqQWOERqtNhmHPeSrjEDpuUmI7f8IpbSKjxZsWJaAbc4YzkXZ+
 Qpz0WGOp8XLTKcINz/620n5e6R7HOH+yq8iqojTWqWsUcQJxDNNCNxduo
 VHwbDAe00hOU9B1ngBd/FPV/cyB5dHG/1l3BKM9RHz5wTrok+fpVRrcg6
 4n4xW22fc6GPRt+ISchkwezXkW1fglXue9CTKC1h5vg6jHnHBQdfUZJst
 G1nfWrMUUlhd6Z2B9wBt3HnYVHxR17ppWEegh/vqJzfQ3vKAyh9Zh5Vd1 Q==;
X-CSE-ConnectionGUID: T0L7GcHjSLOiBZSCPMwfkQ==
X-CSE-MsgGUID: qjP8UzU+S6yrTozof1WZqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21142067"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="21142067"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:57:13 -0700
X-CSE-ConnectionGUID: cnvkkTaqR3mpA8EN1brG3w==
X-CSE-MsgGUID: NZ19DpXlRoSbvbcfpabv0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="79762898"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:57:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
Date: Tue,  6 Aug 2024 18:28:21 +0530
Message-ID: <20240806125827.2183899-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

The HDMI PLL programming involves pre-calculated values for specific
frequencies and an algorithm to compute values for other frequencies.
While the algorithm itself wasn't part of the driver, tables were
added based on it for known modes.

Some HDMI modes were pruned due to lack of support (for example issues
[1],[2], and [3]).
This series adds the algorithm for computing HDMI PLLs for SNPS/C10PHY
to work with all modes supported by the hardware.

The original algorithm uses floating-point math, which has been
converted to integers while preserving precision. As a result,
the values in the existing computable tables are very close but not
exact. Testing with DG2 and MTL on various panels revealed no issues.

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9722
[2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10654
[3] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10956

Rev2:
-Changed the name of the new file for HDMI PLL algorithm.
-Fixed styling issues and bit refactoring for readbility.
-Fixed issues reported by kernel test bot.

Ankit Nautiyal (5):
  drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
  drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
  drm/i915/cx0_phy_regs: Add C10 registers bits
  drm/i915/pll_algorithm: Compute C10 HDMI PLLs with algorithm
  drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  49 +--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 -
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  24 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 -
 .../drm/i915/display/intel_snps_hdmi_pll.c    | 362 ++++++++++++++++++
 .../drm/i915/display/intel_snps_hdmi_pll.h    |  17 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  37 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   1 -
 drivers/gpu/drm/xe/Makefile                   |   1 +
 10 files changed, 425 insertions(+), 80 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h

-- 
2.45.2

