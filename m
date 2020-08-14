Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 270142447C6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 12:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD006EB25;
	Fri, 14 Aug 2020 10:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F5336EB1D;
 Fri, 14 Aug 2020 10:14:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 595BDA66C7;
 Fri, 14 Aug 2020 10:14:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Fri, 14 Aug 2020 10:14:00 -0000
Message-ID: <159740004033.3438.11995246586072941657@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200814024950.26830-1-nischal.varide@intel.com>
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_Critical_KlockWork_Error_-_F?=
 =?utf-8?q?ixes_-_intel=5Fcdclk=2Ec_-_Possible_NullPointerDereference1?=
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

Series: series starting with [1/8] Critical KlockWork Error - Fixes - intel_cdclk.c - Possible NullPointerDereference1
URL   : https://patchwork.freedesktop.org/series/80622/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b5bd9c17f5da Critical KlockWork Error - Fixes - intel_cdclk.c - Possible NullPointerDereference1
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:36: CHECK:LINE_SPACING: Please don't use multiple blank lines
#36: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1968:
+
+

-:49: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 1 checks, 35 lines checked
40f6a6747f32 Critical KlockWork Error - Fixes - intel_atomic.c - Possible NullPointerDereference1
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:20: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
72231b698a7d Critical KlockWork Error - Fixes - intel_fbdev.c - Possible NullPointerDereference1
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:18: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#18: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:598:
+	if (ifbdev->fb && intel_fb_obj(&ifbdev->fb->base)) {
+	    if (state == FBINFO_STATE_RUNNING &&

-:19: WARNING:TABSTOP: Statements should start on a tabstop
#19: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:599:
+	    if (state == FBINFO_STATE_RUNNING &&

-:20: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#20: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:600:
+	    if (state == FBINFO_STATE_RUNNING &&
+		    intel_fb_obj(&ifbdev->fb->base)->stolen)

-:25: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 3 warnings, 1 checks, 13 lines checked
f2f5b020a8e8 Critical KlockWork Error - Fixes - intel_display.c - Possible NullPointerDereference1
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:19: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#19: FILE: drivers/gpu/drm/i915/display/intel_display.c:2268:
+	if (obj)
+	    vma = i915_gem_object_pin_to_display_plane(obj,

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:2270:
+	    vma = i915_gem_object_pin_to_display_plane(obj,
+		    alignment, view, pinctl);

-:24: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 2 warnings, 1 checks, 12 lines checked
ad3c9fa781ce Critical KlockWork Error - Fixes - intel_sdvo.c - Possible NullPointerDereference1
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:16: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#16: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:2508:
+	if (!(new_conn_state && old_conn_state && old_state && new_state))
+	    return 0;

-:17: WARNING:TABSTOP: Statements should start on a tabstop
#17: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:2509:
+	    return 0;

-:21: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 3 warnings, 0 checks, 9 lines checked
35e611290838 Critical KlockWork Error - Fixes - intel_tv.c - Possible NullPointerDereference1
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:21: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#21: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1845:
+	if (old_state && new_state && new_crtc_state) {
[...]
+	    if (old_state->tv.mode != new_state->tv.mode ||

-:22: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#22: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1846:
+	if (old_state && new_state && new_crtc_state) {
+

-:23: WARNING:TABSTOP: Statements should start on a tabstop
#23: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1847:
+	    if (old_state->tv.mode != new_state->tv.mode ||

-:24: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#24: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1848:
+	    if (old_state->tv.mode != new_state->tv.mode ||
+		    old_state->tv.margins.left != new_state->tv.margins.left ||

-:31: WARNING:TABSTOP: Statements should start on a tabstop
#31: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1855:
+	    }

-:34: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 4 warnings, 2 checks, 22 lines checked
b91c796bdad7 Critical KlockWork Error - Fixes - intel_display_power.c - Possible NullPointerDereference2
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:16: ERROR:TRAILING_WHITESPACE: trailing whitespace
#16: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:604:
+^Iif (!dig_port) $

-:16: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#16: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:604:
+	if (!dig_port) 
+	    return;

-:17: WARNING:TABSTOP: Statements should start on a tabstop
#17: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:605:
+	    return;

-:21: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 3 warnings, 0 checks, 9 lines checked
aae7f8d354af Critical KlockWork Error - Fixes - intel_combo_phy.c Uninitialized Variable-1
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:20: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 8 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
