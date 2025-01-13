Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB20A0BDEA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 17:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FE610E72B;
	Mon, 13 Jan 2025 16:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093CB10E72B;
 Mon, 13 Jan 2025 16:48:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_DSB+VRR_?=
 =?utf-8?q?=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2025 16:48:02 -0000
Message-ID: <173678688203.3293531.2176148849308089777@b555e5b46a47>
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

Series: drm/i915: DSB+VRR (rev3)
URL   : https://patchwork.freedesktop.org/series/142375/
State : warning

== Summary ==

Error: dim checkpatch failed
fd87c9c6a8ca drm/i915: Extract intel_crtc_vblank_delay()
5587a4ba8fb6 drm/i915: Check vblank delay validity
49cebd586667 drm/i915: Fix include order
ea13af19f7e0 drm/i915: Introduce intel_vrr_{vmin,vmax}_vtotal()
d2fd4ce288f6 drm/i915: Move framestart/etc. state dump to a better spot
d95d9e8aba0b drm/i915: Include the vblank delay in the state dump
d71061627843 drm/i915/vrr: Improve VRR state dump
-:36: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:297:
+		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
357ae01384ea drm/i915: Include the scanline offset in the state dump
89bd5084391a drm/i915: Extract intel_mode_vblank_delay()
1b94cc37bbbf drm/i915: Consolidate intel_pre_commit_crtc_state()
1fc866148c76 drm/i915: Extract intel_crtc_active_timings()
1c3e5caccc73 drm/i915/vrr: Introduce intel_vrr_vblank_delay()
db8d7bb3c9e3 drm/i915/vrr: Drop the extra vmin adjustment for ADL+
4c12394233c4 drm/i915/vrr: Fix vmin/vmax/flipline on TGL when using vblank delay
46899d3e008c drm/i915/vrr: Add extra vblank delay to estimates
c5eea8373a0e drm/i915/vrr: Plumb the DSB into intel_vrr_send_push()
ff4404c6e016 drm/i915/dsb: Add support for triggering VRR push with DSB
77bdbf631452 drm/i915/dsb: Allow DSB to perform commits when VRR is enabled


