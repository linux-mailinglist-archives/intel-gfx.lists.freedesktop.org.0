Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98565BF302A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF7E10E4B2;
	Mon, 20 Oct 2025 18:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hnFiQHK7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2423010E4B2;
 Mon, 20 Oct 2025 18:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986243; x=1792522243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rkGUS3lrumRDowq+7DbM7XCLceWB3XOx2xbfk9wKkAE=;
 b=hnFiQHK72HfycdDWt4NM/HI8vgMteLz3ZGyz0XKMfa/bfaB/VcwJ97yn
 g08Cj2mWNtFS2AdeQV1VKNvemmiRNnGcdNLQNyBwBFnoI/B2bZNpX60Yx
 xUnZ5ZQieNSLCLqFpNNVAvBYwkT1O9HsT+PaiPCFxPxO+7A6ByaIF1sAK
 uuRMyQxeJoVgztrzeYUv+EVm93c0tx66d8Vwn2T30YVuxiENXxEx8TNXX
 tc2vv/D3on8NJ+/KeexfjJ3pbmtdhm4a5i8cv5QLIitnVOUHDIV2mPxgp
 65GAC6/6SwtKjBKEEDYerWOzzY85Rneosqui3G6PENrv87TcNrCI37nbV w==;
X-CSE-ConnectionGUID: LP1qoylsT+KYVQJ0V6UFHQ==
X-CSE-MsgGUID: ew789byUQwep6+xKaVe7NA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="88576208"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="88576208"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:42 -0700
X-CSE-ConnectionGUID: qJrCTE61RMe/5VqL8pLXmw==
X-CSE-MsgGUID: s9xYsJToTKqKYSBLU37I7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="182585792"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/22] drm/i915/vrr: A few fixes and a bunch of cleanup
Date: Mon, 20 Oct 2025 21:50:16 +0300
Message-ID: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

With all the recent work on the VRR code we've accumulated quite
a few slightly rough corners. Try to clean things up a bit.

While testing the cleanups I noticed a few real issues, fixes
for which are included at the start of the series.

Ville Syrjälä (22):
  drm/i915/vrr: Fix intel_vrr_always_use_vrr_tg()==true on TGL
  drm/i915/lrr: Include SCL in lrr_params_changed()
  drm/i915: Remove the "vblank delay" state dump
  drm/i915/vrr: Compute fixed refresh rate timings the sam way as CMRR
    timings
  drm/i915/vrr: Reorganize intel_vrr_compute_cmrr_timings() a bit
  drm/i195/vrr: Move crtc_state->vrr.{vmin,vmax} update into
    intel_vrr_compute_vrr_timings()
  drm/i915/vrr: Move compute_fixed_rr_timings()
  drm/i915/vrr: Extract intel_vrr_set_vrr_timings()
  drm/i915/vrr: Avoid redundant TRANS_PUSH write in intel_vrr_enable()
  drm/i915/vrr: Move EMP_AS_SDP_TL write into
    intel_vrr_set_transcoder_timings()
  drm/i915/vrr: Use trans_vrr_ctl() in intel_vrr_transcoder_disable()
  drm/i915/vrr: Extract intel_vrr_tg_disable()
  drm/i915/vrr: Extract intel_vrr_tg_enable()
  drm/i915/vrr: Disable VRR TG in intel_vrr_transcoder_disable() only on
    always use_vrr_tg() platforms
  drm/i915/vrr: Always write TRANS_VRR_CTL in
    intel_vrr_set_transcoder_timings() on !always_use_vrr_tg()
  drm/i915/vrr: Remove redundant HAS_VRR() checks
  drm/i915/vrr: Move HAS_VRR() check into
    intel_vrr_set_transcoder_timings()
  drm/i915/vrr: s/crtc_state/old_crtc_state/ in
    intel_vrr_transcoder_disable()
  drm/i915/vrr: Nuke intel_vrr_vblank_exit_length()
  drm/i915/vrr: Nuke intel_vrr_vmin_flipline()
  drm/i915/vrr: Update the intel_vrr_extra_vblank_delay() comment
  drm/i915/vrr: Check HAS_VRR() first in intel_vrr_is_capable()

 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 212 ++++++++----------
 3 files changed, 113 insertions(+), 125 deletions(-)

-- 
2.49.1

