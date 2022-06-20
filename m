Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB485552310
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD6CF10ED8C;
	Mon, 20 Jun 2022 17:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20AD10ED8C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747545; x=1687283545;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ezba5+WiEIjsSdYZ/udHMYuFWy5WqqxJ53viLq/kWjQ=;
 b=OJelcTU5ojv5NolHkrZVHdEl46sbyuH4ehMuz0uEaqOW2RlJenHhIfhY
 vLp6e+HFpFck2V29OPXVkgorAIXnK+YSJ4GaJ2Z9imlq+IoZDSuUfbjYD
 C3lopXCjm/xRtJqxf91fgqMh+K78vAwlYZwG2xkdOJGcJm8ssJETXynNE
 EdL6Lpcdq/K1yrUJsiPsUy1qmGcew1dyzr2/fMA+j3xot0D78rTsIsm/6
 NbRs2Yvk8bGInZQLwW7oHPePtdOiPLZCoK/GIYfrTttTf0OzLNXoxM1Qq
 X42WIUB6mg3W0UQlbim6GPlfPvHd7UjArA3T1DHoz4HwxEiJKOSTSlJxr Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="305385482"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="305385482"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="689558590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 20 Jun 2022 10:52:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:51:53 +0300
Message-Id: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/17] drm/i915: Make fastset not suck and
 allow seamless M/N changes
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

And with fastset made to not suck we can consider allowing
seameless M/N changes on eDP panels that support such things.
I've given that a quick test here on a TGL and it seemed to work
OK.

The rough parts:
- The DPLL stuff is kinda messy still, a lot of which is due to
  the dpll_mgr vs. not depending on platform/output type. Maybe
  it's finally time to start cleaning that mess up...
- the port_dpll[] stuff probably needs to be reworked at some
  point to make a bit more sense
- fastboot I *think* should mostly keep working now that we
  try to match the GOP/VBIOS M/N behaviour. FDI M/N vs. DPLL is
  a bit of a challenge for the platforms where the encoder live
  in the PCH, but I'm going to declare that as not so important
- DSI clock handling is snafu
- DP link computation policy might need a bit more work since we
  may now consume more bandwidth than before on machines where
  seamless M/N changes are possible

I also did a quick smoke test through the series on tgl and
snb in the hopes of keeping this at least mostly bisectable.

Changes in v2:
- bunch of stuff already merged
- a bit more refactoring to make things nicer
- Tweak the M/N rounding for fastboot
- don't mess with the DP link rate on platforms (pre-BDW)
  where we haven't implemented seamsless M/N chages
Changes in v3:
- Attempt to get the VLV/BXT DSI stuff to pass CI :/

Ville Syrjälä (17):
  drm/i915: Relocate intel_crtc_dotclock()
  drm/i915: Shuffle some PLL code around
  drm/i915: Extract HAS_DOUBLE_BUFFERED_M_N()
  drm/i915/dsi: Extract {vlv,bxt}_get_pclk()
  drm/i915: Do .crtc_compute_clock() earlier
  drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
  drm/i915: Feed the DPLL output freq back into crtc_state
  drm/i915: Compute clocks earlier
  drm/i915: Make M/N checks non-fuzzy
  drm/i915: Make all clock checks non-fuzzy
  drm/i915: Set active dpll early for icl+
  drm/i915: Nuke fastet state copy hacks
  drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not
    enabled
  drm/i915: Add intel_panel_highest_mode()
  drm/i915: Allow M/N change during fastset on bdw+
  drm/i915: Use a fixed N value always
  drm/i915: Round TMDS clock to nearest

 drivers/gpu/drm/i915/display/intel_crt.c      |   3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  22 --
 drivers/gpu/drm/i915/display/intel_display.c  | 199 +++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  50 +++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  69 +++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 204 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  15 ++
 drivers/gpu/drm/i915/display/intel_panel.h    |   3 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  10 +
 .../gpu/drm/i915/display/intel_pch_refclk.h   |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  11 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    | 141 +++++++-----
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 19 files changed, 420 insertions(+), 326 deletions(-)

-- 
2.35.1

