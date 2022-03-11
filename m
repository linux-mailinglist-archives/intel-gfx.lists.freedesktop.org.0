Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B354D677E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579A410E567;
	Fri, 11 Mar 2022 17:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D604E10E567
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019473; x=1678555473;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c3w6l/ATtUdp0JX6j9CR9w6QIMeSgBre+MpsqhmPeuE=;
 b=ESLQsDKtpjw9LnYqA+ANY6cPcc8fLqCHVf6egOlntRDRh25xHOVjQZjq
 HamuFv/p9OtRc5B0Jb0rS4HoUxUslDaQ82WqeM79Kcj6h7ey8wjftYA5k
 PS+knNcAxmjRWeeTZnzvePXHfqSprwl03xsRo1Y84j80QyIX/o0t2W6KL
 jIVtfiD1inLkvG+Ftk30lt+maxF5wmj4gDMAshzXzmfRZBmySdrLM7JjW
 +YzSQBMq7t4rwvyn/f24NrVP0rfFDQIwv5nxZ9iBzL9P3lWEfGAlvQu9m
 jjtcbcmLac+fEJ4FFC0hEa/iuJZTBPuzBoWrsDnGZIKw2f/s8+tcV1J4j A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="243061657"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="243061657"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="548516773"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 11 Mar 2022 09:24:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:12 +0200
Message-Id: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/16] drm/i915: DRRS fixes/cleanups and
 start of static DRRS
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

Fix/clean up the DRRS code sufficiently that I feel
comfortable enabling it on all ilk+ CPU eDP ports.
PCH ports still need a bit of work.

The other thing I slapped on top is the beginnings of
static DRRS support (ie. actually changing the refresh
rate based on what the user asked). This initial version
is still limited to just two refresh rates though. We'll
have to expand on that further to also allow switching
the other supported refresh rates.

For the moment the user initiated refresh rate change
will cause a full modeset. But I think we should be able
to skip that if the hardware supports seamless DRRS, at least
on BDW+ with its double buffered M/N registers. Some extra
work will likely be needed for the modeset sequence to make
sure the DRRS frontbuffer stuff won't interfere with the
fastset reprogramming, and to make sure the reprogrmming
happens atomically with all the plane updates. The biggest
sticking point will probably be the fastset state check/copy
stuff. As is that is pretty much a big hack when it comes to
anything dotclock related and so probably needs some real
surgery.

v2: Lot more refactoring and a real fixed_modes list

Ville Syrjälä (16):
  drm/i915/dsi: Pass fixed_mode to *_dsi_add_properties()
  drm/i915/sdvo: Passt the requesed mode to
    intel_sdvo_create_preferred_input_timing()
  drm/i915/lvds: Pass fixed_mode to compute_is_dual_link_lvds()
  drm/i915: Simplify intel_panel_info()
  drm/i915: Nuke dev_priv->drrs.type
  drm/i915: Introduce intel_panel_{fixed,downclock}_mode()
  drm/i915: Introduce intel_panel_get_modes()
  drm/i915: Introduce intel_panel_preferred_fixed_mode()
  drm/i915: Introduce intel_panel_drrs_type()
  drm/i915: Introduce intel_drrs_type_str()
  drm/i915: Eliminate the intel_dp dependency from DRRS
  drm/i915: Stash DRRS state under intel_crtc
  drm/i915: Move DRRS enable/disable higher up
  drm/i915: Enable eDP DRRS on ilk/snb port A
  drm/i915: Implement static DRRS
  drm/i915: Convert fixed_mode/downclock_mode into a list

 drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
 .../gpu/drm/i915/display/intel_connector.c    |   2 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../drm/i915/display/intel_display_debugfs.c  | 152 +++-----
 .../drm/i915/display/intel_display_types.h    |  17 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  27 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     | 329 ++++++++----------
 drivers/gpu/drm/i915/display/intel_drrs.h     |  20 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |  24 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |  20 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  19 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  99 +++++-
 drivers/gpu/drm/i915/display/intel_panel.h    |  13 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  40 +--
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   9 +-
 drivers/gpu/drm/i915/i915_drv.h               |  15 -
 18 files changed, 370 insertions(+), 442 deletions(-)

-- 
2.34.1

