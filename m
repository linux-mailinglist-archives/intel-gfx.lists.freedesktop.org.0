Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2445B26BB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 21:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A9710E636;
	Thu,  8 Sep 2022 19:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E80310E63C;
 Thu,  8 Sep 2022 19:31:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46864A00A0;
 Thu,  8 Sep 2022 19:31:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 08 Sep 2022 19:31:32 -0000
Message-ID: <166266549225.27236.17053367623207745822@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_skl+_wm_code_into_its_own_file?=
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

Series: drm/i915: Move skl+ wm code into its own file
URL   : https://patchwork.freedesktop.org/series/108313/
State : warning

== Summary ==

Error: dim checkpatch failed
eff551e7ad3c drm/i915: Split intel_read_wm_latency() into per-platform versions
129d570bf892 drm/i915: Extract skl_watermark.c
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:183: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#183: 
new file mode 100644

-:544: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#544: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:357:
+		for (level = ilk_wm_max_level(i915);
+		     !wm->wm[level].enable; --level)
+		     { }

-:2805: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2805: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:2618:
+				    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm.lines,

-:2816: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2816: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:2629:
+				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm.lines);

-:3011: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#3011: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:2824:
+				val = intel_uncore_read(&i915->uncore, PLANE_WM(pipe, plane_id, level));

-:3730: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#3730: FILE: drivers/gpu/drm/i915/display/skl_watermark.h:67:
+#define intel_atomic_get_old_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

-:3731: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#3731: FILE: drivers/gpu/drm/i915/display/skl_watermark.h:68:
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

-:3732: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#3732: FILE: drivers/gpu/drm/i915/display/skl_watermark.h:69:
+#define intel_atomic_get_new_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

-:3733: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#3733: FILE: drivers/gpu/drm/i915/display/skl_watermark.h:70:
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

total: 1 errors, 6 warnings, 2 checks, 7467 lines checked
1249118bce2e drm/i915: Use REG_FIELD_GET() to extract skl+ wm latencies


