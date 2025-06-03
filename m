Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 426F6ACCD9D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3CB710E0E5;
	Tue,  3 Jun 2025 19:36:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kh7FCXuD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4357010E02E;
 Tue,  3 Jun 2025 19:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979418; x=1780515418;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TjegSfCcTL0EOL152xi5vd30rafki0hTp9OfhYGL1jc=;
 b=kh7FCXuDeAJv0ZBGYqtRe4svTNheTXgkCiaKWKRvKpbKeSSFV+VwOUcc
 D0VHaQHSKX65+OJnEppE6KmABJSavWrTcmsgUxsUuLyqSdpt3fDtjzaQz
 d3VwGX/JG6oCzG5hJG6u2RdHGSO+sqN/tEYuMg8FJCwgbWIFJLdNYIf/C
 0V7J0WiPQQqaQ01Z/yzIfhvYeVXR3l8QcnGHlizVi+GN4Ayiai/oEqxBf
 ePefh+JIo9fxBLLfx9zYJt6QGRu5j3dpEw2CZW3GTwu/Heekb3qortypb
 BEOqhH4lBfKgoQAy/Vu4XG+VxgwWjVlohmFMOqbFa2NZfrrcYVadqbzTJ g==;
X-CSE-ConnectionGUID: eNRBxsEeRMyi5TS2dV7/qg==
X-CSE-MsgGUID: AdWZVdSNQYewxMN8aL40vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50275963"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50275963"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:36:58 -0700
X-CSE-ConnectionGUID: gQX8lXHCQp6Ou1Q3cIE0HQ==
X-CSE-MsgGUID: rOiRmYINSBiTOiXorebwAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844734"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:36:56 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 00/17] Enable/Disable DC balance along with VRR DSB
Date: Wed,  4 Jun 2025 01:05:05 +0530
Message-ID: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c  |  24 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  37 +++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   6 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  51 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 239 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  44 ++++
 12 files changed, 446 insertions(+), 40 deletions(-)

-- 
2.48.1

