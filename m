Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80F9C626DA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BC010E15A;
	Mon, 17 Nov 2025 05:44:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4FezNjs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D093B10E15A;
 Mon, 17 Nov 2025 05:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358271; x=1794894271;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LscGhfWOEqIRryrcSdLteoTikgl4HZdEsagr5tLSUO4=;
 b=S4FezNjsMxe5q/qTszSVW1xPWsJB9P5NwvUbjhoKp+BVlyjG0r7EJs+/
 jdNdlGGcchCOnM1shQg25VJRojFqrdn4c3VKdaOGNES6bipEtJPzKXhUL
 u/tYwCKRJnu3/QnxG44tWiLcIhwWGGtfqukv6nByG9S+qVIKXJCArpVA0
 B7xo9Xc8BXS8R0D6+3HUxgbx2gRF5baOF9ArgYWEYVDYclFFAAa2GKYn+
 4kF/27xw7uxkXal/coT9CcrQHAlAgVNizB8Nloxni0QWJ2aKP5qLKQQTv
 6C3cw9wSUtNMbkX2zphGeCZOEZY4FdXYQstj41GgKA7uEf0iemYEvx73s A==;
X-CSE-ConnectionGUID: eFjIHa7sSLmN9ZrY1Swt7w==
X-CSE-MsgGUID: xp83HtgKSQOhH1zdifv/9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65445992"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65445992"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:30 -0800
X-CSE-ConnectionGUID: 4+dKNyIgS+WsS3ksapW8Eg==
X-CSE-MsgGUID: 442TVw+YTHys58uEDtVwVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016286"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:29 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 00/18] Enable/Disable DC balance along with VRR DSB
Date: Mon, 17 Nov 2025 11:14:24 +0530
Message-ID: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Mitul Golani (12):
  drm/i915/display: Add source param for dc balance
  drm/i915/vrr: Add VRR DC balance registers
  drm/i915/vrr: Add DC Balance params to crtc_state
  drm/i915/vrr: Add state dump for DC Balance params
  drm/i915/vrr: Add compute config for DC Balance params
  drm/i915/vrr: Add function to reset DC balance accumulated params
  drm/i915/display: Add DC Balance flip count operations
  drm/i915/vrr: Write DC balance params to hw registers
  drm/i915/display: Wait for VRR PUSH status update
  drm/i915/display: Add function to configure event for dc balance
  drm/i915/vrr: Enable DC Balance
  drm/i915/vrr: Add function to check if DC Balance Possible

Ville Syrjälä (6):
  drm/i915/dmc: Add pipe dmc registers and bits for DC Balance
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915/vblank: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Pause DC Balancing for DSB commits

 drivers/gpu/drm/i915/display/intel_color.c    |   2 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +
 drivers/gpu/drm/i915/display/intel_display.c  |  30 +-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  11 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  32 ++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  60 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 296 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h      |  11 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  69 ++++
 13 files changed, 581 insertions(+), 8 deletions(-)

-- 
2.48.1

