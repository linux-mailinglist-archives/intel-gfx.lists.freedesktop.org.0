Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97250BD6093
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C763810E51C;
	Mon, 13 Oct 2025 20:12:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O21+uoHG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E7AA10E51B;
 Mon, 13 Oct 2025 20:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386361; x=1791922361;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yreM6dM3uQwdNWM9Vb2gsbXf/tFZUsbJVAVVAAsBsc4=;
 b=O21+uoHGFEPEr3g6EDiR6HtrmYNyNKv27x8TRgZt1kzVpMIdyfEq2/bw
 SV6xztyIMas9OS/ifX6Xr6NTCHrz7EKHkVrbfIUvuowThbd4pOhpfgvjY
 oF5H6uqw5czqLC3uvDgKCudtpATmIi9swEJrkvCdtdrq4fKDxHKTyvaLX
 DTwdF8vNd2bFisUiVGq2AsQ1EY0tgKto3OmSIfBewzwS+jTWDL2L0hFfD
 RyjlQfAzgvCopm/CEEvAUsF7E/sFsP/nFPmUZQzFSI6PqzNdrTwSDIe9R
 IxxH8807iYXa8QyOCI2WjlZLAMtQjieS8hGPhT8NaUu71UiUGHejBp1la w==;
X-CSE-ConnectionGUID: +5d+R9UhSRWjNUtkQfmHtA==
X-CSE-MsgGUID: LHOiFx9NRPGscvZoE8acqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="61576985"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="61576985"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:40 -0700
X-CSE-ConnectionGUID: gEBZTddmQ5ekN/VcbOUgrw==
X-CSE-MsgGUID: +jt+lwYJREe3sw3/DR9Nbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="185944766"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:38 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Reorder cdclk stuff for vblank/guardband length
 checks
Date: Mon, 13 Oct 2025 23:12:27 +0300
Message-ID: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
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

Currently skl_is_vblank_too_short() is trying to do the
prefill vs. vblank/guardband length checks using a completely
stale cdclk frequency. Attempt to shuffle thigns around
sufficiently so that we might be able to remedy it. Note however
that this series does not yet fix the actual cdclk factor used
in the checks. That part will come in a separate series.

I also took the opportunity to carve up intel_bw.c a bit since
it's basically made up of three completely independent things.
While not strictly necessary for the reordering, it's nice to
untangle intel_bw.c for clarity.

Ville Syrjälä (9):
  drm/i915/bw: Untangle dbuf bw from the sagv/mem bw stuff
  drm/i915: s/"not not"/"not"/
  drm/i915/bw: Relocate intel_bw_crtc_min_cdclk()
  drm/i915/ips: Eliminate the cdclk_state stuff from
    hsw_ips_compute_config()
  drm/i915/fbc: Decouple FBC from intel_cdclk_atomic_check()
  drm/i915: s/min_cdck[]/plane_min_cdclk[]/
  drm/i915: Compute per-crtc min_cdclk earlier
  drm/i915: Include the per-crtc minimum cdclk in the crtc state dump
  drm/i915: Neuter cdclk_prefill_adjustment()

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/hsw_ips.c        |  61 ++--
 drivers/gpu/drm/i915/display/intel_bw.c       | 247 +--------------
 drivers/gpu/drm/i915/display/intel_bw.h       |   5 -
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  46 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  44 +++
 drivers/gpu/drm/i915/display/intel_crtc.h     |   4 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_dbuf_bw.c  | 295 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dbuf_bw.h  |  37 +++
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../gpu/drm/i915/display/intel_display_core.h |   4 +
 .../drm/i915/display/intel_display_driver.c   |   5 +
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  49 ++-
 drivers/gpu/drm/i915/display/intel_fbc.h      |   1 +
 .../drm/i915/display/intel_modeset_setup.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_plane.c    |   4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  14 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 21 files changed, 510 insertions(+), 342 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dbuf_bw.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dbuf_bw.h

-- 
2.49.1

