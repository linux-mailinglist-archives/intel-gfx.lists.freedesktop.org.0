Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4ADAAC8D4
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D219810E6C3;
	Tue,  6 May 2025 14:57:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xp7PgC+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F22F10E6BD;
 Tue,  6 May 2025 14:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746543434; x=1778079434;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ClA1FvcVo33tQSO1PtvvobmBVmzd/g4PnxgmUO5oVzg=;
 b=Xp7PgC+3C7kPLzWtsEvBc8uG0Q323rQwzTNAioIgRe3Zpi5IZ3LZX4jr
 q+9dyeH51BoWKw2U22WywOeaVkPHdm4SPSYu30mzSo4la038I3BmsL10Z
 lrVBQS54SLgFt4Sx4rqmnsvXdm/kA4IMMinQHvz0iQHVVoGNmYJVLWCMV
 wbdOwYHfDwmUiaT/1zOF3PVJnBsFrZZmT5dwPalV9zEU62qoExd0/k+Xw
 /HXnJ8KybeCLBwdRxu1uvaaGMoCQMAw9N83Y7PTzeit+qlHlP8YxU83MD
 OvMRdtrx5L3x2vy7c5J0Xk3J9eiuUYIWjAgKm5Os2DB5jjxkkSN2rB2p/ w==;
X-CSE-ConnectionGUID: ENzkRmw/T+y+DvA7GzIt9Q==
X-CSE-MsgGUID: H7YmDCYuSomuWzMln2TsUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59205953"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59205953"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:57:13 -0700
X-CSE-ConnectionGUID: y1iBNZOQTD2gdqEx+G+bbw==
X-CSE-MsgGUID: CBqnbgDPTh6/wsl4D1BQeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166572082"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2025 07:57:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v4 00/17] Enable/Disable DC balance along with VRR DSB
Date: Tue,  6 May 2025 20:25:00 +0530
Message-ID: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
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

Ankit Nautiyal (1):
  drm/i915/vrr: Fix the adjustment for the fixed rr vtotal for Display <
    13

Mitul Golani (8):
  drm/i915/display: Add source param for dc balance
  drm/i915/display: Add VRR DC balance registers
  drm/i915/vrr: Add DC Balance params to crtc_state
  drm/i915/vrr: Add state dump for DC Balance params
  drm/i915/vrr: Add compute config for DC Balance params
  drm/i915/vrr: Write DC balance params to hw registers
  drm/i915/vrr: Add function to check if DC Balance Possible
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
 drivers/gpu/drm/i915/display/intel_dmc.c      |  18 ++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  46 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 223 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  48 ++++
 12 files changed, 412 insertions(+), 38 deletions(-)

-- 
2.48.1

