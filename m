Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D641F13A3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 09:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34586E0FE;
	Mon,  8 Jun 2020 07:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA60A6E0E1;
 Mon,  8 Jun 2020 07:35:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2AF5A47E0;
 Mon,  8 Jun 2020 07:35:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Le" <jason.v.le@intel.com>
Date: Mon, 08 Jun 2020 07:35:18 -0000
Message-ID: <159160171892.14463.15984988829846214547@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608065635.11652-1-jason.v.le@intel.com>
In-Reply-To: <20200608065635.11652-1-jason.v.le@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Avoid_PSR_and_FBC_features_concurently?=
 =?utf-8?q?=2E?=
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

Series: drm/i915/display: Avoid PSR and FBC features concurently.
URL   : https://patchwork.freedesktop.org/series/78107/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dee7c897c6ed drm/i915/display: Avoid PSR and FBC features concurently.
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
Issue: Enble both PSR and FBC caused some fickers on some eDP panels (eg. Panel GIS

-:6: WARNING:TYPO_SPELLING: 'Enble' may be misspelled - perhaps 'Enable'?
#6: 
Issue: Enble both PSR and FBC caused some fickers on some eDP panels (eg. Panel GIS

-:29: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 15)
#29: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1422:
+	if (i915_modparams.enable_psr) {
+               i915_modparams.enable_fbc = 0;

-:30: ERROR:CODE_INDENT: code indent should use tabs where possible
#30: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1423:
+               i915_modparams.enable_fbc = 0;$

-:30: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#30: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1423:
+               i915_modparams.enable_fbc = 0;$

-:31: ERROR:CODE_INDENT: code indent should use tabs where possible
#31: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1424:
+                DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");$

-:31: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#31: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1424:
+                DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");$

-:31: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#31: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1424:
+                DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");

-:34: CHECK:LINE_SPACING: Please don't use multiple blank lines
#34: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1427:
+
+

-:53: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 3 errors, 6 warnings, 1 checks, 23 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
