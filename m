Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBgHBcjct2mcWAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 11:34:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC1B297F7A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 11:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEA689C0A;
	Mon, 16 Mar 2026 10:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="msALPbsx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 917B789C0A;
 Mon, 16 Mar 2026 10:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773657282; x=1805193282;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L43toE5GvtrbM+BT3xG/aKHOf2Civ5e0OpoeSv1UM68=;
 b=msALPbsx/PIgYp2Wibas3/XMtqG/RWJ3XMAbLmX4f58HOLXINRwaFVbI
 fgb7our4mSyiN0efhtKkvx/cFArlgaug8oToGoSPBAgOE4rLjWQ1ySU81
 lm5q0d/6SCbyxsbo5dxTGXqTesEcf/Xpx7e/5EOiuc8eOra3XcvVoRWz6
 ndBSUuK8IYO9RE/Ol1qvm3nOOT9ExISeXXLjpy1DF5SRAb6j+O08Uq3q6
 cHs/dsKDAu+VOgRpcdU8pK14O+Sz93/y9/ua1JVlh8B3efbZBOErlhpUw
 sKYss3nY+1id6m9tlsxFsDYwLMfXmbs1yVMyMQ/TOXeibys/fUrtujTrn A==;
X-CSE-ConnectionGUID: Rp+8Xf1NSpGfw6K8+mBjeg==
X-CSE-MsgGUID: dNFr7AW7SEGPoSesPiqVtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="86145365"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="86145365"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 03:34:41 -0700
X-CSE-ConnectionGUID: y3kD5yz3QXSeiTHHEzDAxw==
X-CSE-MsgGUID: dWCibLcPT4ynvgPCmUwG8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="225994845"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 03:34:35 -0700
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
Date: Mon, 16 Mar 2026 12:34:31 +0200
Message-ID: <b14bb0f297b1750816cf5f342bde608e435655fa@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 5BC1B297F7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Hi Dave & Sima -

First i915 pull for v7.1, mostly display, with xe display changes as
well.

BR,
Jani.

drm-intel-next-2026-03-16:
drm/i915 feature pull for v7.1:

Features and functionality:
- C10/C20/LT PHY PLL divider verification (Mika)
- Use trans push mechanism to generate PSR frame change event on LNL+ (Joun=
i)
- Account for DSC bubble overhead for horizontal slices (Ankit, Chaitanya)

Refactoring and cleanups:
- Refactor DP DSC slice config computation (Imre)
- Use GVT versions of register helper macros for GVT MMIO table (Ankit)
- C10/C20/LT PHY PLL computation refactoring (Mika)
- VGA decode refactoring and related fixes/cleanups (Ville)
- Move DSB buffer buffer implementation to display parent interface (Jani)
- Move error interrupt capture to display irq snapshot (Jani)
- Move pcode calls to display parent interface (Jani)
- Reduce GVT dependency on display headers (Jani)
- Compute config and mode valid refactoring for DSC (Ankit)
- Stop using i915 core register headers in display (Uma)
- Refactor DPT, move i915 parts to display parent interface (Jani)
- Refactor gen2-4 overlay, move to display parent interface (Ville)
- Refactor masked field register macro helpers, move to shared headers (Jan=
i)
- Convert a number of workaround checks to the new workaround framework (Lu=
ca)
- Refactor and move frontbuffer calls to display parent interface (Jani)
- Add VMA calls to display parent interface (Jani)
- Refactor stolen memory allocation decisions (Vinod, Ville)
- Clean up and unify workqueue usage (Marco Crivellari)
- Preparation for UHBR DP tunnels (Imre)
- Allow DSC passthrough modes during DP MST mode validation (Imre)
- Move framebuffer bo interface to display parent interface (Jani)

Fixes:
- Plenty of DP SST HPD IRQ handling fixes (Imre)
- DP AUX backlight and luminance control fixes (Suraj)
- Respect VBT pipe joiner disable for eDP (Ankit)
- Do not use CASF with joiner (Nemesa)
- Clear C10/C20 PHY response read and error bit to avoid PHY hangs (Suraj)
- Xe3p_LPD DMG clock gating, CDCLK, port sync workarounds (Suraj, Gustavo, =
Mitul)
- Fix GVT error path (Micha=C5=82)
- Handle errors on DP DSC receiver cap reads (Suraj)
- DSS clock gating workaround on MTL+ to avoid DSC corruption (Mika)
- Skip state verification for LT PHY in TBT mode (Suraj)
- Fix NULL pointer dereference on suspend when uc firmware not loaded (Rahu=
l Bukte)
- Fix an unlikely DMC state related NULL pointer dereference at probe (Imre)
- Handle error returns from vga_get_uninterruptible() (Simon Richter)
- Increase C10/C20/LT PHY timeouts to include SOC/OS turnaround (Arun)
- Fix BIOS FB vs. stolen memory size check (Ville)
- Fix LOBF to use computed guardband and set context latency (Ankit)
- Handle modeset WW mutex lock failures due to contention properly (Imre)
- Fix pipe BPP clamping due to HDR (Imre)
- Fix stale state usage in DSC state computation (Imre)
- Take HDCP 1.4 vs 2.x into account during link check (Suraj)
- Fix forced link retrain handling in MST HPD IRQ handler (Imre)
- Remove redundant warning on vcpi < 0 (Jonathan)

Core changes:
- iopoll: fix function parameter names in read_poll_timeout_atomic() (Randy=
 Dunlap)

Merges:
- Backmerge drm-next for v7.0-rc1 (Jani)

BR,
Jani.

