Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4YfPLcSeRmpLaQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 19:24:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BE26FB4AD
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 19:24:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=O15agd2b;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C48410E16C;
	Thu,  2 Jul 2026 17:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8994310E0C1;
 Thu,  2 Jul 2026 17:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783013055; x=1814549055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LaUQ9bRmxRfkWosUyAGlizvqcaE5rCrIc0QK779Xjso=;
 b=O15agd2bP8EmUGsIsn82K7IHQ6ToxXkOafLpUq6seGBbNmvLjj9Oqdmq
 6tgDjMuI6xXi6VtRcdRFirxMNkutKK3se2e4/7US/oWZ3aabElmv8iGho
 vx/uCrWXfOCF9OK+iSnNyskRUlOvCGnW3ZrzSBgln7TqIJMYG19jMIvS2
 Bc4MNCqgc5Qphck9kleRVufySD40ic4Hs5U3ExAia/Jcy6wCTTinTLR+8
 zYuD/zKGa4HXbM0E3N/Y+pCWM7Se/bD0lhd6cOiI05ywe0ozlHubOuOHR
 I28aG4nvrbkqVrfA6Q5FKvUokbZ4sM1K395OEoDUQwbISMhnwh/QF2LM/ w==;
X-CSE-ConnectionGUID: vZ083v9lTcGN3zzRZ+0XSQ==
X-CSE-MsgGUID: HICltLgjSt6Ois26UDDi+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83760205"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="83760205"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 10:24:15 -0700
X-CSE-ConnectionGUID: GMcmcC3ERtq2XQmNwNMYPQ==
X-CSE-MsgGUID: 3bRV//bzSqeps+AzK/qheg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="249572788"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.54])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 10:24:10 -0700
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
Date: Thu, 02 Jul 2026 20:24:07 +0300
Message-ID: <934cacdbf2a37856eb5cd6337d8774b449405bd8@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8BE26FB4AD


Hi Dave & Sima -

The first i915 feature pull towards v7.3.

I'll be out for a bit, and Rodrigo will cover for me. I should be back
in time for the final feature pull request for v7.3, though.

BR,
Jani.


drm-intel-next-2026-07-02:
drm/i915 feature pull for v7.3:

Features and functionality:
- Novalake (NVL, display versio 35) Common Mode Timing Generator (CMTG) ena=
bling (Animesh)
- NVL DC3CO enabling (Dibin)

Refactoring and cleanups:
- Refactor and document DP link recovery and capability tracking (Imre)
- i915 and xe driver display probe/remove/suspend/resume/shutdown cleanup a=
nd unification (Jani)
- Clean up bandwidth/SAGV code (Ville)
- Streamline Pre/Post-CSC LUT loops (Jani)
- Remove unused TGL DC3DO support (Dibin)
- Make read-only array rates static const (Colin Ian King)
- CDCLK sanitization improvements and cleanups (Ville)
- Break i915 and xe panic dependency on struct intel_framebuffer (Jani)
- GPIO pin renames and cleanups (Ville)
- Unify generic irq handler error messages (Jonathan)

Fixes:
- Various color pipeline fixes (Chaitanya)
- Fix step discontinuity in Pre/Post-CSC Gamma LUT (Sean Paul)
- Improve refresh rate changes without full modeset on VRR capable eDP (Vil=
le)
- Display suspend/resume fixes (Imre)
- Fix LPE audio irq for PREEMPT-RT (Maarten)
- Fix HDMI scrambling enable (Jerome Tollet)
- LNL bandwidth buddy programming update (Vinod)
- Streamline display register wait timeouts (Ville)
- Fix DP MSA VTotal (Mitul)
- Fix LTPHY SSC enabling (Suraj)
- Fix LOBF requirements with optimized guardband (Ankit)
- Avoid full modeset for LRR vsync changes (Ankit)
- Fix vtotal-vsync distance when adjusting vtotal for lower refresh rate (A=
nkit)
- Extend VRR safe window wait for default VRR timing generator usage (Ankit)

Merges:
- Backmerge for v7.2-rc1 (Jani)

BR,
Jani.

The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-20=
26-07-02

for you to fetch changes up to 8e27f752037e72ccee9c4a7c4a6202ecf3daf603:

  drm/i915/ltphy: Fix SSC Enablement bit in PORT_CLOCK_CTL (2026-07-02 09:1=
9:23 +0530)

----------------------------------------------------------------
drm/i915 feature pull for v7.3:

