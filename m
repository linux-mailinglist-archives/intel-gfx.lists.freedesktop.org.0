Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id frjjL1BAymky7AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 11:20:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECA4358089
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 11:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1A710E458;
	Mon, 30 Mar 2026 09:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S9cBYH1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5329810E458;
 Mon, 30 Mar 2026 09:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774862413; x=1806398413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KY1ELZtH2En9ImLQq+GK9FXLv0b7TZ9Celan5TQwKc8=;
 b=S9cBYH1OBgvzjkgLrdbxnUsUGJTFKZIkwmBNzdE4t56L/9+F7Nb/ZTX7
 MNHdXZQGMLgLK3QA7k/ppW7IMiUcWoTVPL6fh6sXbSCBcrvNKTRDc9U+m
 ffRptK6IdEt+zDU/5dxaid36B5ddWnxiVOOpDmZpHHkZREHA1UzAF+PAg
 TunWuwGP4itRJSlt5MnvJdrVUSTatmdX7ufK9HKhMsbx1iqWUtdiKx5EV
 99nAAd/BatjnlgZmZ+AJHhFveRf+uRSqVEtaI6ajk8N/kfEB7z1TFrvSY
 eg5jLPAXj1RXtnP6a0wT7JTd07cDuFxVXaoJNxfWObKYVT4/f8zUUgh/U g==;
X-CSE-ConnectionGUID: gTMTauyAT2WrsAkgPCFSFQ==
X-CSE-MsgGUID: SWgND1qnRjSnuKjwg14UHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="86467296"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="86467296"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 02:20:07 -0700
X-CSE-ConnectionGUID: NVfVk12hS3aWr/Tgpwvr3Q==
X-CSE-MsgGUID: iSau7Pm6S5m9B6jmLymM7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="221126582"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 02:20:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-intel-next
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Date: Mon, 30 Mar 2026 12:19:59 +0300
Message-ID: <ac9dfdb745d5a67c519ea150a6f36f8f74b8760e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 0ECA4358089
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Hi Dave & Sima -

drm-intel-next-2026-03-30:
drm/i915 feature pull #2 for v7.1:

Refactoring and cleanups:
- Refactor LT PHY PLL handling to use the DPLL framework (Mika)
- Implement display register polling and waits in display code (Ville)
- Move PCH clock gating in display PCH file (Luca)
- Add shared stepping info header for i915 and display (Jani)
- Clean up GVT I2C command decoding (Jonathan)
- NV12 plane unlinking cleanups (Ville)
- Clean up NV12 DDB/watermark handling for pre-ICL platforms (Ville)

Fixes:
- An assortment of DSI fixes (Ville)
- Handle PORT_NONE in assert_port_valid() (Jonathan)
- Fix link failure without FBDEV emulation (Arnd Bergmann)
- Quirk disable panel replay on certain Dell XPS models (Jouni)
- Check if VESA DPCD AUX backlight is possible (Suraj)

Other:
- Mailmap update for Christoph (Christoph)

BR,
Jani.

