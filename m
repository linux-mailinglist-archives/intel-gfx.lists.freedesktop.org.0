Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39974733D8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 19:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CAEA10E843;
	Mon, 13 Dec 2021 18:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4442310E843;
 Mon, 13 Dec 2021 18:19:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D246AADD2;
 Mon, 13 Dec 2021 18:19:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 13 Dec 2021 18:19:10 -0000
Message-ID: <163941955022.29012.8933886893903057977@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/fbc=3A_More_multi-FBC_refactoring_=28rev3=29?=
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

Series: drm/i915/fbc: More multi-FBC refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/97821/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
88faeb3cb9ee drm/i915/fbc: Parametrize FBC register offsets
ca4050953f1b drm/i915/fbc: Loop through FBC instances in various places
-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:52:
+#define for_each_fbc_id(__fbc_id) \
+	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++)

-:45: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#45: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:55:
+#define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
+	for_each_fbc_id(__fbc_id) \
+		for_each_if((__fbc) = (__dev_priv)->fbc[(__fbc_id)])

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:55:
+#define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
+	for_each_fbc_id(__fbc_id) \
+		for_each_if((__fbc) = (__dev_priv)->fbc[(__fbc_id)])

-:115: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#115: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1344:
+
+}

total: 1 errors, 0 warnings, 3 checks, 253 lines checked
0bcf7d617272 drm/i915/fbc: Introduce device info fbc_mask
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:52:
+#define for_each_fbc_id(__dev_priv, __fbc_id) \
+	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
+		for_each_if(INTEL_INFO(__dev_priv)->display.fbc_mask & BIT(__fbc_id))

total: 0 errors, 0 warnings, 1 checks, 227 lines checked
5ef4aae1e202 drm/i915/fbc: Register per-crtc debugfs files


