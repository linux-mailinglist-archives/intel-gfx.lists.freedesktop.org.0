Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18A9A23F4A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B55D10EAD2;
	Fri, 31 Jan 2025 14:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E2810EAD2;
 Fri, 31 Jan 2025 14:53:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_dsc_f?=
 =?utf-8?q?ix=2C_refactoring_and_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2025 14:53:02 -0000
Message-ID: <173833518260.3229824.9984597603847135658@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1738327620.git.jani.nikula@intel.com>
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp: dsc fix, refactoring and cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/144179/
State : warning

== Summary ==

Error: dim checkpatch failed
749fb59743db drm/i915/dp: Iterate DSC BPP from high to low on all platforms
849813d442dd drm/i915/dp: Add intel_dp_dsc_bpp_step_x16() helper to get DSC BPP precision
dc6b100e7e53 drm/i915/dp: Rename some variables in xelpd_dsc_compute_link_config()
19a7374aa537 drm/i915/dp: Pass .4 BPP values to {icl, xelpd}_dsc_compute_link_config()
b8dc110ea846 drm/i915/dp: Move max DSC BPP reduction one level higher
-:90: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2183:
+						     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
a7d431bedf15 drm/i915/dp: Change icl_dsc_compute_link_config() DSC BPP iteration
1deffe2e0e61 drm/i915/dp: Move force_dsc_fractional_bpp_en check to intel_dp_dsc_valid_bpp()
47bd0023c44f drm/i915/dp: Unify DSC link config functions
13055b81bca4 drm/i915/dp: Inline do_dsc_compute_compressed_bpp()
81e3983d8cc5 drm/i915/dp: Simplify input BPP checks in intel_dp_dsc_compute_pipe_bpp()
58e889d8fb40 drm/i915/dp: Use int for compressed BPP in dsc_compute_link_config()
459da24beb96 drm/i915/dp: Drop compute_pipe_bpp parameter from intel_dp_dsc_compute_config()
c1c825d0a16e drm/i915/dp: Pass connector state all the way to dsc_compute_link_config()
71287d3c2a90 drm/i915/mst: Convert intel_dp_mtp_tu_compute_config() to .4 format
-:72: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:252:
+		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (" FXP_Q4_FMT " -> " FXP_Q4_FMT ")\n",

-:79: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:257:
+	drm_dbg_kms(display->drm, "Looking for slots in range min bpp " FXP_Q4_FMT " max bpp " FXP_Q4_FMT "\n",

total: 0 errors, 2 warnings, 0 checks, 120 lines checked


