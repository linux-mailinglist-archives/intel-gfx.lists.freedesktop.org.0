Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C69C0F47F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B5D10E4F6;
	Mon, 27 Oct 2025 16:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THxsjQbv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8542F10E4F6;
 Mon, 27 Oct 2025 16:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582569; x=1793118569;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xKfvsDdq6jraXzAFuTtM+ar5UX9gZbEk++JzYPgkft4=;
 b=THxsjQbv3XUs2XXru7Q1XYRj6Wv8ba06iUvfWmzmR4it7Bf2Hom6Q0rS
 gWXFYCw56/rXdoYrpeiQ7BVOWVlB8cSiftn59EIx2qBBLLhmY/wTY5Sgg
 Z3ZjA/P1Ap3G5QsdcbrGX7hPbIw3chkVdO/XYBN9AXqrgTkWksNpNEdsu
 hH+I83yzmNH0yygBlqAn6AnHCLuQpdwIobLewLGd0dPtI1uyvxWijAMdd
 rDAopew5iUBiePEiTKNAROT9t63sTbsFVyRUU7j3SdrQrtPCUcEhHnuw9
 D6NwUT215RPTjAwT0TzVjRqI/Zw+gmIHlcP0pyCSYRNTx2sarheWCoEhX w==;
X-CSE-ConnectionGUID: jdvAHthBQ1av6EwiJErWnQ==
X-CSE-MsgGUID: M5jmauURQ3anrDxorTP83A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299306"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299306"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:29 -0700
X-CSE-ConnectionGUID: G33BIqlMR4mUQoDkyd8n7g==
X-CSE-MsgGUID: hUf/zZQXT92BzXSiAzmmGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785526"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:27 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 00/22] Enable/Disable DC balance along with VRR DSB
Date: Mon, 27 Oct 2025 21:59:05 +0530
Message-ID: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

Mitul Golani (16):
  drm/i915/display: Add source param for dc balance
  drm/i915/vrr: Add VRR DC balance registers
  drm/i915/vrr: Add DC Balance params to crtc_state
  drm/i915/vrr: Add state dump for DC Balance params
  drm/i915/vrr: Add compute config for DC Balance params
  drm/i915/display: Add DC Balance flip counter in crtc
  drm/i915/vrr: Increment DC balance flip count on every flip
  drm/i915/vrr: Add function to reset DC Balance flip count
  drm/i915/vrr: Add function reset DC balance accumulated params
  drm/i915/vrr: Write DC balance params to hw registers
  drm/i915/vrr: Configure DC balance flipline adjustment
  drm/i915/display: Wait for VRR PUSH status update
  drm/i915/display: Add function to configure event for dc balance
  drm/i915/vrr: Enable Adaptive sync counter bit
  drm/i915/vrr: Enable DC Balance
  drm/i915/vrr: Add function to check if DC Balance Possible

Ville Syrjälä (6):
  drm/i915/dmc: Add pipe dmc registers and bits for DC Balance
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915/vblank: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Pause DC Balancing for DSB commits

 drivers/gpu/drm/i915/display/intel_color.c    |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +
 drivers/gpu/drm/i915/display/intel_display.c  |  52 ++++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  11 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  32 +++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   6 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  61 ++++-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 232 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h      |  12 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  69 ++++++
 13 files changed, 543 insertions(+), 6 deletions(-)

-- 
2.48.1