The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:

  Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-20=
26-03-16

for you to fetch changes up to 9876394f64a7c166964e003585806473ad6f532b:

  drm/{i915,xe}: move framebuffer bo to parent interface (2026-03-16 11:00:=
21 +0200)

----------------------------------------------------------------
drm/i915 feature pull for v7.1:

Features and functionality:
- C10/C20/LT PHY PLL divider verification (Mika)
- Use trans push mechanism to generate PSR frame change event on LNL+ (Joun=
i)
- Account for DSC bubble overhead for horizontal slices (Ankit, Chaitanya)

Refactoring and cleanups:
- Refactor DP DSC slice config computation (Imre)
- Use GVT versions of register helper macros for GVT MMIO table (Ankit)
- C10/C20/LT PHY PLL computation refactoring (Mika)
- VGA decode refactoring and related fixes/cleanups (Ville)
- Move DSB buffer buffer implementation to display parent interface (Jani)
- Move error interrupt capture to display irq snapshot (Jani)
- Move pcode calls to display parent interface (Jani)
- Reduce GVT dependency on display headers (Jani)
- Compute config and mode valid refactoring for DSC (Ankit)
- Stop using i915 core register headers in display (Uma)
- Refactor DPT, move i915 parts to display parent interface (Jani)
- Refactor gen2-4 overlay, move to display parent interface (Ville)
- Refactor masked field register macro helpers, move to shared headers (Jan=
i)
- Convert a number of workaround checks to the new workaround framework (Lu=
ca)
- Refactor and move frontbuffer calls to display parent interface (Jani)
- Add VMA calls to display parent interface (Jani)
- Refactor stolen memory allocation decisions (Vinod, Ville)
- Clean up and unify workqueue usage (Marco Crivellari)
- Preparation for UHBR DP tunnels (Imre)
- Allow DSC passthrough modes during DP MST mode validation (Imre)
- Move framebuffer bo interface to display parent interface (Jani)

Fixes:
- Plenty of DP SST HPD IRQ handling fixes (Imre)
- DP AUX backlight and luminance control fixes (Suraj)
- Respect VBT pipe joiner disable for eDP (Ankit)
- Do not use CASF with joiner (Nemesa)
- Clear C10/C20 PHY response read and error bit to avoid PHY hangs (Suraj)
- Xe3p_LPD DMG clock gating, CDCLK, port sync workarounds (Suraj, Gustavo, =
Mitul)
- Fix GVT error path (Micha=C5=82)
- Handle errors on DP DSC receiver cap reads (Suraj)
- DSS clock gating workaround on MTL+ to avoid DSC corruption (Mika)
- Skip state verification for LT PHY in TBT mode (Suraj)
- Fix NULL pointer dereference on suspend when uc firmware not loaded (Rahu=
l Bukte)
- Fix an unlikely DMC state related NULL pointer dereference at probe (Imre)
- Handle error returns from vga_get_uninterruptible() (Simon Richter)
- Increase C10/C20/LT PHY timeouts to include SOC/OS turnaround (Arun)
- Fix BIOS FB vs. stolen memory size check (Ville)
- Fix LOBF to use computed guardband and set context latency (Ankit)
- Handle modeset WW mutex lock failures due to contention properly (Imre)
- Fix pipe BPP clamping due to HDR (Imre)
- Fix stale state usage in DSC state computation (Imre)
- Take HDCP 1.4 vs 2.x into account during link check (Suraj)
- Fix forced link retrain handling in MST HPD IRQ handler (Imre)
- Remove redundant warning on vcpi < 0 (Jonathan)

Core changes:
- iopoll: fix function parameter names in read_poll_timeout_atomic() (Randy=
 Dunlap)

Merges:
- Backmerge drm-next for v7.0-rc1 (Jani)

----------------------------------------------------------------
Ankit Nautiyal (26):
      drm/i915/vbt: Add edp pipe joiner enable/disable bits
      drm/i915/dp: Avoid joiner for eDP if not enabled in VBT
      drm/i915/gvt_mmio_table: Use the gvt versions of the display macros
      drm/i915/dp: Early reject bad hdisplay in intel_dp_mode_valid
      drm/i915/dp: Move num_joined_pipes and related checks together
      drm/i915/dp: Extract helper to get the hdisplay limit
      drm/i915/dp: Rework pipe joiner logic in mode_valid
      drm/i915/dp: Rework pipe joiner logic in compute_config
      drm/i915/dp_mst: Move the check for dotclock at the end
      drm/i915/dp_mst: Move the joiner dependent code together
      drm/i915/dp_mst: Rework pipe joiner logic in mode_valid
      drm/i915/dp_mst: Extract helper to compute link for given joiner conf=
ig
      drm/i915/dp_mst: Rework pipe joiner logic in compute_config
      drm/i915/dp: Remove unused joiner helpers
      drm/i915/dp: Introduce helper to check pixel rate against dotclock li=
mits
      drm/i915/dp: Refactor dsc_slice_count handling in intel_dp_mode_valid=
()
      drm/i915/dp: Account for DSC slice overhead
      drm/i915/dp: Add helpers for joiner candidate loops
      drm/i915/alpm: Compute LOBF late after guardband is already determined
      drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines
      drm/i915/alpm: Allow LOBF only for platform that have Always on VRR TG
      drm/i915/alpm: Simplify and align LOBF checks in pre/post plane update
      drm/i915/alpm: Disable LOBF around transitioning for LRR/seamless MN
      drm/i915/quirks: Fix device id for QUIRK_EDP_LIMIT_RATE_HBR2 entry
      drm/i915/dp: Make intel_dp_can_join() static
      drm/i915/dp: Restore the missing check for intel_dp_has_joiner

