Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1EAAE5E74
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC8010E4EE;
	Tue, 24 Jun 2025 07:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hA9tFYes";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED52810E4EE;
 Tue, 24 Jun 2025 07:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751470; x=1782287470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QxGjTgBcPTp1iR6AOzVjsNBgOOCHtCWrncG6W9/B+l4=;
 b=hA9tFYesm8G/jzhSqQMb1sgu0VZ4tMgF4xGmpO0cDrhRlsNCcjgtVjqE
 7btEemEbxgvEFk3FHoW96vhr3Fxv7L7cIrY/nCyHxkixJ3WoIDjPYaHT1
 wtw9GpNUj6AdqmR4izdfSgSvqqnHrVpMJeMJrRgqkCC+R12dkV1tvc2oT
 h51GgKKsNamgkSvR5mLISFZNtc/zR3Hqeuncf5AXf+kSBraiVRP1fjKPj
 rxnjwqlyfjrUGf7dHwtqk7g1IawanYllS5JYB6s55Z4BDv5jVC29/G1pn
 FcZwJrxIi/QWO+EOEOChapeI22prNJ7MpKrROA+zK3G+gA+wF28E5qby9 A==;
X-CSE-ConnectionGUID: 72/gxvWqRZaCKCWidDXUww==
X-CSE-MsgGUID: pVbomoOLSiCCSPew/ONWww==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398209"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398209"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:09 -0700
X-CSE-ConnectionGUID: naCWZONERp+xF7TIwFFqlg==
X-CSE-MsgGUID: yZpkfjviSFyqSxnHdtkxoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446366"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:08 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 00/18] Enable/Disable DC balance along with VRR DSB
Date: Tue, 24 Jun 2025 13:19:30 +0530
Message-ID: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Mitul Golani (10):
  drm/i915/display: Add source param for dc balance
  drm/i915/display: Add VRR DC balance registers
  drm/i915/vrr: Add DC Balance params to crtc_state
  drm/i915/vrr: Add state dump for DC Balance params
  drm/i915/vrr: Add compute config for DC Balance params
  drm/i915/vrr: Write DC balance params to hw registers
  drm/i915/vrr: Add function to check if DC Balance Possible
  drm/i915/display: Add function to configure PIPEDMC_EVT_CTL
  drm/i915/vrr: Enable Adaptive sync counter bit
  drm/i915/vrr: Enable DC Balance

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
 drivers/gpu/drm/i915/display/intel_display.c  |  26 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  35 +++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   7 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  51 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 240 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  45 ++++
 12 files changed, 449 insertions(+), 40 deletions(-)

-- 
2.48.1

