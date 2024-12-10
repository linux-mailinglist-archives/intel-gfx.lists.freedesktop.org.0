Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96BC9EBD9D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 23:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F087310E187;
	Tue, 10 Dec 2024 22:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3AB610E187;
 Tue, 10 Dec 2024 22:17:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_DSB+VRR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2024 22:17:28 -0000
Message-ID: <173386904899.987366.2446469492980780631@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: DSB+VRR
URL   : https://patchwork.freedesktop.org/series/142375/
State : warning

== Summary ==

Error: dim checkpatch failed
8e301254a329 drm/i915: Extract intel_crtc_vblank_delay()
0deffa62d526 drm/i915: Check vblank delay validity
719433263773 drm/i915: Fix include order
d3c8076c26fa drm/i915: Introduce intel_vrr_{vmin,vmax}_vtotal()
6233d9581576 drm/i915: Move framestart/etc. state dump to a better spot
ffcdf87ac76a drm/i915: Include the vblank delay in the state dump
dc88af0d1c27 drm/i915/vrr: Improve VRR state dump
-:35: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:297:
+		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
8aca9f2c0562 drm/i915: Include the scanline offset in the state dump
769539bb6f85 drm/i915: Extract intel_mode_vblank_delay()
f8bccedfe8dd drm/i915: Consolidate intel_pre_commit_crtc_state()
7401703da31d drm/i915: Extract intel_crtc_active_timings()
ba7d6f8e1550 drm/i915/vrr: Introduce intel_vrr_vblank_delay()
843693a450e8 drm/i915/vrr: Drop the extra vmin adjustment for ADL+
c8300731e077 drm/i915/vrr: Fix vmin/vmax/flipline on TGL when using vblank delay
58e304c98f21 drm/i915/vrr: Add extra vblank delay to estimates
9a246bf70fe1 drm/i915/vrr: Plumb the DSB into intel_vrr_send_push()
1c4768ba7ccd drm/i915/dsb: Add support for triggering VRR push with DSB
a0a0ef4a4902 drm/i915/dsb: Allow DSB to perform commits when VRR is enabled


