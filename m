Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841F33C5E18
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 16:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD84989BAE;
	Mon, 12 Jul 2021 14:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADB7889BAE;
 Mon, 12 Jul 2021 14:14:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6C70A008A;
 Mon, 12 Jul 2021 14:14:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Mon, 12 Jul 2021 14:14:22 -0000
Message-ID: <162609926265.23770.10717299617764364481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210711055003.528167-1-jim.cromie@gmail.com>
In-Reply-To: <20210711055003.528167-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Allow_using_dyndbg_to_replace_drm=5Fdebug=5Fenabled?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Allow using dyndbg to replace drm_debug_enabled
URL   : https://patchwork.freedesktop.org/series/92438/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
05ade4d62336 drm_print.h: rewrap __DRM_DEFINE_DBG_RATELIMITED macro
-:32: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#32: FILE: include/drm/drm_print.h:535:
+	if (drm_debug_enabled(DRM_UT_ ## category)			\
+	    && __ratelimit(&rs_))					\

-:45: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 1 checks, 32 lines checked
b347ee940ec2 drm: fixup comment spelling
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:20: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
c3d19ae5f037 drm: RFC add choice to use dynamic debug in drm-debug
-:69: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#69: 
  commit 7911902129a8 ("drm/print: Handle potentially NULL drm_devices in drm_dbg_*)

-:69: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7911902129a8 ("drm/print: Handle potentially NULL drm_devices in drm_dbg_*")'
#69: 
  commit 7911902129a8 ("drm/print: Handle potentially NULL drm_devices in drm_dbg_*)

-:141: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#141: FILE: drivers/gpu/drm/drm_print.c:93:
+	for_each_set_bit(bitpos, &changes, ARRAY_SIZE(format_class_prefixes)) {
+

-:164: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#164: FILE: drivers/gpu/drm/drm_print.c:116:
+}
+static const struct kernel_param_ops param_ops_debug = {

-:181: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#181: FILE: drivers/gpu/drm/drm_print.c:327:
+void _drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
 		 const char *format, ...)

-:275: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#275: FILE: include/drm/drm_print.h:384:
+void _drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
 		 const char *format, ...);

-:354: CHECK:LINE_SPACING: Please don't use multiple blank lines
#354: FILE: include/drm/drm_print.h:549:
 
+

-:409: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 1 warnings, 5 checks, 313 lines checked
64eb8b1471cb i915: map gvt pr_debug categories to bits in parameters/debug_gvt
-:68: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#68: FILE: drivers/gpu/drm/i915/i915_params.c:284:
+};
+#define NUM_CLASSES	ARRAY_SIZE(format_prefix_classes)

-:91: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#91: FILE: drivers/gpu/drm/i915/i915_params.c:307:
+	for_each_set_bit(bitpos, &changes, NUM_CLASSES) {
+

-:104: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#104: FILE: drivers/gpu/drm/i915/i915_params.c:320:
+}
+static int param_get_dyndbg(char *buffer, const struct kernel_param *kp)

-:109: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#109: FILE: drivers/gpu/drm/i915/i915_params.c:325:
+}
+static const struct kernel_param_ops param_ops_dyndbg = {

-:127: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 4 checks, 86 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
