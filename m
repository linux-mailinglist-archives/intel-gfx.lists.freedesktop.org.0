Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E61BC83AC
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA16610E056;
	Thu,  9 Oct 2025 09:14:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mju4WaY+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37DD10E056;
 Thu,  9 Oct 2025 09:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760001253; x=1791537253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PG6Aw2UvoMg5jwgbWlSYXJFXoZ43CAqWApxPUMjXvXw=;
 b=mju4WaY+PxgUMw1mrCPfFKQjqU9oxZASJ3ZRAkyoqCybJ3mh8c1EmwTR
 tVmKI399PdB1EklGODWJZ9viltMHxuyAG1P02nohTS4v18USfQiRzjuqy
 xGUkzTWwm0CRyNAcGVHfT6G6RVnu5Xv//N+QH0rWxtIbKNIYrBcWpofu2
 5jmBgTEpiY5iEdHJr8ZpwzdipfZA7/dZU68+Dy6jKDP7CbqChVe2EjLTw
 ykfUF3yxEZCPQrYgj829RD/DEhdNxDHAJjE+x3cAm8RpTjemvUhwobuXE
 NTNr9weFE3U28r3KpBH5ebWTmsF89K6so1VrUvDBP5M0rEisf0llx74hE w==;
X-CSE-ConnectionGUID: bYPxRVmWQDy/cSh+oratEQ==
X-CSE-MsgGUID: zsa0/RZlSDyJTPKUxzeIRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62123471"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62123471"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:13 -0700
X-CSE-ConnectionGUID: RcVRTsBNTvypWf8IG/dcHA==
X-CSE-MsgGUID: pcDla1dRSk68gvsaaMbFDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="179918009"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/8] Preparatory patches for guardband optimization
Date: Thu,  9 Oct 2025 14:30:54 +0530
Message-ID: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (8):
  drm/i915/vrr: Use crtc_vsync_start/end for computing
    vrr.vsync_start/end
  drm/i915/vrr:
    s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
  drm/i915/vblank: Add helper to get correct vblank length
  drm/i915/psr: Consider SCL lines when validating vblank for wake
    latency
  drm/i915/display: Check if final vblank is sufficient for PSR features
  drm/i915/vrr: Recompute vblank_start for platforms with always-on VRR
    TG
  drm/i915/display: Add vblank_start adjustment logic for always-on VRR
    TG
  drm/i915/display: Prepare for vblank_delay for LRR

 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  14 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |   9 ++
 drivers/gpu/drm/i915/display/intel_dp.h      |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 153 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   2 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 ++
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  26 +++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c |   3 +-
 11 files changed, 168 insertions(+), 59 deletions(-)

-- 
2.45.2

