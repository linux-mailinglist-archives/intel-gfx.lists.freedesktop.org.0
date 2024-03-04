Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F74870991
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97954112468;
	Mon,  4 Mar 2024 18:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TqIFyzSi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5722112467;
 Mon,  4 Mar 2024 18:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577065; x=1741113065;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lIVmL+yS9NO0jBupvhaSXYkGbJcHEPhU2Oj27hTTacs=;
 b=TqIFyzSimm1zbqKfmc6aLnaQXEfbTgxQuSSfYSDABv/B2GxhSIDSoZfF
 qYbOP8zkgAZrVO82s5pul2QuuUzvSICgOTc9YzhDV+398cPEEIArFFoor
 8X15eO7bpLl73EDKiitDCRMEFEJbNXGh6N/nW5ZZ/KshE6+Q/HS9HMypI
 NPtsWHpAS2QxLsZ7I3QHAZDtpdKmhig0RO2000XdVgVUUFsFpHoA9oCM8
 wKyJ7sOQdBa2oABOXGGDk2LYyeBtBQEL33nNeRrFjHUVquy7RJ88fPnJx
 2s7jFzn2O3G6f614DS9riBxVtQKPj3keR3BOYviw0iU9FQQYnfs/YHdYC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943505"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943505"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756423"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:03 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 0/8] Enable LNL display
Date: Mon,  4 Mar 2024 15:30:19 -0300
Message-ID: <20240304183028.195057-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
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

This series aims at providing the remaining patches for enabling display
on Lunar Lake, which used Xe2LPD display IP.

The first set of patches contains fixes and extra stuff required for
supporting CDCLK on Xe2LPD:

    drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table
    drm/i915/cdclk: Add and use xe2lpd_mdclk_source_sel()
    drm/i915/cdclk: Only compute squash waveform when necessary
    drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
    drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
    drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes

Then we have a single patch that enables loading Xe2LPD DMC, which is
already available in linux-firmware:

    drm/i915/xe2lpd: Load DMC

Finally, we have the last patch, which enables display for LNL:

    drm/xe/lnl: Enable display support

I believe this last one is supposed to be merged via drm-xe-next.

--
Gustavo Sousa

Balasubramani Vivekanandan (2):
  drm/i915/xe2lpd: Load DMC
  drm/xe/lnl: Enable display support

Gustavo Sousa (6):
  drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table
  drm/i915/cdclk: Add and use xe2lpd_mdclk_source_sel()
  drm/i915/cdclk: Only compute squash waveform when necessary
  drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
  drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
  drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 83 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  5 ++
 drivers/gpu/drm/i915/display/intel_dmc.c      |  9 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 74 ++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.h  |  4 +
 .../gpu/drm/i915/display/skl_watermark_regs.h | 18 ++--
 drivers/gpu/drm/i915/i915_reg.h               |  4 +-
 drivers/gpu/drm/xe/xe_pci.c                   |  1 +
 8 files changed, 170 insertions(+), 28 deletions(-)

-- 
2.44.0

