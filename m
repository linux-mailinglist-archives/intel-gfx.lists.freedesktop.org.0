Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C3D94FC25
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 05:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3EAC10E1FB;
	Tue, 13 Aug 2024 03:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lynj/+u7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB8910E1F9;
 Tue, 13 Aug 2024 03:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723519109; x=1755055109;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=29l2fORF7NgU3J3h2YwLbIZtPUWSYNuna9rBKnw0XsI=;
 b=lynj/+u7THuWsUeylYwnVkW4fUOmm2LqYsv8Wae/C7LhzoT9EL87ZPat
 tUaY1V3fBxdWxnkWZRe/J0VEeQI5RU/r+xH9oCJpeQhpwpuKD0C+brBXc
 AM9xx3cpR+SdzRjcxJUAsdSTQbJ8dBNSfHlQ73r8S5N0uw0oKYnU7AuWA
 /5v3hAm6niLKbiMEqkcZ4z3jBJELXj1busrBXByJU7jTExRyP7Sx+2MA0
 sSiMYbilIXTKDmKFgrvDD+Tl5VaLaOTtuV6FdtKa3KNdk399D+O6yA3hb
 5m2T5C7i2uoEf9d32KcN4Z4UdxSr1H/EoULnVJ/9uNhx2Hf5306ox4FP5 Q==;
X-CSE-ConnectionGUID: Uo8QfwUmTUiIBX6UpBIk/g==
X-CSE-MsgGUID: 8KqzG6gfSoyiwWg4EfjSPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="33062852"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="33062852"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 20:18:28 -0700
X-CSE-ConnectionGUID: xlCM4OLGQqSIVePDnvca+Q==
X-CSE-MsgGUID: 4F61/OtRTdCY31gDwxJbWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58804772"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 20:18:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
Date: Tue, 13 Aug 2024 08:49:33 +0530
Message-ID: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
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

Rev3:
-Modified the names of helper functions to align with filename.

Ankit Nautiyal (5):
  drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
  drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
  drm/i915/cx0_phy_regs: Add C10 registers bits
  drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with algorithm
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

