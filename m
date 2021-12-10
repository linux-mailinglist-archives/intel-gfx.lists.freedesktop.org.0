Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 768A146FB92
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 08:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A60710E6D9;
	Fri, 10 Dec 2021 07:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9019310E6D9;
 Fri, 10 Dec 2021 07:30:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 872EDA47EB;
 Fri, 10 Dec 2021 07:30:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 10 Dec 2021 07:30:18 -0000
Message-ID: <163912141852.3445.16142437173642998776@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/fbc=3A_More_multi-FBC_refactoring?=
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

Series: drm/i915/fbc: More multi-FBC refactoring
URL   : https://patchwork.freedesktop.org/series/97821/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
62abcc4d9d95 drm/i915/fbc: Parametrize FBC register offsets
8d70368946f6 drm/i915/fbc: Loop through FBC instances in various places
-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:52:
+#define for_each_fbc_id(__fbc_id) \
+	for ((__fbc_id) = FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++)

-:41: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#41: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:55:
+#define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
+	for_each_fbc_id(__fbc_id) \
+		for_each_if((__fbc) = (__dev_priv)->fbc[(__fbc_id)])

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:55:
+#define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
+	for_each_fbc_id(__fbc_id) \
+		for_each_if((__fbc) = (__dev_priv)->fbc[(__fbc_id)])

-:111: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#111: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1344:
+
+}

total: 1 errors, 0 warnings, 3 checks, 256 lines checked
4de4d56f03ea drm/i915/fbc: Introduce device info fbc_mask
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fbc_id' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:52:
+#define for_each_fbc_id(__dev_priv, __fbc_id) \
+	for ((__fbc_id) = FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
+		for_each_if(INTEL_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))

total: 0 errors, 0 warnings, 1 checks, 231 lines checked


