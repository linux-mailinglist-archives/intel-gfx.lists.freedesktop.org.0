Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C08199A0CA0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5018C10E71C;
	Wed, 16 Oct 2024 14:31:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9WejESy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD0410E17B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089098; x=1760625098;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bGuepir4T6iW5EW+PZG0oBz7cxcHk3URvotHay+Pv6o=;
 b=j9WejESyWgSrJdUO91gMg422vC4c709KMG1keUq/cJQoFHnEI0IzCTVa
 69UKDQjREb0iCtwxVzMsHa0vCnFQOfJqr2C8/P/KCguYLk6A8D9Vd/dSY
 Yr+CSL5MS7fBfdQVboHzaX3YpyjdlqNpqNmOquyA83D2YHgDtQYoN617C
 VjwgQe/tSnBbtHSQO5pGbztM0rkACGeB53xIXeluLVnURq4e0vkNNBwyO
 hCNw6JoCRbw9SETwkJScSi52qtWz0eUXrwgR0zBX91+NX4lPvRA4tHtaF
 /931IJMhw3iH7WSJ4Y+Kw7qJUJsXqeppnhr0pR21NK2tQ17P+U5Fe8LIX A==;
X-CSE-ConnectionGUID: CWZhOdLpRBSkys5Cq1KAAw==
X-CSE-MsgGUID: 5l/edzI5QbSd65rd7UyBlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630694"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630694"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:37 -0700
X-CSE-ConnectionGUID: L3OX+c/gRiSOWN3WS0rl1g==
X-CSE-MsgGUID: XtLsquyCQ1WfpLZ6jLsDrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915/pfit: Panel fitter stuff
Date: Wed, 16 Oct 2024 17:31:25 +0300
Message-ID: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a bunch of missing validity checks for panel fitter
usage, and extract the pane fitter code into its own file.

Ville Syrjälä (9):
  drm/i915/pfit: Check pipe source size against pfit limits on ILK-BDW
  drm/i915/pfit: Check pfit scaling factors on ILK-BDW
  drm/i915/pfit: Reject pfit downscaling for GMCH platforms
  drm/i915/pfit: Check pfit minimum timings in pre-SKL
  drm/i915/pfit: Reject cloning when using pfit on ILK-BDW
  drm/i915/pfit: Check pfit destination window on ILK-BDW
  drm/i915/panel: Convert panel code to intel_display
  drm/i915/pfit: Extract intel_pfit.c
  drm/i915: Remove ckey/format checks from skl_update_scaler_plane()

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  27 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_panel.c    | 330 +----------
 drivers/gpu/drm/i915/display/intel_panel.h    |   6 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_pfit.c     | 553 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pfit.h     |  15 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |  77 +--
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 15 files changed, 628 insertions(+), 399 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pfit.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pfit.h

-- 
2.45.2

