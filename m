Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B2699FC1C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D40810E627;
	Tue, 15 Oct 2024 23:11:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVxQN+5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692C110E624;
 Tue, 15 Oct 2024 23:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033892; x=1760569892;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tb+OsSsDVdTvtwqa0zu18JrNVBscKLLjEVF7hE/Ylrk=;
 b=HVxQN+5OzHUOy6IZhnXQAt82mzFQJT3O4VuxfTnaJVSiwXbHKIdeGLX6
 gp55orZi34IirbrMnt9ydLFm86kJO2v12/PqLUoL1VBxlt6iCedZDdhih
 Uy2Vx0u55DLxAO/upm/5jIocYGqA+J6TfYqGNBs5Za7HHFXpZvS7ebXbZ
 +9lPgxCOlTPJCqFb521zk+v4dgpa+biJrkf5O9CLtHtr9IYQ9iE9CpNne
 rV0xwjIw08eO5Mz3vkmL095ljHDDB4yz29cK4PKylK/uxw3gM9J42ZpX7
 LakTUx4NgC+OU2gIo/dW4HrNa4OcH3dLToaGOacCDIjg4j1NtkJcGariF w==;
X-CSE-ConnectionGUID: h6/CiGzOQT+djsK5o1rftg==
X-CSE-MsgGUID: dGMYhLQdTDKbz5T1Xb4I4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600784"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600784"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:31 -0700
X-CSE-ConnectionGUID: 1sG2GlMRRmOtgh02BWqbwg==
X-CSE-MsgGUID: Btz6x2M4SSOJ8SJ+TSSiXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120399"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:31 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3 0/7] Add xe3lpd edp enabling
Date: Tue, 15 Oct 2024 16:11:17 -0700
Message-ID: <20241015231124.23982-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
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

This series defines the xel3pd definition, which is functionally
identical to the xe2lpd definition for now. This series then adds
additional requirements mostly for edp output of display through type c.
Additional patches will be required for display and will follow.

v2: cdclk table update, multiple patches have macros changed from
functions to multiple platform specific paths. Several commit messages
and subjects changed to be more accurate. PM demand patch changed to
accurately reflect minimum num of pipes.

v3: updates to "drm/i915/xe3lpd: Add check to see if edp over type c is
allowed", "drm/i915/xe3lpd: Add new bit range of MAX swing setup",
"drm/i915/xe3lpd: Add C20 Phy consolidated programming table",
"drm/i915/xe3lpd: Include hblank restriction for xe3lpd",
"drm/i915/xe3lpd: Add cdclk changes", "drm/i915/xe3lpd: Update pmdemand
programming". 

Matt Roper (1):
  drm/i915/xe3lpd: Update pmdemand programming

Radhakrishna Sripada (1):
  drm/i915/xe3lpd: Add cdclk changes

Suraj Kandpal (5):
  drm/i915/xe3lpd: Include hblank restriction for xe3lpd
  drm/i915/xe3lpd: Add C20 Phy consolidated programming table
  drm/i915/xe3lpd: Add new bit range of MAX swing setup
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed
  drm/i915/xe3lpd: Add condition for EDP to powerdown P2.PG

 drivers/gpu/drm/i915/display/intel_alpm.c     |  9 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 59 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 33 ++++++++--
 .../drm/i915/display/intel_display_device.c   |  4 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 17 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |  5 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  4 ++
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 63 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 22 ++++---
 drivers/gpu/drm/i915/i915_reg.h               |  5 ++
 12 files changed, 183 insertions(+), 43 deletions(-)

-- 
2.45.0

