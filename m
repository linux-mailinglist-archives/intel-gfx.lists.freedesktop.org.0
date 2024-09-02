Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BB1968A39
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 16:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB06D10E354;
	Mon,  2 Sep 2024 14:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B590510E33F;
 Mon,  2 Sep 2024 14:45:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Use_DSB_?=
 =?utf-8?q?for_plane/color_management_commits?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Sep 2024 14:45:30 -0000
Message-ID: <172528833073.907108.16752812255395659113@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Use DSB for plane/color management commits
URL   : https://patchwork.freedesktop.org/series/138095/
State : warning

== Summary ==

Error: dim checkpatch failed
a5ed980f4c34 drm/i915/dsb: Avoid reads of the DSB buffer for indexed register writes
f5c46a6ce8d4 drm/i915: Prepare clear color before wait_for_dependencies()
62e75e7069ff drm/i915/dsb: Generate the DSB buffer in commit_tail()
84beb5bbbe50 drm/i915/dsb: Enable programmable DSB interrupt
ed380d8f33b5 drm/i915/dsb: Introduce intel_dsb_vblank_evade()
273e75055bfa drm/i915/dsb: Introduce intel_dsb_wait_usec()
4f8ce35c401e drm/i915/dsb: Introduce intel_dsb_wait_vblanks()
d3efb599bd2f drm/i915: Introduce intel_scanlines_to_usecs()
4a1c9f254aba drm/i915/dsb: Introduce intel_dsb_wait_vblank_delay()
667357471b08 drm/i915: Extract intel_crtc_prepare_vblank_event()
138ae93f52c0 drm/i915: Plumb 'dsb' all way to the plane hooks
-:428: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#428: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:633:
+				   skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

-:903: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#903: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:739:
+				   skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

total: 0 errors, 2 warnings, 0 checks, 1215 lines checked
10d693f70865 drm/i915: Plumb 'dsb' all way to the color commit hooks
0afb7f890fb5 drm/i915/dsb: Use DSB for plane/color management updates


