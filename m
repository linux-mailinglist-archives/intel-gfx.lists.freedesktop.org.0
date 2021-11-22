Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0902B45947F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 19:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D720C89B60;
	Mon, 22 Nov 2021 18:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95C338989F;
 Mon, 22 Nov 2021 18:07:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D6E0A73C9;
 Mon, 22 Nov 2021 18:07:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 22 Nov 2021 18:07:28 -0000
Message-ID: <163760444854.5692.4289511693603984611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1637588831.git.jani.nikula@intel.com>
In-Reply-To: <cover.1637588831.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_break_intel=5Fdisplay=5Ftypes=2Eh_dependency_on?=
 =?utf-8?q?_i915=5Fdrv=2Eh?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: break intel_display_types.h dependency on i915_drv.h
URL   : https://patchwork.freedesktop.org/series/97173/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
42a9e30e36a5 drm/i915/display: use drm_crtc_wait_one_vblank() directly when possible
35c9992782a8 drm/i915/display: remove intel_wait_for_vblank()
fbbf6148f0ec drm/i915/crtc: un-inline some crtc functions and move to intel_crtc.[ch]
7a468e807402 drm/i915/fb: move intel_fb_uses_dpt to intel_fb.c and un-inline
fe9d28ef63bd drm/i915: split out intel_pm_types.h
-:106: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#106: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
6cb1c6ad0212 drm/i915: move enum hpd_pin to intel_display.h
-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__pin' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/display/intel_display.h:370:
+#define for_each_hpd_pin(__pin) \
+	for ((__pin) = (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)

total: 0 errors, 0 warnings, 1 checks, 60 lines checked
0239a6a2079b drm/i915/display: convert dp_to_i915() to a macro
795d433c3faa drm/i915/display: stop including i915_drv.h from intel_display_types.h


