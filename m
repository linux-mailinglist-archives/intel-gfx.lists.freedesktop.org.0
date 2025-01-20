Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E551A16613
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 05:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E882610E0BC;
	Mon, 20 Jan 2025 04:32:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jU6HwHwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B0610E0BC;
 Mon, 20 Jan 2025 04:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737347559; x=1768883559;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=exBuATFMF+KmrvFfVB89UDiNEDRfpnSLGfuUILIf1xc=;
 b=jU6HwHwObmcZnPzQLGIO4nET/L3tk3foyMlqfhNfku7FSA2uruP1+fNX
 ti37lDUxnvZuKzLb7i810COpRjPp4iiUn/EjQqaOkoUmiBRm0LJecgbHl
 FSETgOt2yvIlkfRjuZ/AojKJti4z5yqfJ3i/was0rbnwJ01cY8tfTE+2m
 FmUGd3JoVUaPbR5CedKU31MYO8biTh5jzqGO93Mgj6L1N1btIqnN7Ft3O
 fi4uL5IByG0lmcw22h6npUfwNjYcR/Qe8qscUmSribQPrgXQYB9JE3jOm
 gZnjUfwV8IpYa0ketf3gRbBTQZ7HuRL1bxLesNER0zg4EVDzM9PTYniQG Q==;
X-CSE-ConnectionGUID: CWUeiv8VS6WuvcnmuuIMAg==
X-CSE-MsgGUID: T+W1LhICScmBkOYkufjxlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="48700009"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="48700009"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:38 -0800
X-CSE-ConnectionGUID: iFG+0274T7eLc8oGJgjGIQ==
X-CSE-MsgGUID: tfQhg8P2TFy57O/rg7a1pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106315660"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:36 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
Date: Mon, 20 Jan 2025 09:51:16 +0530
Message-ID: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
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
-Change the name of the new file for HDMI PLL algorithm.
-Fix styling issues and bit refactoring for readbility.
-Fix issues reported by kernel test bot.

Rev3:
-Modify the names of helper functions to align with filename.

Rev4:
-Rebase, added Bspec references, and address review comments.

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
 .../drm/i915/display/intel_snps_hdmi_pll.c    | 364 ++++++++++++++++++
 .../drm/i915/display/intel_snps_hdmi_pll.h    |  17 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  37 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   1 -
 drivers/gpu/drm/xe/Makefile                   |   1 +
 10 files changed, 427 insertions(+), 80 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h

-- 
2.45.2

