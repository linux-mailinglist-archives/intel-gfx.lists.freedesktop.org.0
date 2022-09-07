Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD045B0002
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE32610E46D;
	Wed,  7 Sep 2022 09:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458B210E48C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541861; x=1694077861;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fnzzn6z1NyybU5C89yLliseJfVf9W0Qus8o0fpUOyaI=;
 b=nmRfFbsa8cynEwiyYsgOzJnQv8REsrQOEQuCXf2Pa2R1DbaqPxDHOA4Q
 JN19zazMnTjd0XX3LCVq3aGLtBE5+XtqTeI2e4piAv4PKwJwIAAuKu/Tz
 r+kVQZoSBjmdzh8qe06aIwF/wK8i1h1sGyZBdgkRL5DVdij1O8wZG7njU
 2rlQ/VsiUfcpfyF/FX9nQbwjAOr1Sq8GT8nD6orzR1WJPAhcpjFh8Ms4S
 apyctbYUGUdPXi8eyOyjmB7uTRVjIUw0ooZch2jeIWZ28784dXsqznMAp
 Fp45zCeMJC+QY20uLrA9r8d+m689RhyhA1HXNJVmrSF2UPedsTQf02dmS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="358538129"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="358538129"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="591612838"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 07 Sep 2022 02:10:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:10:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:40 +0300
Message-Id: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/17] drm/i915: Make fastset not suck and
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
Changes in v4:
- Just a rebase

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