Arun R Murthy (3):
      drm/i915/cx0_phy_regs: Include SoC and OS turnaround time
      drm/i915/lt_phy_regs: Add SoC/OS turnaround time
      drm/i915/dp: Read ALPM caps after DPCD init

Chaitanya Kumar Borah (2):
      drm/i915/display: Add upper limit check for pixel clock
      drm/i915/display: Extend the max dotclock limit to WCL

Gustavo Sousa (1):
      drm/i915/cdclk: Extend Wa_13012396614 to Xe3p_LPD

Imre Deak (54):
      drm/i915/dsc: Track the detaild DSC slice configuration
      drm/i915/dsc: Track the DSC stream count in the DSC slice config state
      drm/i915/dsi: Move initialization of DSI DSC streams-per-pipe to fill=
_dsc()
      drm/i915/dsi: Track the detailed DSC slice configuration
      drm/i915/dp: Track the detailed DSC slice configuration
      drm/i915/dsc: Switch to using intel_dsc_line_slice_count()
      drm/i915/dp: Factor out intel_dp_dsc_min_slice_count()
      drm/i915/dp: Use int for DSC slice count variables
      drm/i915/dp: Rename test_slice_count to slices_per_line
      drm/i915/dp: Simplify the DSC slice config loop's slices-per-pipe ite=
ration
      drm/i915/dsc: Add intel_dsc_get_slice_config()
      drm/i915/dsi: Use intel_dsc_get_slice_config()
      drm/i915/dp: Unify DP and eDP slice count computation
      drm/i915/dp: Add intel_dp_dsc_get_slice_config()
      drm/i915/dp: Use intel_dp_dsc_get_slice_config()
      drm/i915/dp: Fix pipe BPP clamping due to HDR
      drm/i915/dp: Verify valid pipe BPP range
      drm/i915/display: Clarify target pipe bpp variable name in compute_si=
nk_pipe_bpp()
      drm/i915/dp: Clamp the connector max_bpc request to the valid pipe bp=
p range
      drm/i915/dp: Add missing slice count check during mode validation
      drm/i915/dp: Export intel_dp_compute_min_compressed_bpp_x16()
      drm/i915/dp_mst: Track min link BPP as x16 fixed-point during mode va=
lidation
      drm/i915/dp_mst: Allow modes requiring compression for DSC passthrough
      drm/i915/dp: Fix ww mutex lock failure in for_each_joiner_candidate()=
 loop
      drm/i915/dp_mst: Fix ww mutex lock failure in for_each_joiner_candida=
te() loop
      drm/i915/dp_tunnel: Don't update tunnel state during system resume
      drm/i915/dp_tunnel: Simplify detection of link BW change
      drm/i915/dp_tunnel: Split update_tunnel_state()
      drm/i915/dp_tunnel: Sanitize documentation of intel_dp_tunnel_detect()
      drm/i915/dp_tunnel: Send BW change notification after tunnel creation
      drm/i915/dp: Fix DSC state computation
      drm/i915/dp_mst: Reprobe connector if the IRQ ESI read failed
      drm/i915/dp_mst: Verify the link status always the same way
      drm/i915/dp_mst: Reuse intel_dp_check_link_state() in the HPD IRQ han=
dler
      drm/i915/dp: Handle a tunneling IRQ after acking it
      drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
      drm/i915/dp: Handle the DOWNSTREAM_PORT_STATUS_CHANGED event
      drm/i915/dp: Don't clobber the encoder state in the HPD IRQ handler
      drm/i915/dp: Remove the device service IRQ handling from connector de=
tect
      drm/i915/dp: Fix the device service IRQ DPCD_REV check
      drm/i915/dp: Fix the link service IRQ DPCD_REV check
      drm/i915/dp: Reprobe connector if getting/acking device IRQs fails
      drm/i915/dp: Reprobe connector if getting/acking link service IRQs fa=
ils
      drm/i915/dp: Return early if getting/acking device service IRQs fails
      drm/i915/dp: Return early if getting/ackink link service IRQs fails
      drm/i915/dp: Read/ack sink count and sink IRQs for SST as it's done f=
or MST
      drm/i915/dp: Print debug message for a sink connected off request
      drm/i915/dp: Check SST link status while handling link service IRQs
      drm/i915/dp_mst: Reuse intel_dp_handle_link_service_irq()
      drm/i915/dp: Ack only the handled device service IRQs
      drm/i915/dp: Ack only the handled link service IRQs
      drm/i915/dmc: Fix an unlikely NULL pointer deference at probe
      drm/i915/dp_mst: Fix forced link retrain handling in MST HPD IRQ hand=
ler
      drm/i915/dp: Simplify forcing a link retraining

Jani Nikula (44):
      drm/i915: move GEN7_ERR_INT snapshot to display irq code
      drm/i915/dsb: move i915 specific DSB buffer implementation to i915
      drm/{i915, xe}/dsb: move DSB buffer to parent interface
      drm/{i915, xe}/pcode: move display pcode calls to parent interface
      drm/i915/display: move enum aux_ch to intel_display_limits.h
      drm/i915/gvt: drop dependency on display struct dpll
      drm/i915/gvt: drop dependency on intel_display_types.h
      drm/i915/gvt: drop unnecessary include of intel_display.h
      drm/i915/overlay: remove dead code with MTL platform checks
      Merge drm/drm-next into drm-intel-next
      drm/i915/dpt: move display/intel_dpt.c to i915_dpt.c
      drm/i915/dpt: pass obj, size instead of framebuffer to intel_dpt_crea=