Features and functionality:
- Novalake (NVL, display versio 35) Common Mode Timing Generator (CMTG) ena=
bling (Animesh)
- NVL DC3CO enabling (Dibin)

Refactoring and cleanups:
- Refactor and document DP link recovery and capability tracking (Imre)
- i915 and xe driver display probe/remove/suspend/resume/shutdown cleanup a=
nd unification (Jani)
- Clean up bandwidth/SAGV code (Ville)
- Streamline Pre/Post-CSC LUT loops (Jani)
- Remove unused TGL DC3DO support (Dibin)
- Make read-only array rates static const (Colin Ian King)
- CDCLK sanitization improvements and cleanups (Ville)
- Break i915 and xe panic dependency on struct intel_framebuffer (Jani)
- GPIO pin renames and cleanups (Ville)
- Unify generic irq handler error messages (Jonathan)

Fixes:
- Various color pipeline fixes (Chaitanya)
- Fix step discontinuity in Pre/Post-CSC Gamma LUT (Sean Paul)
- Improve refresh rate changes without full modeset on VRR capable eDP (Vil=
le)
- Display suspend/resume fixes (Imre)
- Fix LPE audio irq for PREEMPT-RT (Maarten)
- Fix HDMI scrambling enable (Jerome Tollet)
- LNL bandwidth buddy programming update (Vinod)
- Streamline display register wait timeouts (Ville)
- Fix DP MSA VTotal (Mitul)
- Fix LTPHY SSC enabling (Suraj)
- Fix LOBF requirements with optimized guardband (Ankit)
- Avoid full modeset for LRR vsync changes (Ankit)
- Fix vtotal-vsync distance when adjusting vtotal for lower refresh rate (A=
nkit)
- Extend VRR safe window wait for default VRR timing generator usage (Ankit)

Merges:
- Backmerge for v7.2-rc1 (Jani)

----------------------------------------------------------------
Animesh Manna (21):
      drm/i915/cmtg: Add intel_cmtg_is_allowed() for CMTG
      drm/i915/cmtg: Set CMTG clock select
      drm/i915/cmtg: Add CMTG transcoder offset in struct _device_info
      drm/i915/display: Pass target transcoder to intel_set_transcoder_timi=
ngs()
      drm/i915/display: Rename cpu_transcoder parameter to transcoder
      drm/i915/display: Skip DP_MIN_HBLANK_CTL programming for CMTG transco=
ders
      drm/i915/display: Pass transcoder to intel_set_transcoder_timings_lrr=
()
      drm/i915/display: Rename cpu_transcoder parameter to transcoder in LR=
R path
      drm/i915/cmtg: Set timings for CMTG by using transcoder timing helpers
      drm/i915/vrr: Pass transcoder to intel_vrr_set_fixed_rr_timings()
      drm/i915/display: Rename cpu_transcoder parameter to transcoder in VR=
R fixed-rr path
      drm/i915/cmtg: Program VRR fixed-rate timings for CMTG transcoder
      drm/i915/cmtg: Program VRR control register for CMTG transcoder
      drm/i915/cmtg: Set link M/N for CMTG transcoder
      drm/i915/cmtg: Add hook to enable CMTG with sync to port
      drm/i915/cmtg: Add a hook to make eDP transcoder secondary
      drm/i915/cmtg: Add trigger to enable/disable cmtg
      drm/i915/cmtg: Restore CMTG after DC6 exit
      drm/i915/cmtg: Add CMTG interrupt handling
      drm/i915/display: Guard CMTG disable with intel_cmtg_is_allowed()
      drm/i915/cmtg: Warn on invalid CMTG transcoder in intel_cmtg_disable()

Ankit Nautiyal (6):
      drm/i915/display: Handle VSYNC timing in LRR path
      drm/i915/panel: Preserve Vtotal-Vsync distance while adjusting vtotal
      drm/i915/alpm: Move the check for PSR and Fixed RR in compute_config_=
late
      drm/i915/dsb: shift delayed-vblank DSL wait start by one scanline
      drm/i915/dsb: Use safe window path when VRR TG is used
      Revert "drm/i915/psr: Allow SCL=3D0 on platforms with always-on VRR T=
G"

Chaitanya Kumar Borah (3):
      drm/i915/display: Don=E2=80=99t use atomic state back-pointer to deri=
ve color pipeline
      drm/i915: Avoid programming color HW blocks for NV12 Y planes
      drm/i915: Fix color blob reference handling in intel_plane_state

Colin Ian King (1):
      drm/i915/display: make read-only array rates static const

