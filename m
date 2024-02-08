Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FE384EAC6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 22:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1937010E0E4;
	Thu,  8 Feb 2024 21:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8478910E0E4;
 Thu,  8 Feb 2024 21:43:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_drm=5Fdb?=
 =?utf-8?q?g=5Fkms=28=29_conversions_and_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 08 Feb 2024 21:43:30 -0000
Message-ID: <170742861054.1109599.4875139592198223062@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: drm_dbg_kms() conversions and cleanups
URL   : https://patchwork.freedesktop.org/series/129677/
State : warning

== Summary ==

Error: dim checkpatch failed
56fa1f3dbdc1 drm/i915: Correct for_each_old_global_obj_in_state() arguments
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:40:
+#define for_each_old_global_obj_in_state(__state, obj, old_obj_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->num_global_objs && \
 		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, 1); \
 	     (__i)++) \
 		for_each_if(obj)

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'obj' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:40:
+#define for_each_old_global_obj_in_state(__state, obj, old_obj_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->num_global_objs && \
 		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, 1); \
 	     (__i)++) \
 		for_each_if(obj)

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:40:
+#define for_each_old_global_obj_in_state(__state, obj, old_obj_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->num_global_objs && \
 		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, 1); \
 	     (__i)++) \
 		for_each_if(obj)

total: 0 errors, 0 warnings, 3 checks, 13 lines checked
5ba467d12038 drm/i915/sdvo: Convert to per-device debugs
-:65: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#65: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:523:
+		drm_dbg_kms(&i915->drm, "I2c transfer returned %d/%d\n", ret, i+3);
 		                                                               ^

total: 0 errors, 0 warnings, 1 checks, 366 lines checked
a5926bea86ec drm/i915/sdvo: Fix up code alignment
1359b5df0437 drm/i915/color: Use per-device debugs
73884978ec47 drm/i915/fb: Use per-device debugs
4c98fc3606e9 drm/i915/bios: Switch to kms debugs
869672750516 drm/i915/bios: Use per-device debugs for VBT related stuff
-:153: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#153: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2147:
+			    "Unsupported I_boost value found in VBT (%d), display may not work properly\n", val);

total: 0 errors, 1 warnings, 0 checks, 277 lines checked
384b6f365380 drm/i915/hdcp: Use per-device debugs
051849bda5f6 drm/i915/wm: Pass the whole i916 to intel_get_cxsr_latency()
b2c0beb9cfca drm/i915/wm: Use per-device debugs in pre-ilk wm code
c3376b352d10 drm/i915/wm: Use per-device debugs ilk wm code
a99cfcd065eb drm/i915/dvo/ns2501: Nuke pointless casts
058ca068062c drm/i915/dvo: Use sizeof(*variable) instead of sizeof(type)


