Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FF57DFBF2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 22:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1876010E12D;
	Thu,  2 Nov 2023 21:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6758F10E0F3;
 Thu,  2 Nov 2023 21:16:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62853AADD5;
 Thu,  2 Nov 2023 21:16:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 02 Nov 2023 21:16:44 -0000
Message-ID: <169895980440.28160.14632648506065426322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231102093248.362659-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20231102093248.362659-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Remove_unused_fo?=
 =?utf-8?q?r=5Feach=5Fuabi=5Fclass=5Fengine?=
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

Series: series starting with [1/2] drm/i915: Remove unused for_each_uabi_class_engine
URL   : https://patchwork.freedesktop.org/series/125886/
State : warning

== Summary ==

Error: dim checkpatch failed
b3e28ced9c21 drm/i915: Remove unused for_each_uabi_class_engine
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
Unused macro after 99919be74aa3 ("drm/i915/gem: Zap the i915_gem_object_blt code")

-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 99919be74aa3 ("drm/i915/gem: Zap the i915_gem_object_blt code")'
#6: 
Unused macro after 99919be74aa3 ("drm/i915/gem: Zap the i915_gem_object_blt code")

total: 1 errors, 1 warnings, 0 checks, 11 lines checked
d4b892a3d2b1 drm/i915: Move for_each_engine* out of i915_drv.h
-:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#34: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:175:
+#define for_each_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:175:
+#define for_each_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

-:38: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#38: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:179:
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt__' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:182:
+#define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
+	for ((tmp__) = (mask__) & (gt__)->info.engine_mask; \
+	     (tmp__) ? \
+	     ((engine__) = (gt__)->engine[__mask_next_bit(tmp__)]), 1 : \
+	     0;)

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp__' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:182:
+#define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
+	for ((tmp__) = (mask__) & (gt__)->info.engine_mask; \
+	     (tmp__) ? \
+	     ((engine__) = (gt__)->engine[__mask_next_bit(tmp__)]), 1 : \
+	     0;)

total: 1 errors, 1 warnings, 3 checks, 64 lines checked


