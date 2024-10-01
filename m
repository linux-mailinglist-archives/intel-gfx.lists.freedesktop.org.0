Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C8098C849
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 00:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393A410E330;
	Tue,  1 Oct 2024 22:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C26110E1A7;
 Tue,  1 Oct 2024 22:32:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Use_DSB_?=
 =?utf-8?q?for_plane/color_management_commits_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 22:32:23 -0000
Message-ID: <172782194310.1143912.7826789181230018489@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Use DSB for plane/color management commits (rev2)
URL   : https://patchwork.freedesktop.org/series/138095/
State : warning

== Summary ==

Error: dim checkpatch failed
2997ee476397 drm/i915/dsb: Avoid reads of the DSB buffer for indexed register writes
d9a7def10348 drm/i915: Prepare clear color before wait_for_dependencies()
bda1b03c94d9 drm/i915/dsb: Generate the DSB buffer in commit_tail()
e20522081d57 drm/i915/dsb: Enable programmable DSB interrupt
97adb325b27e drm/i915/dsb: Introduce intel_dsb_vblank_evade()
193a5265029a drm/i915/dsb: Introduce intel_dsb_wait_usec()
7c7fe07f6ec2 drm/i915/dsb: Introduce intel_dsb_wait_vblanks()
6347cea6c755 drm/i915: Introduce intel_scanlines_to_usecs()
b98706f37d69 drm/i915/dsb: Introduce intel_dsb_wait_vblank_delay()
fde533e708dc drm/i915: Extract intel_crtc_prepare_vblank_event()
7a1a0d4d3712 drm/i915: Plumb 'dsb' all way to the plane hooks
-:442: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#442: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:632:
+				   skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

-:908: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#908: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:740:
+				   skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

total: 0 errors, 2 warnings, 0 checks, 1215 lines checked
cfe8ca1899a6 drm/i915: Plumb 'dsb' all way to the color commit hooks
c12222d62c44 drm/i915/dsb: Use DSB for plane/color management updates


