Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AF88A359C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58AA410F79D;
	Fri, 12 Apr 2024 18:27:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FwaGsXOY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A43810F79D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946427; x=1744482427;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ff0hoIpp4bHOAm4hdMfFJ0WEqrT+COshx/RrCL0IcGU=;
 b=FwaGsXOYMMgaB945V0pf+OL6u7FXhwp4rIpCa4g5ENCkMxK8tSwIAHP5
 /hl4aDNquMby0f093bcL7jbQg5cvtsJeLtT7oqZEbTkrALB7wVWtNomnb
 pn63wjX1B+DyTyjGYHZlLWPFqGDNQMgKij2HdJEbRw+PZKQSCVKTXhavR
 7QfuiOvRxpBqdV1UpH3R2OnVsLoK38FoB+VP2E7F5ThmIfloSPmssdYPw
 hu1GqsDxTasF7pauWsGjnm7/E2yIQPqC9fIzFKo/W16OC3L9YSvXogBMW
 z6MAMWohvSEp0NQZCGTZiOp7kKX9lw99Wb6YA1sV8bp8/EWJGYWML1px+ A==;
X-CSE-ConnectionGUID: l/ZmQvmsSyq08wR1Vnew8A==
X-CSE-MsgGUID: r6ROveHUR+eda97jk+wvkQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560496"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560496"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:07 -0700
X-CSE-ConnectionGUID: XyGl5EBAQye8D00zictlAw==
X-CSE-MsgGUID: HVQtzOA+Q2CCQKpD22DLzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394357"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/18] drm/i915: PLL refactoring
Date: Fri, 12 Apr 2024 21:26:45 +0300
Message-ID: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

A bunch of refactoring around PLLs. Main feature is 
the unionization of dpll_hw_state. The eventual goal
is to unify the approach for PLLs across all platforms
instead of the current "shared PLLs are somehow
different than other PLLs" approach.

Ville Syrjälä (18):
  drm/i915: Replace hand rolled PLL state dump with
    intel_dpll_dump_hw_state()
  drm/i915: Use printer for the rest of PLL debugfs dump
  drm/i915: Rename PLL hw_state variables/arguments
  drm/i915: Introduce some local PLL state variables
  drm/i915: Extract ilk_fb_cb_factor()
  drm/i915: Extract ilk_dpll_compute_fp()
  drm/i915: Extract i9xx_dpll_get_hw_state()
  drm/i915: Pass the PLL hw_state to pll->enable()
  drm/i915: Extract i965_dpll_md()
  drm/i915: Extract {i9xx,i8xx,ilk}_dpll()
  drm/i915: Inline {i9xx,ilk}_update_pll_dividers()
  drm/i915: Modernize i9xx_pll_refclk()
  drm/i915: Drop pointless 'crtc' argument from *_crtc_clock_get()
  drm/i915: s/pipe_config/crtc_state/ in legacy PLL code
  drm/i915: Add local DPLL 'hw_state' variables
  drm/i915: Carve up struct intel_dpll_hw_state
  drm/i915: Unionize dpll_hw_state
  drm/i915: Suck snps/cx0 PLL states into dpll_hw_state

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  20 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  30 +-
 .../drm/i915/display/intel_display_debugfs.c  |  39 +-
 .../drm/i915/display/intel_display_types.h    |  43 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 338 +++++++-----
 drivers/gpu/drm/i915/display/intel_dpll.h     |  12 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 489 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  80 ++-
 .../gpu/drm/i915/display/intel_pch_display.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   6 +-
 11 files changed, 581 insertions(+), 488 deletions(-)

-- 
2.43.2