te()
      drm/i915/dpt: move create/destroy to parent interface
      drm/i915/dpt: move suspend/resume to parent interface
      drm/i915/dpt: remove display/intel_dpt.h
      drm/i915/dpt: drop _common from the DPT file names
      drm/i915/dpt: switch to i915 runtime pm calls
      drm/i915/dpt: rename i915 specific functions to i915_dpt_ prefix
      drm/i915/dpt: rename struct i915_dpt to intel_dpt
      drm/i915/dpt: pass opaque struct intel_dpt around instead of i915_add=
ress_space
      drm/i915/fbdev: stop debug logging i915_ggtt_offset()
      drm/i915: add VMA to parent interface
      drm/xe/compat: remove i915_vma.h from compat
      drm/xe/display: clean up xe_initial_plane.c includes
      drm/i915/reg: make masked field helpers constexpr
      drm/i915/lrc: switch to _MASKED_BIT_ENABLE() and _MASKED_BIT_DISABLE()
      drm/{i915, xe}/reg: rename masked field helpers REG_MASKED_FIELD*()
      drm/i915/perf: prefer REG_MASKED_FIELD_ENABLE() and REG_MASKED_FIELD_=
DISABLE()
      drm/xe/oa: prefer REG_MASKED_FIELD_ENABLE() and REG_MASKED_FIELD_DISA=
BLE()
      drm/intel: add reg_bits.h for the various register content helpers
      drm/intel: add pick.h for the various "picker" helpers
      drm/i915/gt: prefer _PICK_EVEN() over _PICK()
      drm/i915/gem: relocate __i915_gem_object_{flush, invalidate}_frontbuf=
fer()
      drm/i915/gem: unify i915 gem object frontbuffer function names
      drm/i915/overlay: convert from struct intel_frontbuffer to i915_front=
buffer
      drm/intel: fix @dpt kernel-doc for parent interface
      drm/{i915, xe}/frontbuffer: move frontbuffer handling to parent inter=
face
      drm/i915/frontbuffer: call parent interface directly
      drm/i915/frontbuffer: reduce fb for frontbuffer abbreviation usage
      drm/i915: move i915 specific bo implementation to i915
      drm/xe: rename intel_bo.c to xe_display_bo.c
      drm/{i915, xe}/bo: move display bo calls to parent interface
      drm/i915/fb: make intel_fb_bo.c less dependent on display
      drm/{i915,xe}: move framebuffer bo to parent interface

Jonathan Cavitt (2):
      drm/i915/display: Prevent u64 underflow in intel_fbc_stolen_end
      drm/i915/display: vcpi is always greater than zero

Jouni H=C3=B6gander (19):
      drm/i915/psr: Don't enable Panel Replay on sink if globally disabled
      drm/i915/psr: Add TRANS_PUSH register bit definition for PSR
      drm/i915/psr: Add intel_psr_use_trans_push to query if TRANS_PUSH is =
used
      drm/i915/vrr: Add helper for parsing value to be written into TRANS_P=
USH
      drm/i915/vrr: Add helper for PSR to enable Frame Change event on tran=
s push
      drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism for PSR frame change
      drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit for LunarLake and onw=
ards
      drm/i915/display: Wait for vblank in case of PSR is using trans push
      drm/i915/psr: Wait for idle only after possible send push
      drm/i915/psr: Do PSR exit on frontbuffer flush on LunarLake and onwar=
ds
      drm/i915/display: Add HAS_PSR_TRANS_PUSH_FRAME_CHANGE macro
      drm/i915/psr: Use TRANS_PUSH to trigger frame change event
      drm/i915/alpm: ALPM disable fixes
      drm/dp: Add definition for Panel Replay full-line granularity
      drm/i915/psr: Fix for Panel Replay X granularity DPCD register handli=
ng
      drm/i915/psr: Repeat Selective Update area alignment
      drm/i915/dsc: Add Selective Update register definitions
      drm/i915/dsc: Add helper for writing DSC Selective Update ET paramete=
rs
      drm/i915/psr: Write DSC parameters on Selective Update in ET mode

Kaushlendra Kumar (1):
      drm/i915/acpi: free _DSM package when no connectors

Luca Coelho (16):
      drm/i915/display: remove enum macro magic in intel_display_wa()
      drm/i915/display: convert audio workaround to new framework
      drm/i915/display: convert W/As in intel_display_power.c to new framew=
ork
      drm/i915/display: convert W/As in intel_cdclk.c to new framework
      drm/i915/display: convert W/As in intel_cursor.c to new framework
      drm/i915/display: convert W/As in intel_ddi.c to new framework
      drm/i915/display: convert W/As in intel_display.c to new framework
      drm/i915/display: convert W/As in intel_display_device.c to new frame=
work
      drm/i915/display: convert W/As in intel_dp_mst.c to new framework
      drm/i915/display: convert W/As in intel_fbc.c to new framework
      drm/i915/display: convert W/As in intel_flipq.c to new framework
      drm/i915/display: convert W/As in intel_modeset_setup.c to new framew=
ork
      drm/i915/display: convert W/As in intel_pmdemand.c to new framework
      drm/i915/display: convert W/As in intel_psr.c to new framework
      drm/i915/display: convert W/As in skl_universal_plane.c to new framew=
ork
      drm/i915/display: convert W/As in skl_watermark.c to new framework