Dibin Moolakadan Subrahmanian (20):
      drm/i915/cmtg: Modify existing hook to disable CMTG
      drm/i915/cmtg: Add CMTG HWGB programming
      drm/i915/cmtg: Add CMTG scan line programming
      drm/i915/display: Remove TGL DC3CO support
      drm/i915/display: Switch DC3CO enable from standalone bit to DC level=
 encoding
      drm/i915/display: Use FIELD_PREP() for DC state enable bits
      drm/i915/display: Add DC3CO DC_STATE enable/disable support
      drm/i915/display: Add HAS_DC3CO() macro
      drm/i915/display: Add DC3CO support check
      drm/i915/psr: Add psr2 deep sleep helper API
      drm/i915/display: Add DC3CO compute and set target state in commit ta=
il
      drm/i915/display: Store DC3CO eligibility in PSR state
      drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
      drm/i915/display: Enable DC3CO idle protocol in ALPM
      drm/i915/display: PSR Add delayed work to exit DC3CO
      drm/i915/display: Add helper to enable DC counter
      drm/i915/display: Add DC3CO count and residency in dmc debugfs
      drm/i915/display: Guard CMTG function calls
      drm/i915/display: Enable DC3CO DC state
      drm/i915/display: Mask RO bits in gen9_write_dc_state()

Guangshuo Li (1):
      drm/i915: clear CRTC color blob pointers after dropping refs

Imre Deak (53):
      drm/i915: Keep display IRQs enabled for encoder suspend/shutdown
      drm/i915/xe: Enable HPD polling later during system resume
      drm/i915/dp_link_training: Introduce link training state struct
      drm/i915/dp_link_training: Factor out link training state reset helper
      drm/i915/dp_link_training: Flush commits in debugfs entries
      drm/i915/dp_link_training: Move link training helpers to link trainin=
g code
      drm/i915/dp_link_training: Use link_training as base pointer in debug=
fs
      drm/i915/dp_link_training: Add helpers to access force retrain state
      drm/i915/dp_link_training: Move link recovery/debug state to link_tra=
ining
      drm/i915/dp_link_training: Prevent repeated autoretrain attempts
      drm/i915/dp_link_training: Clamp sequential link training failure cou=
nter
      drm/i915/dp_link_training: Check for pending autoretrain explicitly
      drm/i915/dp_link_training: Add helper to query pending autoretrain
      drm/i915/dp_link_training: Add helper to query allowed autoretrain
      drm/i915/dp_link_training: Add helper to mark link training failure
      drm/i915/dp_link_training: Add helper to reset link recovery state
      drm/i915/dp_link_training: Track link recovery state with an enum
      drm/i915/dp_link_training: Add no-fallback link recovery state
      drm/i915/display: Factor out a helper to modeset a pipe with atomic s=
tate
      drm/i915/display: Simplify intel_modeset_commit_pipes_for_atomic_stat=
e()
      drm/i915/dp_link_training: Allocate atomic state for autoretrain mode=
set
      drm/i915/dp_link_training: Disallow autoretrains after failed modeset
      drm/i915/dp_link_training: Fix kernel-doc of intel_dp_init_lttpr_and_=
dprx_caps()
      drm/i915/dp_link_training: Document DP link recovery logic
      drm/i915/mtl+: Enable PPS before PLL
      drm/i915/dp: Rename intel_dp_link_config to intel_dp_link_config_entry
      drm/i915/dp: Add struct intel_dp_link_config
      drm/i915/dp_link_caps: Introduce DP link capability module
      drm/i915/dp_link_caps: Move common rate helpers to link caps
      drm/i915/dp_link_caps: Move forced link param helpers to link caps
      drm/i915/dp: Simplify querying of forced link parameters
      drm/i915/dp_link_caps: Move forced and max link debugfs entries to li=
nk caps
      drm/i915/dp_link_training: Use helpers to get forced link params
      drm/i915/dp_link_caps: Move forced link params to link_caps
      drm/i915/dp_link_caps: Move link config helpers to link caps
      drm/i915/dp_link_caps: Move link config tracking to link_caps
      drm/i915/dp_link_caps: Rename helper updating the link configurations
      drm/i915/dp: Factor out helper to get link rate capabilities
      drm/i915/dp_link_caps: Pass supported link rates to link caps update
      drm/i915/dp_link_caps: Add helper to print all supported link rates
      drm/i915/dp_link_caps: Add helper to get the number of supported link=
 rates
      drm/i915/dp_link_caps: Add helper to get common rate index
      drm/i915/dp_link_caps: Move tracking of common rates to link_caps str=
