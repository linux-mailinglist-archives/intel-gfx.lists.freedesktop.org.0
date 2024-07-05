Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FBB928BA3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 17:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4079210E1D2;
	Fri,  5 Jul 2024 15:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00BD510E1D2;
 Fri,  5 Jul 2024 15:31:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/=7Bi915=2C_xe=7D?=
 =?utf-8?q?=3A_FBC_cleanups_+_tweak_fbdev_stolen_usage?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Jul 2024 15:31:51 -0000
Message-ID: <172019351199.31462.1687104808057135581@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

Series: drm/{i915, xe}: FBC cleanups + tweak fbdev stolen usage
URL   : https://patchwork.freedesktop.org/series/135800/
State : warning

== Summary ==

Error: dim checkpatch failed
1548cd572c1d drm/i915/fbc: Extract intel_fbc_has_fences()
7aedff05b81d drm/i915/fbc: Convert to intel_display, mostly
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:64:
+#define for_each_fbc_id(__display, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
+		for_each_if(DISPLAY_RUNTIME_INFO(__display)->fbc_mask & BIT(__fbc_id))

-:80: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#80: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:68:
+#define for_each_intel_fbc(__display, __fbc, __fbc_id) \
+	for_each_fbc_id((__display), (__fbc_id)) \
+		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])

-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:68:
+#define for_each_intel_fbc(__display, __fbc, __fbc_id) \
+	for_each_fbc_id((__display), (__fbc_id)) \
+		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])

-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:68:
+#define for_each_intel_fbc(__display, __fbc, __fbc_id) \
+	for_each_fbc_id((__display), (__fbc_id)) \
+		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])

-:679: WARNING:LONG_LINE: line length of 200 exceeds 100 columns
#679: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:842:
+			      "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);

total: 1 errors, 1 warnings, 3 checks, 1268 lines checked
e2f3b9389a34 drm/i915/fbc: s/_intel_fbc_cfb_stride()/intel_fbc_plane_cfb_stride()/
c44349a28111 drm/i915/fbc: Extract intel_fbc_max_plane_size()
17cacd8430ef drm/i915/fbc: Extract intel_fbc_max_surface_size()
30df06a66ac5 drm/i915/fbc: s/intel_fbc_hw_tracking_covers_screen()/intel_fbc_surface_size_ok()/
42bd62db5206 drm/i915/fbc: Adjust g4x+ platform checks
d1483dbe647c drm/i915/fbc: Extract _intel_fbc_cfb_stride()
18f5e36ac652 drm/i915/fbc: s/lines/height/
044ee0a89fff drm/i915/fbc: Reoder CFB max height platform checks
a5e6fc71bbbc drm/i915/fbc: Extract intel_fbc_max_cfb_height()
4d539cf61e6c drm/i915/fbc: Extract _intel_fbc_cfb_size()
5b3fefb53338 drm/i915/fbc: Extract intel_fbc_cfb_cpp()
93866e28ed1b drm/i915/fbc: Introduce intel_fbc_preferred_cfb_size()
d55ab16969e1 drm/xe/fbdev: Fix BIOS FB vs.s stolen size checke
cf0af2d009d4 drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
c41f30ea8cf4 drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
d41a06193f6d drm/xe/fbdev: Use the same logic for fbdev stolen takever and fresh allocation
d768e216f464 drm/i915/fbdev: Adjust fbdev stolen mem usage heuristic
bafb123f903f drm/xe/fbdev: Adjust fbdev stolen mem usage heuristic


