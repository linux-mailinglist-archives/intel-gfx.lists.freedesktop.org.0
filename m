Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC1198AA84
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A89510E102;
	Mon, 30 Sep 2024 17:04:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f9S6Hm8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA92110E102;
 Mon, 30 Sep 2024 17:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715859; x=1759251859;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NQ9atQh4G14kWfe/IMmOKp7tORbOehYQeJbRUZnb4fE=;
 b=f9S6Hm8Y88gefvuNmXbu+pIJu6e6yr71PC3SexfkEqylJGsxj5IguuMU
 Nqnlq8hRZpf5QFpi9LXGOfmDjAjgnAIgL8Au06cWZ8SohA+a8eExImL83
 kH1y0iMcQMNhh+GgFBK1h3sQYTncmdn06adLDT3d4zBK9cT68nI5UP15x
 Obc619byyu421lx5S9FdERKWK/QRjvBkFl/XO39UTOoj3tihbRNAoSSQR
 WoNOLO7vjY0YggvbAJk+wgYQOnLhzXpmlEiaIVAM82zh36rJ6vS5fbIAv
 iPaak48RrTzfBnAf2kCiEpiOiCs7a4xD7In9I6ips+3qJsy6fUqO6fM4/ g==;
X-CSE-ConnectionGUID: SXgfCh9GS7W7l2Zp4OiJEA==
X-CSE-MsgGUID: SpQsI2XXRfyQAKwrEyebAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276931"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276931"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:18 -0700
X-CSE-ConnectionGUID: gLKawDsbRxCDVVCSKXPEcg==
X-CSE-MsgGUID: O3SdFuLcSimdH8SebG675Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/13] drm/i915: Use DSB for plane/color management commits
Date: Mon, 30 Sep 2024 20:04:02 +0300
Message-ID: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Use the DSB to perform simple plane/color management commits.
Anything more complicatd (modesets and fastsets) are still
punted to the mmio path.

Also DSB won't be used when any of these are in use:
- scalers (scaler code needs more work)
- VRR (need to figure out a race free commit completion scheme)
- PSR (zero thoughts given for PSR interactions so far)
- async flips (no real though given here either)

v2: rebase

Ville Syrjälä (13):
  drm/i915/dsb: Avoid reads of the DSB buffer for indexed register
    writes
  drm/i915: Prepare clear color before wait_for_dependencies()
  drm/i915/dsb: Generate the DSB buffer in commit_tail()
  drm/i915/dsb: Enable programmable DSB interrupt
  drm/i915/dsb: Introduce intel_dsb_vblank_evade()
  drm/i915/dsb: Introduce intel_dsb_wait_usec()
  drm/i915/dsb: Introduce intel_dsb_wait_vblanks()
  drm/i915: Introduce intel_scanlines_to_usecs()
  drm/i915/dsb: Introduce intel_dsb_wait_vblank_delay()
  drm/i915: Extract intel_crtc_prepare_vblank_event()
  drm/i915: Plumb 'dsb' all way to the plane hooks
  drm/i915: Plumb 'dsb' all way to the color commit hooks
  drm/i915/dsb: Use DSB for plane/color management updates

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  22 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |  49 +--
 .../gpu/drm/i915/display/intel_atomic_plane.h |  19 +-
 drivers/gpu/drm/i915/display/intel_color.c    | 207 ++++++------
 drivers/gpu/drm/i915/display/intel_color.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  37 ++-
 drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
 drivers/gpu/drm/i915/display/intel_cursor.c   | 101 +++---
 drivers/gpu/drm/i915/display/intel_de.h       |  11 +
 drivers/gpu/drm/i915/display/intel_display.c  | 180 ++++++++---
 .../drm/i915/display/intel_display_types.h    |  23 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 137 ++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |   7 +
 .../drm/i915/display/intel_modeset_setup.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  27 +-
 .../drm/i915/display/skl_universal_plane.c    | 305 ++++++++++--------
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   2 +-
 18 files changed, 735 insertions(+), 413 deletions(-)

-- 
2.45.2