uct
      drm/i915/dp_link_caps: Track max common lane count in link_caps
      drm/i915/dp_link_caps: Use max common lane count from link_caps
      drm/i915/dp_link_caps: Add helpers to get max link limits
      drm/i915/dp_link_caps: Add helpers to set max link limits
      drm/i915/dp_link_caps: Add helper to reset max link limits
      drm/i915/dp_link_caps: Add helper to reset link_caps state
      drm/i915/dp_link_caps: Move max link limits to link_caps
      drm/i915/dp_link_caps: Pass link_caps to static functions
      drm/i915/dp_link_caps: Pass link_caps to config update/lookup helpers
      drm/i915/dp_link_caps: Pass link_caps to common rate helpers

Jani Nikula (41):
      drm/i915: add flush_workqueue(display->wq.cleanup) on shutdown
      drm/xe/display: remove intel_display_flush_cleanup_work() calls on su=
spend/shutdown
      drm/xe/display: drop duplicate intel_dp_mst_suspend() call
      drm/i915/display: add "pm" to intel_display_driver_{suspend, resume}(=
) names
      drm/xe/display: rename xe_display_pm_shutdown*() to xe_display_shutdo=
wn*()
      drm/xe/display: relocate the xe_display_shutdown*() functions
      drm/xe/display: relocate the xe_display_pm_runtime_*() functions
      drm/{i915, xe}: move more calls inside intel_display_driver_pm_suspen=
d()
      drm/{i915, xe}: move more calls inside intel_display_driver_pm_resume=
()
      drm/{i915, xe}: add intel_display_driver_pm_{suspend_late, resume_ear=
ly}()
      drm/{i915,xe}: add intel_display_driver_shutdown_late()
      drm/i915: add intel_display_driver_shutdown()
      drm/i915/display: deduplicate suspend and shutdown a bit
      drm/xe/display: use intel_display_driver_pm_shutdown()
      drm/{i915, xe}: move more stuff to __intel_display_driver_pm_suspend()
      drm/i915/color: clean up variables in xelpd_program_plane_pre_csc_lut=
()
      drm/i915/color: clean up variables in xelpd_program_plane_post_csc_lu=
t()
      drm/i915/color: reduce indent in xelpd_program_plane_pre_csc_lut()
      drm/i915/color: reduce indent in xelpd_program_plane_post_csc_lut()
      drm/i915/color: join loops in xelpd_program_plane_pre_csc_lut()
      drm/i915/color: join loops in xelpd_program_plane_post_csc_lut()
      drm/i915/color: deduplicate loops in xelpd_program_plane_pre_csc_lut()
      drm/i915/color: deduplicate loops in xelpd_program_plane_post_csc_lut=
()
      drm/intel: drop driver include from mchbar_regs.h
      drm/i915/panic: split out i915_gem_panic.[ch]
      drm/i915/panic: squash i915_panic.c into i915_gem_panic.c
      drm/i915/panic: remove the extra layer from panic hooks
      drm/{i915,xe}/panic: pass obj to panic setup
      drm/xe/panic: store fb bo in struct intel_panic
      drm/{i915, xe}/panic: drop dependency on struct intel_framebuffer
      drm/i915: move intel_display_device_probe() call a level higher
      drm/i915: remove superfluous checks for pdev->msi_enabled
      drm/{i915, xe}: move opregion/dram/bw init to intel_display_driver_pr=
obe_noirq()
      drm/xe/display: change order of intel_display_driver_remove_{nogem, n=
oirq}() calls
      drm/{i915, xe}: move opregion cleanup to intel_display_driver_remove_=
nogem()
      drm/{i915, xe}: move intel_hpd_cancel_work() to intel_display_driver_=
remove_noirq()
      drm/i915/hdcp: check streams[] bounds before overflow
      drm/i915/hdcp: require monotonically increasing seq_num_v
      drm/i915/vrr: require valid min/max vfreq for VRR
      drm/i915/bios: range check LFP Data Block panel_type2
      Merge drm/drm-next into drm-intel-next

Jerome Tollet (1):
      drm/i915/hdmi: Poll for 200 msec for TMDS_Scrambler_Status

Jonathan Cavitt (1):
      drm/i915: Refactor generic_handle_irq_safe() error messages

Maarten Lankhorst (1):
      drm/i915/display: Fix intel_lpe_audio_irq_handler for PREEMPT-RT