Marco Crivellari (3):
      drm/i915: replace use of system_unbound_wq with system_dfl_wq
      drm/i915: replace use of system_wq with system_percpu_wq in the docum=
entation
      drm/i915: add WQ_PERCPU to alloc_workqueue users

Micha=C5=82 Grzelak (1):
      drm/i915: move intel_gvt_init() level higher

Mika Kahola (16):
      drm/i915/cx0: Move C10 port clock calculation
      drm/i915/cx0: Move C20 port clock calculation
      drm/i915/cx0: Drop Cx0 crtc_state from HDMI TMDS pll divider calculat=
ion
      drm/i915/lt_phy: Drop LT PHY crtc_state for port calculation
      drm/i915/cx0: Drop encoder from port clock calculation
      drm/i915/cx0: Create macro around PLL tables
      drm/i915/lt_phy: Create macro for LT PHY PLL state
      drm/i915/display: Add helper function for fuzzy clock check
      drm/i915/cx0: Fix HDMI FRL clock rates
      drm/i915/cx0: Add a fuzzy check for DP/HDMI clock rates during progra=
mming
      drm/i915/cx0: Verify C10/C20 pll dividers
      drm/i915/lt_phy: Add verification for lt phy pll dividers
      drm/i915/cx0: Drop C20 25.175 MHz rate
      drm/i915/lt_phy: Drop 27.2 MHz rate
      drm/i915/display: Remove .clock member from eDP/DP/HDMI pll tables
      drm/i915/power_well: Enable workaround for DSS clock gating issue

Mitul Golani (1):
      drm/i915/display: Implement Wa_16024710867

Nemesa Garg (1):
      drm/i915/casf: Disable CASF with joiner

Rahul Bukte (1):
      drm/i915/gt: Check set_default_submission() before deferencing

Randy Dunlap (1):
      iopoll: fix function parameter names in read_poll_timeout_atomic()

Simon Richter (1):
      drm/i915: handle failure from vga_get_uninterruptible()

Suraj Kandpal (13):
      drm/i915/cx0: Clear response ready & error bit
      drm/i915/cx0: Rename intel_clear_response_ready flag
      drm/i915/display: Disable DMG Clock Gating
      drm/i915/dp: Add a meaningful return to intel_dp_read_dsc_dpcd
      drm/i915/ltphy: Return true for TBT scenario during lt_phy_state comp=
are
      drm/i915/backlight: Remove try_vesa_interface
      drm/i915/backlight: Use intel_panel variable instead of intel_connect=
or
      drm/i915/backlight: Take luminance_set into account for VESA backlight
      drm/i915/backlight: Check luminance_set when disabling PWM via AUX VE=
SA backlight
      drm/i915/backlight: Short circuit intel_dp_aux_supports_hdr_backlight
      drm/i915/backlight: Update debug log during backlight setup
      drm/i915/backlight: Provide clear description on how backlight level =
is controlled
      drm/i915/hdcp: Take force_hdcp14 into account during check_link

Uma Shankar (21):
      drm/i915: Extract display registers from i915_reg.h to display
      drm/i915: Extract South chicken registers from i915_reg.h to display
      drm/i915: Extract display interrupt definitions
      drm/i915: Extract DSPCLK_GATE_D from i915_reg to display
      drm/{i915, xe}: Extract pcode definitions to common header
      drm/i915: Remove i915_reg.h from intel_display_device.c
      drm/i915: Move GMD_ID and mask to intel_gt header
      drm/i915: Remove i915_reg.h from intel_dram.c
      drm/i915: Remove i915_reg.h from intel_display.c
      drm/i915: Remove i915_reg.h from intel_overlay.c
      drm/i915: Remove i915_reg.h from g4x_dp.c
      drm/i915: Remove i915_reg.h from i9xx_wm.c
      drm/{i915, xe}: Remove i915_reg.h from g4x_hdmi.c
      drm/i915: Remove i915_reg.h from intel_rom.c
      drm/i915: Remove i915_reg.h from intel_psr.c
      drm/i915: Remove i915_reg.h from intel_fifo_underrun.c
      drm/i915: Remove i915_reg.h from intel_display_irq.c
      drm/i915: Remove i915_reg.h from intel_display_power_well.c
      drm/i915: Remove i915_reg.h from intel_modeset_setup.c
      drm/{i915, xe}: Remove i915_reg.h from display
      drm/xe/compat: Remove unused i915_reg.h from compat header

Ville Syrj=C3=A4l=C3=A4 (43):
      drm/i915/vga: Register vgaarb client later
      drm/i915/vga: Get rid of intel_vga_reset_io_mem()
      drm/i915/power: Remove i915_power_well_desc::has_vga
      drm/i915/vga: Extract intel_gmch_ctrl_reg()
      drm/i915/vga: Don't touch VGA registers if VGA decode is fully disabl=
ed
      drm/i915/vga: Clean up VGA registers even if VGA plane is disabled
      drm/i915/vga: Avoid VGA arbiter during intel_vga_disable() for iGPUs
      drm/i915/vga: Stop trying to use GMCH_CTRL for VGA decode control
      drm/i915/vga: Assert that VGA register accesses are going to the righ=
