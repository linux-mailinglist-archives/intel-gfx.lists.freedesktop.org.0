Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D58A20DAD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D282610E68E;
	Tue, 28 Jan 2025 15:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZCMImb8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E8E10E68E;
 Tue, 28 Jan 2025 15:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738079675; x=1769615675;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n3c6MJwACKBdjr4PfmDWc1wYQ3+53W+zsbNMVyZG/WM=;
 b=ZCMImb8xljBnajAgCWzq34T5h1GMQa4VWCswzxFQ9mrgDmhokHLsDPHd
 rAns5cibjee/lUj0UIeC/kyOVw8IVwkK6PVsICygKp1klDyZunQ5g4k1y
 QexWFuiGGHik5XFYzCTfm2v873Fi+yffDFzG1wjmQuej+PRG9O22t/+o3
 iH6Y+lw+mMdXaaZ+x1TCp3U/vKJXkFBCEfcDKxVnKZWqGFSItEuExw9zj
 L25HE0THf85Mmpe3j9dU6D1bRAw6ax6noCTQDd3J/BV43AwAFsd4filVy
 edYiABXA1BlGyHG5hrXZp/UpMuZvvHOl8IUiZe86CBSQnr9wcCPH62fYd A==;
X-CSE-ConnectionGUID: bY4/EvwCT1elAoUxnjgygQ==
X-CSE-MsgGUID: lx+PSN/PRiy4di8GecrnlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49228079"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="49228079"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:34 -0800
X-CSE-ConnectionGUID: 8NVVxTxTTaqjLAVX7+EOzA==
X-CSE-MsgGUID: Sg1M81ttQrWWivSf+BJOHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139635231"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.171])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:32 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v5 0/7] drm/i915/xe3: FBC Dirty rect feature support
Date: Tue, 28 Jan 2025 17:54:11 +0200
Message-ID: <20250128155418.305595-1-vinod.govindapillai@intel.com>
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

Vinod Govindapillai (7):
  drm/i915/xe3: add register definitions for fbc dirty rect support
  drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for FBC dirty rect
    support
  drm/i915/display: get old_plane_state to the check_plane routine
  drm/i915/display: update and store the plane damage clips
  drm/i915/xe3: avoid calling fbc activate if fbc is active
  drm/i915/xe3: dirty rect support for FBC
  drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled

 drivers/gpu/drm/i915/display/i9xx_plane.c     |   1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |   7 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   7 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 133 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |   9 ++
 drivers/gpu/drm/i915/display/intel_sprite.c   |   2 +
 .../drm/i915/display/skl_universal_plane.c    |  48 +++++++
 11 files changed, 216 insertions(+), 3 deletions(-)

-- 
2.43.0

