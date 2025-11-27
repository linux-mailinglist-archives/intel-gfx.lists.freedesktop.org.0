Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 049D4C8D78A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9409510E765;
	Thu, 27 Nov 2025 09:15:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJGLaslt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E30910E765;
 Thu, 27 Nov 2025 09:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234955; x=1795770955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W8xv73zZB/MXY+De/w5RMNB2HfN3+LrDaSn3y6uUH8c=;
 b=cJGLaslt1ku5nbpGIw8FWjxGZrWp3KSBWFzm2Mw3KajnVhqBVDSMFyj4
 y62Z5ViUOAB8/HFhNvRKdURvqptlHRVBbdme5njE/WJIBPe3SHAr9pj5u
 LOtvgZQbmqK/hhE6qZhTMD1YxPh8h/AkkfzI6yGtrdl9+MzuvPuWDnOp4
 VlFvtmScFFXcO3PUzn1nhQitNVuXVF6KAmHQ8JO5qfkJGemhKAPw0yzTF
 TB/G3dxDyYFXh+liXX4yxhCQvtZxwyuH1yTxWFa4cOCEwZ2Qkjb/PUNO1
 ztSee9fIpNRMv3T96jswuwl0tdMR2/jo4dsU/sDVQFIwQITpgeFcc/B8l Q==;
X-CSE-ConnectionGUID: kIEMLLPrQhCkvIKhGkI5HA==
X-CSE-MsgGUID: QyWkHB/mQLibS86pgI8rGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642319"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642319"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:15:55 -0800
X-CSE-ConnectionGUID: B+g+ueayT+CzcNFaCC9LBw==
X-CSE-MsgGUID: wbDv+ylMRna9JGfI5V7OrQ==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:15:54 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 00/17] Enable/Disable DC balance along with VRR DSB
Date: Thu, 27 Nov 2025 14:45:57 +0530
Message-ID: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

Mitul Golani (11):
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

Ville Syrjälä (6):
  drm/i915/dmc: Add pipe dmc registers and bits for DC Balance
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915/vblank: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Pause DC Balancing for DSB commits

 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +
 drivers/gpu/drm/i915/display/intel_display.c  |  30 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  11 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  32 ++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  60 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 283 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h      |  10 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  68 +++++
 12 files changed, 565 insertions(+), 7 deletions(-)

-- 
2.48.1