t GPU
      drm/i915/de: Simplify intel_de_read8()
      drm/i915/de: Add intel_de_write8()
      drm/i915/vga: Introduce intel_vga_{read,write}()
      drm/i915/vga: Use MMIO for VGA registers on pre-g4x
      video/vga: Add VGA_IS0_R
      drm/i915/crt: Use IS0_R instead of VGA_MIS_W
      drm/i915/crt: Extract intel_crt_sense_above_threshold()
      drm/i915: Get rid of the INTEL_GMCH_CTRL alias
      drm/i915: Clean up PCI config space reg defines
      drm/i915: Document the GMCH_CTRL register a bit
      drm/xe/fbdev: Fix BIOS FB vs. stolen size check
      drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
      drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
      drm/i915/overlay: Remove GPU hang snapshot stuff
      drm/i915/overlay: Track current frontbuffer_bits
      drm/i915/overlay: Extract i915_overlay_is_active()
      drm/i915/overlay: Remove redundant overlay->active
      drm/i915/overlay: Relocate the underrun check
      drm/i915/overlay: Introduce i915_overlay_obj_lookup()
      drm/i915/overlay: Use struct drm_gem_object as the type
      drm/i915/overlay: Extract i915_overlay_reset()
      drm/i915/overlay: Extract i915_overlay_setup()
      drm/i915/overlay: Extract i915_overlay_cleanup()
      drm/i915/overlay: Abstract buffer (un)pinning
      drm/i915/overlay: Rename low level i915 specific functions
      drm/i915/overlay: Adjust i915 specific interfaces
      drm/i915/overlay: Make i830_overlay_clock_gating() i915 specific
      drm/i915/overlay: s/dev_priv/i915/
      drm/i915/overlay: Split 'struct intel_overlay'
      drm/i915/overlay: Don't use fetch_and_zero() in display code
      drm/i915/overlay: Move i915 specific code into i915_overlay.c
      drm/i915/overlay: Convert overlay to parent interface
      drm/i915/overlay: Fix oops on unload
      drm/i915/vrr: Configure VRR timings after enabling TRANS_DDI_FUNC_CTL

Vinod Govindapillai (4):
      drm/i915/display: fix the pixel normalization handling for xe3p_lpd
      drm/i915/display: remove the usage of dev_priv
      drm/xe/fbdev: print info about stolen memory preference for fbdev
      drm/i915/fbdev: print info about stolen memory preference for fbdev

 drivers/gpu/drm/i915/Makefile                      |   7 +-
 drivers/gpu/drm/i915/display/g4x_dp.c              |   1 -
 drivers/gpu/drm/i915/display/g4x_hdmi.c            |   1 -
 drivers/gpu/drm/i915/display/hsw_ips.c             |  10 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c          |   1 -
 drivers/gpu/drm/i915/display/i9xx_wm.c             |  10 +-
 drivers/gpu/drm/i915/display/icl_dsi.c             |   7 -
 drivers/gpu/drm/i915/display/intel_alpm.c          | 157 ++--
 drivers/gpu/drm/i915/display/intel_alpm.h          |   9 +-
 drivers/gpu/drm/i915/display/intel_audio.c         |  24 +-
 drivers/gpu/drm/i915/display/intel_backlight.c     |   1 -
 drivers/gpu/drm/i915/display/intel_bios.c          |  31 +-
 drivers/gpu/drm/i915/display/intel_bo.c            | 100 +--
 drivers/gpu/drm/i915/display/intel_bo.h            |  14 +-
 drivers/gpu/drm/i915/display/intel_bw.c            |  24 +-
 drivers/gpu/drm/i915/display/intel_casf.c          |   7 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  63 +-
 drivers/gpu/drm/i915/display/intel_crt.c           |  18 +-
 drivers/gpu/drm/i915/display/intel_crt_regs.h      |   2 -
 drivers/gpu/drm/i915/display/intel_crtc.c          |   4 +-
 drivers/gpu/drm/i915/display/intel_cursor.c        |   3 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       | 737 +++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h       |   5 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h  |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  13 +-
 drivers/gpu/drm/i915/display/intel_de.h            |  17 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 151 +++-
 drivers/gpu/drm/i915/display/intel_display.h       |  27 +-
 .../gpu/drm/i915/display/intel_display_debugfs.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_device.c    |  10 +-
 .../gpu/drm/i915/display/intel_display_device.h    |   1 +
 .../gpu/drm/i915/display/intel_display_driver.c    |  22 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c   |  11 +-
 .../gpu/drm/i915/display/intel_display_limits.h    |  26 +
 drivers/gpu/drm/i915/display/intel_display_power.c |  29 +-
 .../gpu/drm/i915/display/intel_display_power_map.c |  13 -
 .../drm/i915/display/intel_display_power_well.c    |  74 +-
 .../drm/i915/display/intel_display_power_well.h    |   2 -
 drivers/gpu/drm/i915/display/intel_display_regs.h  | 268 ++++++-
 drivers/gpu/drm/i915/display/intel_display_rps.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_snapshot.c  |   4 -
 drivers/gpu/drm/i915/display/intel_display_types.h |  12 +-
 drivers/gpu/drm/i915/display/intel_display_wa.c    |  83 +-
 drivers/gpu/drm/i915/display/intel_display_wa.h    |  28 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c            | 871 ++++++++++++++---=
