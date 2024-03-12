Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B49E87990F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1371C10E26B;
	Tue, 12 Mar 2024 16:37:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LMiXOZ33";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E949710E26B;
 Tue, 12 Mar 2024 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261419; x=1741797419;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gf5tw3jtVzCUDmXYegKHVtJV2zlUurrXtYTKSUzBGIc=;
 b=LMiXOZ337Y4WOSvcMQlrV4roBPuoCfhRZOHfGZxHVA3iZMumtDIalJPd
 DfjFTKwTNAmNdruNE7MsZlVlP8oY8AB1OZJgwGkg140AEglENMeZhjlQ0
 CrKFPpO5ORqKMkeOdqeitoyGBnM7AcKXMPwD+joVeW0/CO87uJLz4TGhu
 RlnIYejWaxiMK2t/v8B+fhlbPRMKwSuVLJE5vfTukHsf3eBijSX58D6rA
 2UsGR9KHd0K6Ncgi9ltrnWWsVSwnZBPaFd2uhLisCpDpKxOmWQIhJ2P1o
 vEgpS70g+bs9Gf809htQcjvh5VNCuAe4qa5h86SyiORmM8tC4KZbpw3an w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27458055"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="27458055"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:36:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16245797"
Received: from ticela-or-524.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:36:57 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 gustavo.sousa@intel.com
Subject: [PATCH v2 0/8] Enable LNL display
Date: Tue, 12 Mar 2024 13:36:31 -0300
Message-ID: <20240312163639.172321-1-gustavo.sousa@intel.com>
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
    drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()
    drm/i915/cdclk: Only compute squash waveform when necessary
    drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
    drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
    drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes

Then we have a single patch that enables loading Xe2LPD DMC, which is
already available in linux-firmware:

    drm/i915/xe2lpd: Load DMC

Finally, we have the last patch, which enables display for LNL:

    drm/xe/lnl: Enable display support

v2:
 - Incorporated review feedback. Please see individual patches for details.

--
Gustavo Sousa

Balasubramani Vivekanandan (2):
  drm/i915/xe2lpd: Load DMC
  drm/xe/lnl: Enable display support

Gustavo Sousa (6):
  drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table
  drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()
  drm/i915/cdclk: Only compute squash waveform when necessary
  drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
  drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
  drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 76 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  5 ++
 drivers/gpu/drm/i915/display/intel_dmc.c      |  9 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 74 ++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.h  |  4 +
 .../gpu/drm/i915/display/skl_watermark_regs.h | 18 +++--
 drivers/gpu/drm/i915/i915_reg.h               |  4 +-
 drivers/gpu/drm/xe/xe_pci.c                   |  1 +
 8 files changed, 162 insertions(+), 29 deletions(-)

-- 
2.44.0

