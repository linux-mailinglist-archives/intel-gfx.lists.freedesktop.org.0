Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056C897A912
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 00:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB4910E3F1;
	Mon, 16 Sep 2024 22:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD1E10E3F2;
 Mon, 16 Sep 2024 22:11:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Some_wm/?=
 =?utf-8?q?cxsr_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Sep 2024 22:11:57 -0000
Message-ID: <172652471762.1019870.16515639206189199338@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Some wm/cxsr cleanups
URL   : https://patchwork.freedesktop.org/series/138729/
State : warning

== Summary ==

Error: dim checkpatch failed
b9bbeffe8e8d drm/i915: Remove leftover intel_sprite_set_colorkey_ioctl() prototype
e59da38fc0ee drm/i915: Combine .compute_{pipe, intermediate}_wm() into one
2fca821abc31 drm/i915: Extract ilk_must_disable_lp_wm()
68c8c43574e2 drm/i915: Clean up intel_wm_need_update()
-:45: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:408:
+	    drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state->uapi.src) ||

-:46: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:409:
+	    drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state->uapi.src) ||

-:47: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:410:
+	    drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state->uapi.dst) ||

-:48: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:411:
+	    drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state->uapi.dst))

total: 0 errors, 4 warnings, 0 checks, 32 lines checked
2b12a54135d2 drm/i915: Move the dodgy pre-g4x wm stuff into i9xx_wm
-:41: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:720:
+	    drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state->uapi.src) ||

-:42: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:721:
+	    drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state->uapi.src) ||

-:43: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:722:
+	    drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state->uapi.dst) ||

-:44: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:723:
+	    drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state->uapi.dst))

total: 0 errors, 4 warnings, 0 checks, 146 lines checked
78c8ce97b44c drm/i915: s/disable_lp_wm/disable_cxsr/
cab3f831c44b drm/i915: Rename variables in ilk_intermedidate_wm()


