Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF6F6B9C8B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 18:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD2010E182;
	Tue, 14 Mar 2023 17:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1DB310E055;
 Tue, 14 Mar 2023 17:10:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8EF5A0003;
 Tue, 14 Mar 2023 17:10:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 14 Mar 2023 17:10:30 -0000
Message-ID: <167881383078.26413.11197391760269658969@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Plane_cleanups_and_extra_registers?=
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

Series: drm/i915: Plane cleanups and extra registers
URL   : https://patchwork.freedesktop.org/series/115127/
State : warning

== Summary ==

Error: dim checkpatch failed
802cf3411ec1 drm/i915: Stop using pipe_offsets[] for PIPE_MISC*
76f7c6ff785e drm/i915: s/PIPEMISC/PIPE_MISC/
4ab5b9c730d4 drm/i915: Define more pipe timestamp registers
-:35: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/i915_reg.h:3530:
+#define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
cb266ee1072d drm/i915: Program VLV/CHV PIPE_MSA_MISC register
1feeb0e1ba95 drm/i915: Define skl+ universal plane SURFLIVE registers
-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:4785:
+#define PLANE_SURFLIVE(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
717e5e4e9f97 drm/i915: Define vlv/chv sprite plane SURFLIVE registers
-:39: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:4442:
+#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
b130477a1347 drm/i915: Clean up skl+ plane alpha bits
fe9486538cff drm/i915: Relocate intel_plane_check_src_coordinates()
-:79: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#79: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:984:
+		hsub = vsub = max(hsub, vsub);

total: 0 errors, 0 warnings, 1 checks, 177 lines checked
820d0149b732 drm/i915: Extract intel_sprite_uapi.c
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:187: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#187: 
new file mode 100644

-:251: WARNING:LONG_LINE: line length of 148 exceeds 100 columns
#251: FILE: drivers/gpu/drm/i915/display/intel_sprite_uapi.c:60:
+	if ((set->flags & (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE)) == (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))

total: 0 errors, 2 warnings, 0 checks, 300 lines checked


