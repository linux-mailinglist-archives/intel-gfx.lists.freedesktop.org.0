Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A788AC71B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09B610F4BF;
	Mon, 22 Apr 2024 08:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DRsY+Gd2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A1810F4BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774900; x=1745310900;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U0c7FHRblFkELZXjm7FVFGlpHGGV0wCU40iN6qHapUg=;
 b=DRsY+Gd2Xe9s9g9aVYaTl1HT0y5rklLgTcbVKsAWKLPR+XrGZYfhp9/Q
 Rl8YdDeuqgWoIdpUk0E9MEbN/w2jdin78Gd6luuqkT51qN1pv6dFliuZL
 Ue9gZIrtnWASVCRT6aaQ3CTuFPshx1eWF7Pf0ckr1mUpURymPho8BA0Nd
 K0i6BrbTEje6Vl6O4WZ5VNXm6p/Dd2pD1Lkt7OCfQM7YtehHBeVPPFE5f
 Oo0ync5HOkGhIXmyLNn/1kShzFK0EbY85V0c7N4q22Jl+sxq3KWuD9D7a
 DuNONiIDADPgeeuXDnkH+YOgOSYAOdDMY2iLQpHhwtf4IV3iqmaHLLtc8 g==;
X-CSE-ConnectionGUID: itPzI9z9QYmvN51tXfR6Bw==
X-CSE-MsgGUID: 1FKjhGhxRf+mDFzQujg1ug==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453443"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453443"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:00 -0700
X-CSE-ConnectionGUID: qdxi8XAGTdusBXK8gIrVnw==
X-CSE-MsgGUID: OrtQbD/ZQwy9VbeTfY2Llg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021712"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:34:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:34:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/14] drm/i915: VLV/CHV DPIO register cleanup
Date: Mon, 22 Apr 2024 11:34:43 +0300
Message-ID: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Polish the VLV/CHV DPIO stuff and extract vlv_dpio_phy_regs.h
to declutter i915_reg.h a bit.

Ville Syrjälä (14):
  drm/i915/dpio: Remove pointless VLV_PCS01_DW8 read
  drm/i915/dpio: s/VLV_REF_DW13/VLV_REF_DW11/
  drm/i915/dpio: s/VLV_PLL_DW9_BCAST/VLV_PCS_DW17_BCAST/
  drm/i915/dpio: Fix VLV DPIO PLL register dword numbering
  drm/i915/dpio: Remove pointless variables from vlv/chv DPLL code
  drm/i915/dpio: Rename some variables
  drm/i915/dpio: s/port/ch/
  drm/i915/dpio: s/pipe/ch/
  drm/i915/dpio: Derive the phy from the port rather than pipe in
    encoder hooks
  drm/i915/dpio: Give VLV DPIO group register a clearer name
  drm/i915/dpio: Rename a few CHV DPIO PHY registers
  drm/i915/dpio: Clean up VLV/CHV DPIO PHY register defines
  drm/i915/dpio: Clean up the vlv/chv PHY register bits
  drm/i915/dpio: Extract vlv_dpio_phy_regs.h

 drivers/gpu/drm/i915/display/intel_display.c  |   1 +
 .../i915/display/intel_display_power_well.c   |  16 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 148 ++++----
 drivers/gpu/drm/i915/display/intel_dpll.c     | 260 +++++++------
 .../gpu/drm/i915/display/vlv_dpio_phy_regs.h  | 309 ++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 343 ------------------
 drivers/gpu/drm/i915/vlv_sideband.c           |   1 -
 7 files changed, 515 insertions(+), 563 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_dpio_phy_regs.h

-- 
2.43.2

