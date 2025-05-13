Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6301AB4AD2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909A310E50D;
	Tue, 13 May 2025 05:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jpA8hLg5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE03810E504;
 Tue, 13 May 2025 05:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113531; x=1778649531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kidnEk5hz4rBTWJ+xXEIOUXCTDQR6VF2V5oJXNQwIys=;
 b=jpA8hLg5L5Lf8DgQpkhejM3uQvAwYiqgmdZGMvrcd8o7iPWGbTQkCsiA
 I/8d4xqgrWQu8NWYDs+RsJ3wKTk1nhJP+kZkFHNn6x2UA5W3M6l55cVY6
 1Nr5G7HJcmgKSrkQwpHgkiwNr0V6+QSlqTKs2n6pG1QkcRZPWNZ6DZyuB
 bNVzmpwbYKCfN6gReKgRLhM0p6d6sUyg85sCoOapv3XSiHtO2ro5cU1Dh
 iE09zLf6HclFq8uv8b0ulfQx/Ht1gH1DJ9/DhRsbmumzQaaXdPGABNV0G
 +18SOIPw6EgkBFkXnCEIsIWWAUY7CXqfEflx29yDv1HH+gaKWCuMYs2Gh g==;
X-CSE-ConnectionGUID: 3f6QCySxRB+fDEWC2FLRDw==
X-CSE-MsgGUID: 2E7qdpaxSjK3SI88NRdM9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597756"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597756"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:18:50 -0700
X-CSE-ConnectionGUID: NXzhr+NMQvmE5ZHeSNA3bg==
X-CSE-MsgGUID: 8tmUmeMKRFiL0WzwDfpdbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506045"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:18:49 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 00/17] Enable/Disable DC balance along with VRR DSB
Date: Tue, 13 May 2025 10:46:43 +0530
Message-ID: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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

Control DC Balance Adjustment bit to accomodate changes along
with VRR DSB implementation.

Mitul Golani (9):
  drm/i915/display: Add source param for dc balance
  drm/i915/display: Add VRR DC balance registers
  drm/i915/vrr: Add DC Balance params to crtc_state
  drm/i915/vrr: Add state dump for DC Balance params
  drm/i915/vrr: Add compute config for DC Balance params
  drm/i915/vrr: Write DC balance params to hw registers
  drm/i915/vrr: Add function to check if DC Balance Possible
  drm/i915/display: Add function to configure PIPEDMC_EVT_CTL
  drm/i915/vrr: Enable DC Balance bit

Ville Syrjälä (8):
  drm/i915/vrr: Refactor vmin/vmax stuff
  drm/i915/display: Add pipe dmc registers and bits for DC Balance
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Restructure VRR enablement bit
  drm/i915/vrr: Pause DC Balancing for DSB commits

 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +
 drivers/gpu/drm/i915/display/intel_display.c  |  25 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  38 +++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   7 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  52 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 234 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  48 ++++
 12 files changed, 451 insertions(+), 38 deletions(-)

-- 
2.48.1