The following changes since commit 9876394f64a7c166964e003585806473ad6f532b:

  drm/{i915,xe}: move framebuffer bo to parent interface (2026-03-16 11:00:=
21 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-20=
26-03-30

for you to fetch changes up to e012fa31f90de0928d85ab22d9cc5fc8fe84c5b0:

  drm/i915/uncore: Do GT FIFO checks in early sanitize and forcewake get (2=
026-03-27 13:08:32 +0200)

----------------------------------------------------------------
drm/i915 feature pull #2 for v7.1:

Refactoring and cleanups:
- Refactor LT PHY PLL handling to use the DPLL framework (Mika)
- Implement display register polling and waits in display code (Ville)
- Move PCH clock gating in display PCH file (Luca)
- Add shared stepping info header for i915 and display (Jani)
- Clean up GVT I2C command decoding (Jonathan)
- NV12 plane unlinking cleanups (Ville)
- Clean up NV12 DDB/watermark handling for pre-ICL platforms (Ville)

Fixes:
- An assortment of DSI fixes (Ville)
- Handle PORT_NONE in assert_port_valid() (Jonathan)
- Fix link failure without FBDEV emulation (Arnd Bergmann)
- Quirk disable panel replay on certain Dell XPS models (Jouni)
- Check if VESA DPCD AUX backlight is possible (Suraj)

Other:
- Mailmap update for Christoph (Christoph)

----------------------------------------------------------------
Arnd Bergmann (1):
      drm/i915/fbdev: fix link failure without FBDEV emulation

Christoph Manszewski (1):
      mailmap: update email address for Christoph Manszewski

Imre Deak (1):
      drm/i915/dp_tunnel: Fix error handling when clearing stream BW in ato=
mic state

Jani Nikula (5):
      drm/i915/dmc: simplify stepping info initialization
      drm/i915/display: add step name in display runtime info
      drm/i915/dmc: use step name from runtime info
      drm/xe/compat: remove intel_step_name macro
      drm/intel: add shared step.h and switch i915 to use it

Jonathan Cavitt (2):
      drm/i915/display: PORT_NONE is not valid
      drm/i915/gvt: Swap read and write checks

Jouni H=C3=B6gander (4):
      drm/i915/psr: Disable PSR on update_m_n and update_lrr
      drm/i915/psr: Compute PSR entry_setup_frames into intel_crtc_state
      drm/i915/psr: Disable Panel Replay on Dell XPS 14 DA14260 as a quirk
      drm/i915/psr: Fixes for Dell XPS DA14260 quirk

Luca Coelho (4):
      drm/i915/display: move clock-gating init for IBX to display
      drm/i915: move CPT clock gating init into intel_pch
      drm/i915: move LPT clock gating init into intel_pch
      drm/i915: move CNP clock gating init into intel_pch

Mika Kahola (24):
      drm/i915/lt_phy: Dump missing PLL state parameters
      drm/i915/lt_phy: Add check if PLL is enabled
      drm/i915/lt_phy: Add PLL information for xe3plpd
      drm/i915/lt_phy: Refactor LT PHY PLL handling to use explicit PLL sta=
te
      drm/i915/lt_phy: Add lane_count to PLL state
      drm/i915/lt_phy: Add xe3plpd .compute_dplls hook
      drm/i915/lt_phy: Add xe3plpd .get_dplls hook
      drm/i915/lt_phy: Add xe3plpd .put_dplls hook
      drm/i915/lt_phy: Add xe3plpd .update_active_dpll hook
      drm/i915/lt_phy: Add xe3plpd .update_dpll_ref_clks hook
      drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
      drm/i915/lt_phy: Add xe3plpd .compare_hw_state hook
      drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
      drm/i915/lt_phy: Add xe3plpd .get_freq hook
      drm/i915/lt_phy: Add xe3plpd .crtc_get_dpll
      drm/i915/lt_phy: Add .enable_clock hook on DDI
      drm/i915/lt_phy: Add .disable_clock hook on DDI
      drm/i915/lt_phy: Dump lane count for HW state
      drm/i915/lt_phy: Readout lane count
      drm/i915/lt_phy: Get encoder configuration for xe3plpd platform
      drm/i915/lt_phy: Add xe3plpd Thunderbolt PLL hooks
      drm/i915/lt_phy: Remove LT PHY specific state verification
      drm/i915/lt_phy: Enable dpll framework for xe3plpd
      drm/i915/lt_phy: Replace crtc compute clock

Samasth Norway Ananda (2):
      drm/i915/gmbus: fix spurious timeout on 512-byte burst reads
      drm/i915/gmbus: fix a typo in comment message

Suraj Kandpal (1):
      drm/i915/backlight: Check if VESA backlight is possible

Ville Syrj=C3=A4l=C3=A4 (23):
      drm/i915: Order OP vs. timeout correctly in __wait_for()
      drm/i915: Unlink NV12 planes earlier
      drm/i915: Relocate unlink_nv12_plane()
      drm/i915: Skip redundant NV12 plane unlinking
      drm/i915/wm: Nuke is_planar from skl+ wm structures
      drm/i915/wm: Reorder the arguments to skl_allocate_plane_ddb()
      drm/i915/wm: s/skl_check_nv12_wm_level()/skl_check_wm_level_nv12()/
      drm/i915/wm: Extract skl_allocate_plane_ddb_nv12()
      drm/i915/wm: Nuke wm->uv_wm[]
      drm/i915/wm: s/skl_print_plane_changes()/skl_print_plane_wm_changes()/
      drm/i915/wm: Extract skl_print_plane_ddb_changes()
      drm/i915/wm: Include ddb_y in skl_print_wm_changes() on pre-icl
      drm/i915/wm: Include .min_ddb_alloc_uv in the wm dumps
      drm/i915/de: Introduce intel_de.c and move intel_de_{read,write}8() t=
here
      drm/i915/de: Move intel_de_wait*() into intel_de.c
      drm/i915/de: Implement register polling in the display code
      drm/i915/dsi: Don't do DSC horizontal timing adjustments in command m=
ode
      drm/i915/dsi: s/eotp_pkt/eot_pkt/
      drm/i915/dsi: Make 'clock_stop' boolean
      drm/i915/dsi: Fill BLLPs with blanking packets if requested
      drm/i915/dsi: Place clock into LP during LPM if requested
      drm/i915/selftests: Nuke live_forcewake_domains selftest
      drm/i915/uncore: Do GT FIFO checks in early sanitize and forcewake get

 .mailmap                                           |   1 +
 drivers/gpu/drm/i915/Makefile                      |   1 +
 drivers/gpu/drm/i915/display/icl_dsi.c             |  21 ++-
 drivers/gpu/drm/i915/display/icl_dsi_regs.h        |   3 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h       |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c           |  26 +--
 drivers/gpu/drm/i915/display/intel_de.c            | 178 +++++++++++++++++=
++
 drivers/gpu/drm/i915/display/intel_de.h            | 121 +++----------
 drivers/gpu/drm/i915/display/intel_display.c       |  43 +----
 .../gpu/drm/i915/display/intel_display_device.c    |  28 ++-
 .../gpu/drm/i915/display/intel_display_device.h    |   1 +
 drivers/gpu/drm/i915/display/intel_display_types.h |   4 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |  19 +-
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c  |  32 +++-
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     |  20 ++-
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h     |  11 +-
 drivers/gpu/drm/i915/display/intel_dpll.c          |  26 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 186 +++++++++++++++++=
++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |   1 +
 drivers/gpu/drm/i915/display/intel_dsi.h           |   7 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c       |  12 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c         |   6 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c        | 193 ++++++++++++-----=
----
 drivers/gpu/drm/i915/display/intel_lt_phy.h        |  23 ++-
 .../gpu/drm/i915/display/intel_modeset_verify.c    |   1 -
 drivers/gpu/drm/i915/display/intel_pch.c           |  93 ++++++++++
 drivers/gpu/drm/i915/display/intel_pch.h           |   1 +
 drivers/gpu/drm/i915/display/intel_plane.c         |  61 +++----
 drivers/gpu/drm/i915/display/intel_psr.c           |  15 +-
 drivers/gpu/drm/i915/display/intel_quirks.c        |  25 ++-
 drivers/gpu/drm/i915/display/intel_quirks.h        |   1 +
 drivers/gpu/drm/i915/display/skl_watermark.c       | 162 +++++++++++------
 drivers/gpu/drm/i915/display/vlv_dsi.c             |   2 +-
 drivers/gpu/drm/i915/gvt/edid.c                    |  18 +-
 drivers/gpu/drm/i915/i915_initial_plane.c          |   3 +-
 drivers/gpu/drm/i915/i915_wait_util.h              |   2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c          |  86 +--------
 drivers/gpu/drm/i915/intel_step.h                  |  57 +-----
 drivers/gpu/drm/i915/intel_uncore.c                |  72 +++++---
 drivers/gpu/drm/i915/selftests/intel_uncore.c      |  62 -------
 drivers/gpu/drm/xe/Makefile                        |   1 +
 .../gpu/drm/xe/compat-i915-headers/intel_step.h    |   3 +-
 .../gpu/drm/xe/compat-i915-headers/intel_uncore.h  |  31 ----
 include/drm/intel/step.h                           |  62 +++++++
 45 files changed, 1049 insertions(+), 683 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_de.c
 create mode 100644 include/drm/intel/step.h

--=20
Jani Nikula, Intel
