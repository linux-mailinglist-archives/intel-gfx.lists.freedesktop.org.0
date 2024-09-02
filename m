Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC91968931
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B2688130;
	Mon,  2 Sep 2024 13:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4nMfw1V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C90F88130
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285225; x=1756821225;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+gjFdwLLSfTZ8Z8I/Su09IzzF7OTQaUZ/7ZPLBOKnug=;
 b=j4nMfw1Vj9wKlzI4AMAJuV6Cdm2ZiohhgLsJKRtVMephg0RRVIF23RgO
 2EcBMWDXvf0UUTHvDdphb3uidVK5ODgspxJshi5poQztJ5piKLvegoYtn
 xNuYCY1kv0pnSu6/fD8GljmhFim69LKYutsd1Yuj7z1C7+uL6l3iAshxV
 v51XntWYSl+5iodmQn3LtCC5DoTmh918Qhdyx1U3tvj2dRXj9MqbzWMJO
 B3/YIgQE1H3zQ9JDxmukUaHwDJFI4mHJY6E2PZYP3lsLM0Cu6znAwc5Cw
 D3R+pa0AK4H1/G7enEdU+ra8/UmVFZNHJB/y3zbaP24tr8gCXkysGfNJ9 g==;
X-CSE-ConnectionGUID: 4e4ckQwtSxmc8II6LvsFDA==
X-CSE-MsgGUID: QZwMpq+5S7S5PvIon9R3QA==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343602"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343602"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:53:45 -0700
X-CSE-ConnectionGUID: oQkfcxQpSxuKFoFf4znqaw==
X-CSE-MsgGUID: EPzk70DWRwmKl0pbViEJHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623830"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:53:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:53:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/13] drm/i915: Use DSB for plane/color management commits
Date: Mon,  2 Sep 2024 16:53:29 +0300
Message-ID: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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
 drivers/gpu/drm/i915/display/intel_color.c    | 201 ++++++------
 drivers/gpu/drm/i915/display/intel_color.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  37 ++-
 drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
 drivers/gpu/drm/i915/display/intel_cursor.c   | 101 +++---
 drivers/gpu/drm/i915/display/intel_de.h       |  11 +
 drivers/gpu/drm/i915/display/intel_display.c  | 198 +++++++++---
 .../drm/i915/display/intel_display_types.h    |  23 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 135 ++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |   7 +
 .../drm/i915/display/intel_modeset_setup.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  27 +-
 .../drm/i915/display/skl_universal_plane.c    | 305 ++++++++++--------
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   2 +-
 18 files changed, 739 insertions(+), 419 deletions(-)

-- 
2.44.2

