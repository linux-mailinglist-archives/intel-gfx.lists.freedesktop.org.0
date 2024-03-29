Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A778D89102B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 982AF10E320;
	Fri, 29 Mar 2024 01:12:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKkHEpXi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE12010E320
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674778; x=1743210778;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ceW8nemfzCZ68RwA6ljCVZA8ZiZsNzyOFG1vm7QvnDs=;
 b=KKkHEpXimG3h3lEyKbRWw7jU4k//1rRWYh4IKz/DJ3lOMYoNVva3edwh
 G8bHxsrAQ0LnSy0vQn01B0Ap+huQngK2kemMTDnVOs2Z9p7i71DUYE5UZ
 fWWqOfgSJAnuwyry9FwnAl1vtgH7m4XttO6FmyMajoU9Tke3HLQfGcFiP
 cH0o0OSIlsVAA2W4dI7qbWKCJ8v8LpWN10tqkrepuIqk98mZlZw57ZgMU
 IKdM+DgzlcFEZzjMF4yGL+CS7/FTFJmeDIA/X0zGpw6N1mMdUvHPt+LBL
 sXm30mF9QMgVMT+TEa0RNVaRFRdgqj32gov+pSf9xjoF2K8wxnEIcvixd w==;
X-CSE-ConnectionGUID: FbWiIRaJSSC/eSDDDMzKEA==
X-CSE-MsgGUID: nq+q3J8rSz2GLyUtIwkizQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756265"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756265"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:12:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786764"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786764"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:12:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:12:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/22] drm/i915: Bigjoiner modeset sequence redesign and MST
 support
Date: Fri, 29 Mar 2024 03:12:32 +0200
Message-ID: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

I started to look at the MST+bignoier stuff floating around
and then decided that there's just too much noise in the way,
and so did a quick pass over the whole thing to clean and
fix things up ahead of time.

I then applied the stuff from Stan and Vidya on top of what
I had and fixed it up enough to do a quick smoke test on my
ADL. It survived a 2x2 MST configuration with uncompressed
joiner enabled on both outputs. I don't have any DSC capable
hardware around so couldn't test bigjoiner.

Anyways, here's the whole pile for people to ruminate
over during Easter.

Also pushed it here:
https://github.com/vsyrjala/linux.git bigjoiner_mst_etc

Stanislav Lisovskiy (1):
  drm/i915: Handle joined pipes inside hsw_crtc_enable()

Vidya Srinivas (1):
  drm/i915: Allow bigjoiner for MST

Ville Syrjälä (20):
  drm/i915: Disable port sync when bigjoiner is used
  drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner
  drm/i915: Disable live M/N updates when using bigjoiner
  drm/i915/vrr: Disable VRR when using bigjoiner
  drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from .mode_valid() hooks
  drm/i915: Shuffle DP .mode_valid() checks
  drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
  drm/i915: Extract glk_need_scaler_clock_gating_wa()
  drm/i915: s/intel_dp_can_bigjoiner()/intel_dp_can_bigjoiner()/
  drm/i915: Extract intel_dp_joiner_needs_dsc()
  drm/i915/mst: Check intel_dp_joiner_needs_dsc()
  drm/i915: Pass connector to intel_dp_need_bigjoiner()
  drm/i915/mst: Limit MST+DSC to TGL+
  drm/i915/mst: Reject FEC+MST on ICL
  drm/i915: Introduce intel_crtc_joined_pipe_mask()
  drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
  drm/i915: Utilize intel_crtc_joined_pipe_mask() more
  drm/i915: Handle joined pipes inside hsw_crtc_disable()
  drm/i915/mst: Add bigjoiner handling to MST modeset sequence
  drm/i915: Use debugfs_create_bool() for "i915_bigjoiner_force_enable"

 drivers/gpu/drm/i915/display/intel_crt.c      |   3 -
 drivers/gpu/drm/i915/display/intel_ddi.c      |  79 +++--
 drivers/gpu/drm/i915/display/intel_display.c  | 330 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h  |   7 +
 .../drm/i915/display/intel_display_debugfs.c  |  44 +--
 .../drm/i915/display/intel_display_device.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  55 +--
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 102 +++---
 drivers/gpu/drm/i915/display/intel_dsi.c      |   3 -
 drivers/gpu/drm/i915/display/intel_dvo.c      |   3 -
 drivers/gpu/drm/i915/display/intel_lvds.c     |   3 -
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 -
 drivers/gpu/drm/i915/display/intel_tv.c       |   3 -
 drivers/gpu/drm/i915/display/intel_vrr.c      |   7 +
 15 files changed, 347 insertions(+), 300 deletions(-)

-- 
2.43.2

