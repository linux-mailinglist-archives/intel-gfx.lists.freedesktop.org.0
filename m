Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52991AE3E32
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 13:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED4410E364;
	Mon, 23 Jun 2025 11:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q0621a2N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB6A10E35C;
 Mon, 23 Jun 2025 11:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750679035; x=1782215035;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YUkPKgyHSj8g55W5OnaMvdSNb4SbVom+wSaeCSgfOgQ=;
 b=Q0621a2NNXH5BXaOp2CB/MMHZN8QLntYkn+p8uelI363PeSynZaseqIv
 QLJSI7s0QRiLoWK+91EK24rc8odN8+udb4t9oWLy7dWk2DIanUPuNaDjd
 D3syeAShlHjZUlguw8yrPC+nr7ZgSAmeVP+urA0O3lvSoUKQZRJXtBn+c
 x5/dwZQL617kkOwYTN9rv9bh0yGqjRH0YVDuZ0EZ3qBLKrUnsx2lmralA
 cItOK0++RiDR93lbgno4TOOdKtia/NMIDHQT4WbXWHSmTXESLm4d0q8TD
 kBoVNS+frKJjkecqaoYvlZ0G/7yROu7IEqB7HLvIr7LaHdedIaPlelSj8 A==;
X-CSE-ConnectionGUID: obTam7kbTWWO9rC69aAYQQ==
X-CSE-MsgGUID: 1dl3+7DDRgSaDnlBUFLnTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52969401"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52969401"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:43:55 -0700
X-CSE-ConnectionGUID: zj1SX1hXTOSqYxVaePya7A==
X-CSE-MsgGUID: eIParlcFTImjuVRoiZikXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="152093775"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:43:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI 0/6] drm/i915,
 drm/xe: add drm device based pcode interface for display
Date: Mon, 23 Jun 2025 14:43:43 +0300
Message-Id: <cover.1750678991.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

[1] for CI.

[1] https://lore.kernel.org/r/cover.1749119274.git.jani.nikula@intel.com

Jani Nikula (6):
  drm/i915/pcode: drop fast wait from snb_pcode_write_timeout()
  drm/i915/pcode: add struct drm_device based interface
  drm/xe/pcode: add struct drm_device based interface
  drm/i915/display: switch to struct drm_device based pcode interface
  drm/i915/dram: switch to struct drm_device based pcode interface
  drm/xe/compat: remove old pcode compat interface

 drivers/gpu/drm/i915/display/hsw_ips.c        | 13 ++---
 drivers/gpu/drm/i915/display/intel_bw.c       | 24 ++++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 57 +++++++++----------
 .../drm/i915/display/intel_display_power.c    |  4 +-
 .../i915/display/intel_display_power_well.c   |  5 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 31 +++++-----
 drivers/gpu/drm/i915/intel_pcode.c            | 29 +++++++++-
 drivers/gpu/drm/i915/intel_pcode.h            | 15 ++++-
 drivers/gpu/drm/i915/soc/intel_dram.c         |  5 +-
 .../drm/xe/compat-i915-headers/intel_pcode.h  | 31 ----------
 .../drm/xe/compat-i915-headers/intel_uncore.h |  7 ---
 drivers/gpu/drm/xe/xe_pcode.c                 | 26 +++++++++
 drivers/gpu/drm/xe/xe_pcode.h                 | 12 +++-
 14 files changed, 137 insertions(+), 125 deletions(-)

-- 
2.39.5