Micha=C5=82 Grzelak (1):
      drm/i915/dp_link_caps: s/lc/lce/

Mitul Golani (1):
      drm/i915/display: Program TRANS_VTOTAL from mode vtotal

Nikita Zhandarovich (1):
      drm/i915/edp: Check supported link rates DPCD read

Sean Paul (2):
      drm/i915/color: Fix step discontinuity in Post-CSC Gamma LUT
      drm/i915/color: Fix step discontinuity in Pre-CSC Gamma LUT

Suraj Kandpal (3):
      drm/i915/cx0: Remove unnecessary hdmi link rate function declaration
      drm/i915/ltphy: Readout ssc_enabled for LT PHY
      drm/i915/ltphy: Fix SSC Enablement bit in PORT_CLOCK_CTL

Ville Syrj=C3=A4l=C3=A4 (29):
      drm/i915/de: Remove the 2 usec fast timeout
      drm/i915/bw: Don't memcpy() pointlessly
      drm/i915/bw: Streamline dg2_get_bw_info()
      drm/i915/bw: Initialize num_planes sensibly for the first plane group=
 in TGL+
      drm/i915/bw: Move 'bi_next' to tighter scope
      drn/i915/bw: s/num_points/num_qgv_points/
      drm/i915/bw: Move num_{qgv,psf}_points out from the plane group
      drm/i915/bw: Move psf_bw[] out from the plane group
      drm/i915/bw: Move peakbw[] out from the plane group
      drm/i915/bw: Print derated bandwidth numbers for DG2
      drm/i915/bw: Use icl_qgv_bw()
      drm/i915/bw: Simplify the best max_data_rate search
      drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without a full PLL re-enable
      drm/i915/cdclk: Print the reason for the CDCLK sanitization
      drm/i915/cdclk: Clean up CDCLK_CTL defines
      drm/i915/cdclk: Document CDCLK_CTL bits
      drm/i915/cdclk: Introduce bxt_cdclk_cd2x_pipe_mask() and use it
      drm/i915/cdclk: Use the TGL+ CD2x pipe select bits also on ICL
      drm/i915/panel: Split VRR vs. fixed refresh rate fixed mode selection=
 into separate stages
      drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
      drm/i915: Pass the full atomic state to .compute_config()
      drm/i915/panel: Adjust intel_panel_compute_config() calling convention
      drm/i915/panel: Attempt VRR based refresh rate change for !allow_mode=
set
      drm/i915/gmbus: Rename GPIO pins
      drm/i915/gmbus: s/gmbus_pins_bdw/gmbus_pins_lpt/
      drm/i915/gmbus: Add gmbus_pins_lpt_lp[]
      drm/i915/gmbus: s/gmbus_pins_skl/gmbus_pins_spt/
      drm/i915/gmbus: Drop the platform suffixes from GMBUS pins
      drm/i915/hdmi: Remove CNP port F leftovers

