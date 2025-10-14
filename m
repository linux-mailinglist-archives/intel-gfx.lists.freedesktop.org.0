Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA40BD73F7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 06:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7251B10E1CD;
	Tue, 14 Oct 2025 04:29:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OooBP4qU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9EEE10E1CD;
 Tue, 14 Oct 2025 04:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760416178; x=1791952178;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NNRyLWi9NhxwtaDi8Oeou85II8hBp+qdsQiSXfBelL8=;
 b=OooBP4qU+oY4pv9vfj7VzN4M22zBeUrO3AyzN5MyBw2T5KOvRQpSDI/0
 lpFRvFhU3YWHK28l0GTT/4ZHAm9WZPWi30iDxGs80I/o7sUraMyFRX4DB
 U7eFP0TsZKmcKSe1dg2JmcLrZpho95nLVp43Z4jOYqASza61DkEY8atyG
 HEWxaD+PsmOFPg8g4e+2L9BtxIJ7f2uzsU4T8YcRHqLShFidWiwLFa+wm
 DAMzfOhL0L1yN0JGpZUUpbTMuKXYsu3oK77kbyp2jLzVdE16PjTsrqkqX
 6mbw199pjeRQFQC6rE3nIinepKYDdPCqXbG4l8NDfawqrA8Ch73ZRo7q9 A==;
X-CSE-ConnectionGUID: upqKNyifS9iXgQH3iQp/qQ==
X-CSE-MsgGUID: gN0LHXZuTsKUlx3n5m1eCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="88029772"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="88029772"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:38 -0700
X-CSE-ConnectionGUID: yc0eqh8ISYCy2nKh9gWh2w==
X-CSE-MsgGUID: 83P9GhUaTQu4zvcK0k6Tpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="212399811"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/8] Preparatory patches for guardband optimization
Date: Tue, 14 Oct 2025 09:46:20 +0530
Message-ID: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Handle few cases which will need changes when guardband will no longer
be matched to vblank length.
- Fix the vblank_start evaluation.
- Fix PSR wake latency checks wrt to guradband.

Rev 2: PSR went through some changes recently, rebase the patches on latest
PSR changes.

Rev 3: Address comments from Ville and Jouni:
- Add a patch to move intel_dpll_crtc_compute_clock() early in the
  function.
- Merge patch to adjust vblank_start and the readout changes.
- Fix agument to alpm_config_valid()
- Add documentation for retionale behind PSR late-stage configuration.

Rev 4:
- Update pipe_mode->vblank_start and actually merge patch to adjust
  vblank_start and readout changes.

Ankit Nautiyal (8):
  drm/i915/vrr: Use crtc_vsync_start/end for computing
    vrr.vsync_start/end
  drm/i915/display: Move intel_dpll_crtc_compute_clock early
  drm/i915/vrr:
    s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
  drm/i915/vblank: Add helper to get correct vblank length
  drm/i915/psr: Consider SCL lines when validating vblank for wake
    latency
  drm/i915/display: Check if final vblank is sufficient for PSR features
  drm/i915/display: Add vblank_start adjustment logic for always-on VRR
    TG
  drm/i915/display: Prepare for vblank_delay for LRR

 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |   9 +
 drivers/gpu/drm/i915/display/intel_dp.h      |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 167 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   2 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 ++
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  29 +++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c |   3 +-
 11 files changed, 187 insertions(+), 61 deletions(-)

-- 
2.45.2

