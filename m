Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572469177C1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 07:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B381C10E76C;
	Wed, 26 Jun 2024 05:00:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bmw3Dbo3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEAB10E759;
 Wed, 26 Jun 2024 05:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719378015; x=1750914015;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EzOgNfh8BxCHoGZYVpJWC0ve6PR6yIzNIEtBfiSEarg=;
 b=bmw3Dbo3VYg2HxT+M72u83F18KoMlEX8zRca2ohDjstlB06IjBlzbuFa
 kNdtu8yNzJwUCwN9ualFyERqoui3MfHVO+GhFkXK/afFPjNXvYEUhPkNn
 bdE2It8QYmr+g+LTGo1DUu8JmLxFGB0thklLWlnhXhp21i0rg/ciNyH7s
 y2vRnSRYGbVgVLI+/pfkp6144MrAn8rs1cKQKFhMUbMpg3c3mjCvtaVf2
 67XJp0U9T8neR2m++wDiOgLJmJfhj7G/09ulHp32GvwInR4KgnceI0Lw+
 68of0bP5B1GHf12T7xIxjCrLfT5zJPPY/CJp8s170l+QdevXbN6zrqp0z A==;
X-CSE-ConnectionGUID: 6Hq3R0DaRniB0T1ozit/tQ==
X-CSE-MsgGUID: LSoK3lapTN2LDTge7BTXRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="33962352"
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208";a="33962352"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:00:14 -0700
X-CSE-ConnectionGUID: eDXniAj9RZC6YZlmByXcdg==
X-CSE-MsgGUID: Tq2+HJRaSFyXO68UE43Mtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208";a="44588199"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:00:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mika.kahola@intel.com, matthew.d.roper@intel.com
Subject: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
Date: Wed, 26 Jun 2024 10:30:51 +0530
Message-Id: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

Ankit Nautiyal (5):
  drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
  drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
  drm/i915/cx0_phy_regs: Add C10 registers bits
  drm/i915/pll_algorithm: Compute C10 HDMI PLLs with algorithm
  drm/xe: Add intel_pll_algorithm in Makefile

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  15 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  24 ++
 .../drm/i915/display/intel_pll_algorithm.c    | 317 ++++++++++++++++++
 .../drm/i915/display/intel_pll_algorithm.h    |  41 +++
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  20 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 7 files changed, 407 insertions(+), 12 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pll_algorithm.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pll_algorithm.h

-- 
2.40.1