Vinod Govindapillai (1):
      drm/i915/display: update to the BW buddy configuration

 .../gpu/intel-display/dp-link-training.rst         |    8 +
 Documentation/gpu/intel-display/index.rst          |    1 +
 drivers/gpu/drm/drm_modes.c                        |   23 +
 drivers/gpu/drm/i915/Makefile                      |    5 +-
 drivers/gpu/drm/i915/display/g4x_dp.c              |   15 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c            |    4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c             |    5 +-
 drivers/gpu/drm/i915/display/intel_alpm.c          |   15 +-
 drivers/gpu/drm/i915/display/intel_bios.c          |   98 +-
 drivers/gpu/drm/i915/display/intel_bw.c            |  168 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.c         |   54 +-
 drivers/gpu/drm/i915/display/intel_cmtg.c          |  280 ++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h          |   19 +-
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h     |   24 +-
 drivers/gpu/drm/i915/display/intel_color.c         |  115 +-
 drivers/gpu/drm/i915/display/intel_crt.c           |    9 +-
 drivers/gpu/drm/i915/display/intel_cursor.c        |    2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       |   11 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.h       |    1 -
 drivers/gpu/drm/i915/display/intel_ddi.c           |   29 +-
 drivers/gpu/drm/i915/display/intel_de.c            |   40 +-
 drivers/gpu/drm/i915/display/intel_display.c       |  170 +--
 drivers/gpu/drm/i915/display/intel_display.h       |    7 +
 drivers/gpu/drm/i915/display/intel_display_core.h  |   14 +-
 .../gpu/drm/i915/display/intel_display_debugfs.c   |    2 +
 .../gpu/drm/i915/display/intel_display_device.c    |   14 +
 .../gpu/drm/i915/display/intel_display_device.h    |    3 +-
 .../gpu/drm/i915/display/intel_display_driver.c    |  131 ++-
 .../gpu/drm/i915/display/intel_display_driver.h    |    9 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c   |   19 +
 drivers/gpu/drm/i915/display/intel_display_irq.h   |    2 +
 .../gpu/drm/i915/display/intel_display_limits.h    |    2 +
 drivers/gpu/drm/i915/display/intel_display_power.c |  185 +++-
 drivers/gpu/drm/i915/display/intel_display_power.h |   40 +
 .../drm/i915/display/intel_display_power_well.c    |   76 +-
 .../drm/i915/display/intel_display_power_well.h    |    1 +
 drivers/gpu/drm/i915/display/intel_display_regs.h  |   46 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |   57 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |   15 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h      |    2 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c        |    2 +-
 drivers/gpu/drm/i915/display/intel_dp.c            |  496 ++-------
 drivers/gpu/drm/i915/display/intel_dp.h            |   16 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c  |  675 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h  |   47 +
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 1093 +++++++++++++++-=
----
 .../gpu/drm/i915/display/intel_dp_link_training.h  |   15 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |    8 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c       |    7 +-
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     |    6 +-
 drivers/gpu/drm/i915/display/intel_dsb.c           |   32 +-
 drivers/gpu/drm/i915/display/intel_dvo.c           |    5 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c         |  148 +--
 drivers/gpu/drm/i915/display/intel_gmbus.h         |   22 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c          |   12 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          |   71 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h          |    2 +
 drivers/gpu/drm/i915/display/intel_initial_plane.c |    2 +-
 drivers/gpu/drm/i915/display/intel_lpe_audio.c     |    4 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c        |   20 +-
 drivers/gpu/drm/i915/display/intel_lvds.c          |    5 +-
 drivers/gpu/drm/i915/display/intel_panel.c         |  170 ++-
 drivers/gpu/drm/i915/display/intel_panel.h         |    6 +-
 drivers/gpu/drm/i915/display/intel_parent.c        |    6 +-
 drivers/gpu/drm/i915/display/intel_parent.h        |    4 +-
 drivers/gpu/drm/i915/display/intel_plane.c         |   52 +-
 drivers/gpu/drm/i915/display/intel_plane.h         |    5 +-
 drivers/gpu/drm/i915/display/intel_psr.c           |  267 ++---
 drivers/gpu/drm/i915/display/intel_psr.h           |    1 +
 drivers/gpu/drm/i915/display/intel_psr_regs.h      |    1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c          |    7 +-
 drivers/gpu/drm/i915/display/intel_tv.c            |    5 +-
 drivers/gpu/drm/i915/display/intel_vrr.c           |   33 +-
 drivers/gpu/drm/i915/display/intel_vrr.h           |    4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |    5 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h         |    7 -
 drivers/gpu/drm/i915/gem/i915_gem_pages.c          |  128 ---
 drivers/gpu/drm/i915/gem/i915_gem_panic.c          |  147 +++
 drivers/gpu/drm/i915/gem/i915_gem_panic.h          |   11 +
 drivers/gpu/drm/i915/gt/intel_gsc.c                |    2 +-
 drivers/gpu/drm/i915/gvt/edid.c                    |   14 +-
 drivers/gpu/drm/i915/i915_driver.c                 |  123 +--
 drivers/gpu/drm/i915/i915_panic.c                  |   35 -
 drivers/gpu/drm/i915/i915_panic.h                  |    9 -
 drivers/gpu/drm/xe/Makefile                        |    1 +
 drivers/gpu/drm/xe/display/xe_display.c            |  244 ++---
 drivers/gpu/drm/xe/display/xe_display.h            |   10 +-
 drivers/gpu/drm/xe/display/xe_panic.c              |   26 +-
 drivers/gpu/drm/xe/xe_device.c                     |    4 +-
 include/drm/drm_modes.h                            |    1 +
 include/drm/intel/display_parent_interface.h       |    4 +-
 include/drm/intel/mchbar_regs.h                    |    2 -
 92 files changed, 3736 insertions(+), 2007 deletions(-)
 create mode 100644 Documentation/gpu/intel-display/dp-link-training.rst
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.h
 delete mode 100644 drivers/gpu/drm/i915/i915_panic.c
 delete mode 100644 drivers/gpu/drm/i915/i915_panic.h

--=20
Jani Nikula, Intel
