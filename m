Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5023A565C5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6676D10EB37;
	Fri,  7 Mar 2025 10:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9z2LKOR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB5510EB37;
 Fri,  7 Mar 2025 10:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344769; x=1772880769;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iGMug1wTgdSZJY1bEQGapxDFZEp3XBuD6Z3D20OU3Ug=;
 b=k9z2LKORgnwlDrFXpjP5NEbax7W+2r2TNvEINgrldtXbuXMEa7F1p0iM
 juwurPXPjfhmCUy/CIsU0MhCwy6ENzGZ3r6maNGASLTXAo0GAl665WAw6
 GYHB6Bib0ENIcPPGPXbkXE3Hax7wdJDVVTnxOjb4PM6wEnjtJHS1CqzIs
 0fQJa5erlMHhuTfT4qXDNpVnxslTPhzbQwvF5zkKNqkyb6F0+xNLJptti
 RajSbR1lZ7zfnVbMCA4Ie2aKJgAYMgjm4x/MEANAY4OcAJlCn6fFcmIJX
 ewmdR0OI4jCWO2w+fz/i1H/FHtlwWmvhIZPfdnrJQYPdpqXta2ihxCMiR g==;
X-CSE-ConnectionGUID: 0jpPOER0Q8i+1QwL7kApjw==
X-CSE-MsgGUID: J5mhu8kqS2OzdJvGXNWZ8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301643"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301643"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:48 -0800
X-CSE-ConnectionGUID: VGBw3ngIR2yXy8NJh3rRMQ==
X-CSE-MsgGUID: XkZ8rGTDSz2GXWPrr1sQdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481552"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 00/11] Underrun on idle PSR workaround
Date: Fri,  7 Mar 2025 12:52:26 +0200
Message-ID: <20250307105237.2909849-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patchset is implementing workaround for underrun on idle PSR HW bug.

It is adding notification mechanisms toward PSR for pipe
enable/disable, vblank enable/disable and enabling disabling
DC5/DC6. These notifications are used to apply/remove the workaround.

Current mechanism to block DC states while vblank is enabled on Panel Replay capable system is extended to work for this new workaround as well.

Jouni Högander (11):
  drm/i915/display: Add new interface for getting dc_state
  drm/i915/psr: Store enabled non-psr pipes into intel_crtc_state
  drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
  drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
  drm/i915/psr: Write PIPEDMC_BLOCK_PKGC_SW when enabling PSR
  drm/i915/psr: Add mechanism to notify PSR of pipe enable/disable
  drm/i915/psr: Add mechanism to notify PSR of DC5/6 enable disable
  drm/i915/psr: Add interface to notify PSR of vblank enable/disable
  drm/i915/psr: Apply underrun on PSR idle workaround
  drm/i915/display: Rename intel_psr_needs_block_dc_vblank
  drm/i915/display: Rename vblank DC workaround functions and variables

 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  27 +-
 .../drm/i915/display/intel_display_power.c    |  29 ++
 .../drm/i915/display/intel_display_power.h    |   1 +
 .../i915/display/intel_display_power_well.c   |   4 +
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  14 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 271 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
 12 files changed, 348 insertions(+), 30 deletions(-)

-- 
2.43.0

