Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54924A23632
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3A510E9CF;
	Thu, 30 Jan 2025 21:00:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YGb1zwjC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD8C710E0CD;
 Thu, 30 Jan 2025 21:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738270840; x=1769806840;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/JrJ3gtuVubCw+UyP/sNBLOqEwXJpXB73ISU+Phrg3g=;
 b=YGb1zwjC93hRWhDIL0xkgS3TUj60bvQiyQWaA07ZAFwjp9qKoG2ciV99
 SYDbK1HNI+mtaufrxp47e12l4qbGlH6hor82O1A9503e+xdVTMXMBXtft
 rRl3rxrA9meRx5yLVAzTdb+oGoNvMyE7kMO7UuPbFisquYpQkmd04cvCj
 ztLUBVZqwWpXkJP4s10GgAZfHpx8sgjeiY8yG0vio8rgXxytFvOtRP8HX
 Mw1fGPy/1HFJITLEWuksvpz/MGmMTcEHjNhQXDjdwYZXizs+/9lb+F7jg
 cgl40JzkSQhcqzs6jLFY+wHY97i94dsuTvvTvKez8QE+fIVIXmILgvPLq g==;
X-CSE-ConnectionGUID: uz8ihXOCTDyjhkOVAbH1Qg==
X-CSE-MsgGUID: QQqugKqTTbOr1FZN+AIaMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="42491510"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="42491510"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:00:40 -0800
X-CSE-ConnectionGUID: FL3Soy6CT3m2MzNhoQTYuw==
X-CSE-MsgGUID: VMnft2a3Q+K4hSyZTxVi7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="110015717"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.118])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:00:38 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v6 0/7] drm/i915/xe3: FBC Dirty rect feature support
Date: Thu, 30 Jan 2025 23:00:19 +0200
Message-ID: <20250130210027.591927-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Dirty rect support for FBC in xe3 onwards based on the comments after the
initial RFC series.

v2: Dirty rect related compute and storage moved to fbc state (Ville)

V3: Dont call fbc activate if FBC is already active

v4: Dirty rect compute and programming moved within DSB scope
    New changes are added as separate patches to make it easy for review
    But could be squashed if the reviews as ok.

v5: add HAS_FBC_DIRTY_RECT()
    FBC Damage area updates in 3 steps. 
    1. As part of plane_atomic_check() get, adjust coordinates and store
       the merged damage area in plane_state
    2. Atomic_commit, update merged damage are to fbc_state and prepare the
       damage area satifying all conditions
    3  update the FBC dirty rect registers as part of DSB commit.

v6: Use dmage_merged helper earlier to handle bigjoiner cases (Ville)
    Place the damage_merged handling code under HAS_FBC_DIRTY_RECT()
    Added a variable to check if the damage_merged received from
    the helper is valid. And if it is not valid, the FBC dirty rect
    is updated with full plane reqion.

Vinod Govindapillai (7):
  drm/i915/xe3: add register definitions for fbc dirty rect support
  drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for FBC dirty rect
    support
  drm/damage-helper: add const qualifier in
    drm_atomic_helper_damage_merged()
  drm/i915/xe3: update and store the plane damage clips
  drm/i915/xe3: dirty rect support for FBC
  drm/i915/xe3: avoid calling fbc activate if fbc is active
  drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled

 drivers/gpu/drm/drm_damage_helper.c           |   2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |  28 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |   7 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 152 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |   9 ++
 .../drm/i915/display/skl_universal_plane.c    |  45 +++++-
 include/drm/drm_damage_helper.h               |   2 +-
 10 files changed, 246 insertions(+), 8 deletions(-)

-- 
2.43.0

