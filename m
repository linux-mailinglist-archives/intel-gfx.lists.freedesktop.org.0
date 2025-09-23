Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F81B96FD0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB8610E14E;
	Tue, 23 Sep 2025 17:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mOI0yLwn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C364510E14E;
 Tue, 23 Sep 2025 17:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758647995; x=1790183995;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5rEPRWeMpHK9QYTmTIlDrOWSLG2Np18yCYCglicNbOA=;
 b=mOI0yLwn4NXjBLPUM5zsbWSw/Z4piREsce3pSLs7T7CGNWDvUsjVs8LF
 pV8h8T1FIqUmdnfWUyWjv8x12QaAf+ch2X3/CSYqUh+cSpstVemymitAP
 ZJ07RZLvC9e45SET1LbXmUi/JfrrAZqlN9F/Qnk+ZlepqnpcRsf5SiCLM
 Ghl3+KXv3IPxVepQtS2EU2piqDmDDfqeComb3nrysAPipBHppcNL9Wry5
 EaRGn0uytoydP5aH7lz2HVrvcIwyZDlxZfuIzJKkVsYHrh9eZzaPcOW1W
 xXPiPADD8NbEca7erQuNGQiJ2i3XpiMUrINtov2pJmXVRTZGP5oifKOG9 g==;
X-CSE-ConnectionGUID: GLVVq0MHT82uZaLC0OqgJw==
X-CSE-MsgGUID: QgHHapKWS+KdWs7K29CZ6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48502043"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48502043"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:19:47 -0700
X-CSE-ConnectionGUID: IjBY9MdLQiW4TNywApNqHg==
X-CSE-MsgGUID: EcgI36CzQ/2S1s9Mbx6rCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181134350"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:19:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/20] drm/i915/cdclk: Decouple CDCLK from state->modeset
Date: Tue, 23 Sep 2025 20:19:22 +0300
Message-ID: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

The state->modeset dependency on the cdclk stuff is annoying and
confusing. The cdclk code also interacts in weird ways with several
other parts of the driver. Decouple cdclk from state->modeset and
attempt to make the interactions between different parts less 
confusing.

Ville Syrjälä (20):
  drm/i915: Introduce intel_crtc_enable_changed() and
    intel_any_crtc_enable_changed()
  drm/i915: Introduce intel_crtc_active_changed() and
    intel_any_crtc_active_changed()
  drm/i915/bw: Skip the bw_state->active_pipes update if no pipe is
    changing its active state
  drm/1915/bw: Drop redundant display version checks
  drm/i915/cdclk: Extract glk_cdclk_audio_wa_needed()
  drm/i915/cdclk: Extract dg2_power_well_count()
  drm/i915/cdclk: Introduce intel_cdclk_modeset_checks()
  drm/i915/cdclk: Handle the force_min_cdclk state locking in
    intel_cdclk_atomic_check()
  drm/i915/cdclk: Extract intel_cdclk_update_bw_min_cdclk()
  drm/i915/cdclk: Extract intel_cdclk_update_crtc_min_cdclk()
  drm/i915/cdclk: Rework bw_min_cdclk handling
  drm/i915/cdclk: Do intel_cdclk_update_crtc_min_cdclk() per-pipe
  drm/i915/cdclk: Relocate intel_plane_calc_min_cdclk() calls
  drm/i915/cdclk: Rework crtc min_cdclk handling
  drm/i915/cdclk: Move intel_bw_crtc_min_cdclk() handling into
    intel_crtc_compute_min_cdclk()
  drm/i915/cdclk: Decuple cdclk from state->modeset
  drm/i915: Introduce intel_calc_enabled_pipes()
  drm/i915/cdclk: Use enabled_pipes instead of active_pipes for the glk
    audio w/a
  drm/i915/cdclk: Hide intel_modeset_calc_cdclk()
  drm/i915/cdclk: Move intel_cdclk_atomic_check()

 drivers/gpu/drm/i915/display/intel_bw.c      |  85 ++---
 drivers/gpu/drm/i915/display/intel_bw.h      |   3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 312 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   7 +-
 drivers/gpu/drm/i915/display/intel_crtc.c    |  42 +++
 drivers/gpu/drm/i915/display/intel_crtc.h    |   7 +
 drivers/gpu/drm/i915/display/intel_display.c |  47 +--
 drivers/gpu/drm/i915/display/intel_display.h |   2 +
 drivers/gpu/drm/i915/display/intel_plane.c   |  52 +---
 drivers/gpu/drm/i915/display/intel_plane.h   |   3 -
 10 files changed, 335 insertions(+), 225 deletions(-)

-- 
2.49.1

