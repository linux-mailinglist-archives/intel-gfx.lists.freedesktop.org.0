Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80367A9E816
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F69710E37E;
	Mon, 28 Apr 2025 06:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAhEgTdj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA9210E37E;
 Mon, 28 Apr 2025 06:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821380; x=1777357380;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ADwiAiJxEto/Hs1ZrEzggcsQCW+m8MCsbklThQsVlSU=;
 b=AAhEgTdjxj7u7HiY8fXvCc9VQBuQVJTE7nl3LT8jdSpnuERaEjf9GEb0
 1KOfJe0zyg3eq9nastT0ZqI97IQlhrHHgnBP4jpJNWR96MlNYCjeF50P8
 B5v7WLXpZ789i7YCQj2e5KCgiYPFq7P53Wv/4RDFEj1x17CzPffajwI9a
 GdVH+dCW89O1pL+H45dMzPegB8W+wv8NFq071eS856r5n/1ZkY/eYQNSf
 SdWboHuFSgndiEcBPjj1WLBAwKNrb7XYA8bN3F7IlA8Sg5Qy9u/u1AezI
 attYhduPE59tzYqfmifSXspvIEh/RXjGEkjNvcgRVUA41zoELGtBFIpbQ Q==;
X-CSE-ConnectionGUID: 78YBwCVMQKaPJ9+gnJCyag==
X-CSE-MsgGUID: KCgfpEncQQW+WZzOjMDQKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204143"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204143"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:22:59 -0700
X-CSE-ConnectionGUID: uGozD/gpSNCMLa/k40/Blw==
X-CSE-MsgGUID: GPdKdZbsQRiof8jUWd9wTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231191"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:22:57 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 00/15] Enable/Disable DC balance along with VRR DSB
Date: Mon, 28 Apr 2025 11:50:43 +0530
Message-ID: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

Mitul Golani (7):
  drm/i915/display: Add source param for dc balance
  drm/i915/display: Add registers and bits for DC Balance
  drm/i915/vrr: Add state checker for dc balance params
  drm/i915/vrr: Add state dump for dc balance params
  drm/i915/vrr: Add compute config for DC balance params
  drm/i915/vrr: Write DC balance params to hw registers
  drm/i915/vrr: enable dc balance bit

Ville Syrjälä (7):
  drm/i915/vrr: Refactor vmin/vmax stuff
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Restructure VRR enablement bit
  drm/i915/vrr: Pause DC balancing for DSB commits

 .../drm/i915/display/intel_crtc_state_dump.c  |   9 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  21 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  24 ++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  55 +++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 210 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  50 +++++
 12 files changed, 412 insertions(+), 39 deletions(-)

-- 
2.48.1

