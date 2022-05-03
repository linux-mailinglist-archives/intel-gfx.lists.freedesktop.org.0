Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC34518C2B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E766610E7D5;
	Tue,  3 May 2022 18:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81FC010E7D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602165; x=1683138165;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mreGIiAYrjBvJtPMkVF/8SAzZ8S58HiqV9viAuplTXc=;
 b=KpG7BJcgsyPrzNAQfrTZKJX7hYgP5sI2tvweo5QIYmIOxtayJ5eD71rP
 RRfIFB0fotHk9T0wS4WL9BPt49MgTKVasgLODtX3R709esSzvNqqsbLpz
 MaHAsAm6GtvQ9EElcdcZWT8FRHXLWGAOJ/GdwHdXIfiJ57186qynMxPpv
 BRme0q49Ih51NBxBYR1e3PR39aQXlsI5ZClc9EhEgj2+LoesD23EThpO6
 wrHAZ2+rwJx2DpIT7SWXkvo6cwdFLLrYBSYNHRbtm7LAhrjwTIX+UEDv7
 AYnyrnf0K++opa3pgt8LfBt1jxgupxqxVbuJiv15+f7r+j9gnpuiLKu2l w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="328092983"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="328092983"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:22:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="536448734"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 03 May 2022 11:22:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:22:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:16 +0300
Message-Id: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/26] drm/i915: Make fastset not suck and allow
 seamless M/N changes
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

Here's a (still somewhat rough) series to get rid of al those horrible
fuzzy clock checks in the fastset code. We achieve that by feeding back
the actual DPLL frequency and actual dotclock into the crtc state.

And with fastset made to not suck we can consider allowing
seameless M/N changes on eDP panels that support such things.
I've given that a quick test here on a TGL and it seemed to work
OK.

The rough parts:
- The DPLL stuff is kinda messy still, a lot of which is due to
  the dpll_mgr vs. not depending on platform/output type. Maybe
  it's finally time to start cleaning that mess up...
- fastboot is a bit challenging due to rounding behaviour
  differences between i915 vs. VBIOS/GOP
- DSI clock handling is snafu
- Didn't polish some of the things fully yet
- Might be some stuff I've still overlooked

Figured I'd see if there's any feedback, and get CI results for
it anyway.

Pushed the lot here:
https://github.com/vsyrjala/linux.git crtc_clock_compute_8

Ville Syrjälä (26):
  drm/i915: Split shared dpll .get_dplls() into compute and get phases
  drm/i915: Do .crtc_compute_clock() earlier
  drm/i915: Clean up DPLL related debugs
  drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
  drm/i915: Extract PIPE_CONF_CHECK_TIMINGS()
  drm/i915: Extract PIPE_CONF_CHECK_RECT()
  drm/i915: Adjust intel_modeset_pipe_config() & co. calling convention
  drm/i915: s/pipe_config/crtc_state/
  drm/i915: Improve modeset debugs
  drm/i915: Extract intel_crtc_dotclock()
  drm/i915: Introduce struct iclkip_params
  drm/i915: Feed the DPLL output freq back into crtc_state
  drm/i915: Compute clocks earlier
  drm/i915: Skip FDI vs. dotclock sanity check during readout
  drm/i915: Make M/N checks non-fuzzy
  drm/i915: Make all clock checks non-fuzzy
  drm/i915: Set active dpll early for icl+
  drm/i915: Nuke fastet state copy hacks
  drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not
    enabled
  drm/i915: Check hw.enable and hw.active in intel_pipe_config_compare()
  drm/i915: Add intel_panel_highest_mode()
  drm/i915: Allow M/N change during fastset on bdw+
  drm/i915: Require an exact DP link freq match for the DG2 PLL
  drm/i915: Use a fixed N value always
  drm/i915: Round to closest in M/N calculations
  drm/i915: Round TMDS clock to nearest

 drivers/gpu/drm/i915/display/intel_crt.c      |   3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  21 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 376 +++++++-----------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  36 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 156 +++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 373 ++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  15 +
 drivers/gpu/drm/i915/display/intel_panel.h    |   3 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 100 +++--
 .../gpu/drm/i915/display/intel_pch_refclk.h   |   1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   2 +-
 17 files changed, 650 insertions(+), 449 deletions(-)

-- 
2.35.1