----
 drivers/gpu/drm/i915/display/intel_dp.h            |  20 +-
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c  |  53 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 213 +++--
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     |  96 ++-
 drivers/gpu/drm/i915/display/intel_dpll.c          |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll.h          |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  11 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |   3 -
 drivers/gpu/drm/i915/display/intel_dpt.c           | 328 ++------
 drivers/gpu/drm/i915/display/intel_dpt.h           |  22 +-
 drivers/gpu/drm/i915/display/intel_dpt_common.c    |  35 -
 drivers/gpu/drm/i915/display/intel_dpt_common.h    |  13 -
 drivers/gpu/drm/i915/display/intel_dram.c          |   9 +-
 drivers/gpu/drm/i915/display/intel_dsb.c           | 107 ++-
 drivers/gpu/drm/i915/display/intel_dsb_buffer.h    |  22 -
 drivers/gpu/drm/i915/display/intel_fb.c            |  41 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c         | 101 ---
 drivers/gpu/drm/i915/display/intel_fb_bo.h         |  25 -
 drivers/gpu/drm/i915/display/intel_fb_pin.c        |  15 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           |  17 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c         |   5 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c      |  38 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h      |   1 +
 drivers/gpu/drm/i915/display/intel_fdi.c           |   1 -
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c |   1 -
 drivers/gpu/drm/i915/display/intel_flipq.c         |  13 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.c   |  37 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.h   |  21 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c         |   7 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c          |  18 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          |  19 +-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c   |   1 -
 drivers/gpu/drm/i915/display/intel_lt_phy.c        | 245 +++---
 drivers/gpu/drm/i915/display/intel_lt_phy.h        |   5 +-
 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h   |   8 +-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |   4 +-
 drivers/gpu/drm/i915/display/intel_oprom_regs.h    |  15 +
 drivers/gpu/drm/i915/display/intel_overlay.c       | 584 ++------------
 drivers/gpu/drm/i915/display/intel_overlay.h       |  48 --
 drivers/gpu/drm/i915/display/intel_parent.c        | 156 ++++
 drivers/gpu/drm/i915/display/intel_parent.h        |  51 ++
 drivers/gpu/drm/i915/display/intel_pch_display.c   |   1 -
 drivers/gpu/drm/i915/display/intel_pch_refclk.c    |   1 -
 drivers/gpu/drm/i915/display/intel_pmdemand.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_pps.c           |   1 -
 drivers/gpu/drm/i915/display/intel_psr.c           | 128 ++-
 drivers/gpu/drm/i915/display/intel_psr.h           |   1 +
 drivers/gpu/drm/i915/display/intel_rom.c           |   3 +-
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c |   2 -
 drivers/gpu/drm/i915/display/intel_tc.c            |   5 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      |   1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c          |  96 ++-
 drivers/gpu/drm/i915/display/intel_vdsc.h          |  12 +
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h     |  12 +
 drivers/gpu/drm/i915/display/intel_vga.c           | 333 ++++++--
 drivers/gpu/drm/i915/display/intel_vga.h           |   5 +-
 drivers/gpu/drm/i915/display/intel_vrr.c           |  55 +-
 drivers/gpu/drm/i915/display/intel_vrr.h           |   1 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h      |   1 +
 drivers/gpu/drm/i915/display/skl_scaler.c          |   2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c |   7 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  26 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |   1 -
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c        |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c         |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c         |  24 -
 .../gpu/drm/i915/gem/i915_gem_object_frontbuffer.c |  69 ++
 .../gpu/drm/i915/gem/i915_gem_object_frontbuffer.h |  24 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c           |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c       |   2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c               |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c          |  13 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c          |   2 +-
 .../gpu/drm/i915/gt/intel_execlists_submission.c   |   6 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c       |   7 +-
 drivers/gpu/drm/i915/gt/intel_gt.c                 |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c             |   2 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c      |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h            |  11 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c        |   2 +
 drivers/gpu/drm/i915/gt/intel_llc.c                |   2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c                |  21 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c                |  24 +-
 drivers/gpu/drm/i915/gt/intel_reset.c              |   4 +-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c    |  21 +-
 drivers/gpu/drm/i915/gt/intel_rps.c                |   1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |  26 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c             |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c          |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  10 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c           |   4 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c              |   1 +
 drivers/gpu/drm/i915/gvt/display.c                 |   1 -
 drivers/gpu/drm/i915/gvt/handlers.c                |  48 +-
 drivers/gpu/drm/i915/gvt/interrupt.c               |   1 +
 drivers/gpu/drm/i915/gvt/mmio_context.c            |   3 +-
 drivers/gpu/drm/i915/gvt/reg.h                     |   4 +-
 drivers/gpu/drm/i915/i915_active.c                 |   2 +-
 drivers/gpu/drm/i915/i915_bo.c                     | 156 ++++
 drivers/gpu/drm/i915/i915_bo.h                     |   9 +
 drivers/gpu/drm/i915/i915_debugfs.c                |   1 +
 drivers/gpu/drm/i915/i915_dpt.c                    | 277 +++++++
 drivers/gpu/drm/i915/i915_dpt.h                    |  20 +
 drivers/gpu/drm/i915/i915_driver.c                 |  32 +-
 drivers/gpu/drm/i915/i915_drv.h                    |   5 +-
 .../intel_dsb_buffer.c =3D> i915_dsb_buffer.c}       |  28 +-
 drivers/gpu/drm/i915/i915_dsb_buffer.h             |   9 +
 drivers/gpu/drm/i915/i915_gem.c                    |   6 +-
 drivers/gpu/drm/i915/i915_gpu_error.c              |   6 -
 drivers/gpu/drm/i915/i915_gpu_error.h              |   1 -
 drivers/gpu/drm/i915/i915_hwmon.c                  |   2 +
 drivers/gpu/drm/i915/i915_initial_plane.c          |   3 +-
 drivers/gpu/drm/i915/i915_irq.c                    |   1 +
 drivers/gpu/drm/i915/i915_overlay.c                | 517 ++++++++++++
 drivers/gpu/drm/i915/i915_overlay.h                |  11 +
 drivers/gpu/drm/i915/i915_perf.c                   |  34 +-
 drivers/gpu/drm/i915/i915_reg.h                    | 465 +----------
 drivers/gpu/drm/i915/i915_reg_defs.h               | 179 +----
 drivers/gpu/drm/i915/i915_sw_fence_work.c          |   2 +-
 drivers/gpu/drm/i915/i915_vma.c                    |  10 +
 drivers/gpu/drm/i915/i915_vma.h                    |   7 +-
 drivers/gpu/drm/i915/i915_vma_resource.c           |   2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c          |  42 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c        |  10 +-
 drivers/gpu/drm/i915/intel_pcode.c                 |  17 +-
 drivers/gpu/drm/i915/intel_pcode.h                 |   9 +-
 drivers/gpu/drm/i915/intel_uncore.c                |   4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c               |   6 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c           |   2 +-
 drivers/gpu/drm/i915/selftests/i915_sw_fence.c     |   2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c   |   2 +-
 drivers/gpu/drm/i915/vlv_suspend.c                 |   1 +
 drivers/gpu/drm/xe/Makefile                        |   9 +-
 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h  |   6 -
 drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h  |  36 -
 .../gpu/drm/xe/compat-i915-headers/intel_pcode.h   |  11 -
 .../gpu/drm/xe/compat-i915-headers/intel_uncore.h  |   9 +
 drivers/gpu/drm/xe/display/intel_bo.c              | 109 ---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c        |  27 +-
 drivers/gpu/drm/xe/display/xe_display.c            |   8 +
 .../xe/display/{intel_fb_bo.c =3D> xe_display_bo.c}  |  63 +-
 drivers/gpu/drm/xe/display/xe_display_bo.h         |   9 +
 drivers/gpu/drm/xe/display/xe_display_pcode.c      |  38 +
 drivers/gpu/drm/xe/display/xe_display_pcode.h      |   9 +
 drivers/gpu/drm/xe/display/xe_display_vma.h        |  18 +
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c         |  28 +-
 drivers/gpu/drm/xe/display/xe_dsb_buffer.h         |   9 +
 drivers/gpu/drm/xe/display/xe_fb_pin.c             |  26 +-
 drivers/gpu/drm/xe/display/xe_frontbuffer.c        |  71 ++
 drivers/gpu/drm/xe/display/xe_frontbuffer.h        |   9 +
 drivers/gpu/drm/xe/display/xe_initial_plane.c      |  27 +-
 drivers/gpu/drm/xe/regs/xe_reg_defs.h              |   5 +-
 drivers/gpu/drm/xe/xe_eu_stall.c                   |  20 +-
 drivers/gpu/drm/xe/xe_execlist.c                   |   6 +-
 drivers/gpu/drm/xe/xe_hw_engine.c                  |   8 +-
 drivers/gpu/drm/xe/xe_lrc.c                        |  12 +-
 drivers/gpu/drm/xe/xe_mmio.c                       |   9 +
 drivers/gpu/drm/xe/xe_mmio.h                       |   1 +
 drivers/gpu/drm/xe/xe_oa.c                         |  42 +-
 drivers/gpu/drm/xe/xe_pcode.c                      |  30 -
 drivers/gpu/drm/xe/xe_pcode.h                      |   8 -
 drivers/gpu/drm/xe/xe_pxp.c                        |   4 +-
 drivers/gpu/drm/xe/xe_uc_fw.c                      |   4 +-
 include/drm/display/drm_dp.h                       |   2 +
 include/drm/intel/display_parent_interface.h       | 108 +++
 include/drm/intel/i915_drm.h                       |  82 +-
 include/drm/intel/intel_gmd_interrupt_regs.h       |  92 +++
 include/drm/intel/intel_gmd_misc_regs.h            |  21 +
 include/drm/intel/intel_pcode_regs.h               | 108 +++
 include/drm/intel/pick.h                           |  51 ++
 include/drm/intel/reg_bits.h                       | 139 ++++
 include/linux/iopoll.h                             |   8 +-
 include/video/vga.h                                |   1 +
 219 files changed, 5646 insertions(+), 3904 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_dpt_common.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_dpt_common.h
 delete mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_oprom_regs.h
 create mode 100644 drivers/gpu/drm/i915/i915_bo.c
 create mode 100644 drivers/gpu/drm/i915/i915_bo.h
 create mode 100644 drivers/gpu/drm/i915/i915_dpt.c
 create mode 100644 drivers/gpu/drm/i915/i915_dpt.h
 rename drivers/gpu/drm/i915/{display/intel_dsb_buffer.c =3D> i915_dsb_buff=
er.c} (63%)
 create mode 100644 drivers/gpu/drm/i915/i915_dsb_buffer.h
 create mode 100644 drivers/gpu/drm/i915/i915_overlay.c
 create mode 100644 drivers/gpu/drm/i915/i915_overlay.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
 delete mode 100644 drivers/gpu/drm/xe/display/intel_bo.c
 rename drivers/gpu/drm/xe/display/{intel_fb_bo.c =3D> xe_display_bo.c} (57=
%)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_bo.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_pcode.c
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_pcode.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_vma.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_dsb_buffer.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_frontbuffer.c
 create mode 100644 drivers/gpu/drm/xe/display/xe_frontbuffer.h
 create mode 100644 include/drm/intel/intel_gmd_interrupt_regs.h
 create mode 100644 include/drm/intel/intel_gmd_misc_regs.h
 create mode 100644 include/drm/intel/intel_pcode_regs.h
 create mode 100644 include/drm/intel/pick.h
 create mode 100644 include/drm/intel/reg_bits.h

--=20
Jani Nikula, Intel
