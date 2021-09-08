Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF5640321D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 03:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B036E0EA;
	Wed,  8 Sep 2021 01:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5A416E0EA;
 Wed,  8 Sep 2021 01:19:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD785A47EB;
 Wed,  8 Sep 2021 01:19:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 Sep 2021 01:19:07 -0000
Message-ID: <163106394774.22225.10124273179501476322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210908003944.2972024-1-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915/display=3A_split_and_constify_vtable?=
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

Series: i915/display: split and constify vtable
URL   : https://patchwork.freedesktop.org/series/94459/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7166501ad5c5 drm/i915/pm: drop get_fifo_size vfunc.
7d63620c3a3c drm/i915: make update_wm take a dev_priv.
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:145: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 110 lines checked
4f0dcfddaf55 drm/i915/wm: move the update watermark wrapper to display side.
-:25: CHECK:LINE_SPACING: Please don't use multiple blank lines
#25: FILE: drivers/gpu/drm/i915/display/intel_display.c:129:
 
+

-:129: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 1 checks, 98 lines checked
f7fd8b9b66d8 drm/i915: split clock gating init from display vtable
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:130: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 110 lines checked
fa9489128d12 drm/i915: split watermark vfuncs from display vtable.
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:309: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 267 lines checked
8e12abc84eee drm/i915: split color functions from display vtable
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:190: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 169 lines checked
f04a4c66375c drm/i915: split audio functions from display vtable
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:103: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 82 lines checked
38cdd3a1eb3b drm/i915: split cdclk functions from display vtable.
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:335: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 298 lines checked
058f5bcb4112 drm/i915: split irq hotplug function from display vtable
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:88: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 64 lines checked
079b3659abea drm/i915: split fdi link training from display vtable.
-:77: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 0 checks, 51 lines checked
c6679bffd83a drm/i915: split the dpll clock compute out from display vtable.
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:101: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 75 lines checked
a68de81479ab drm/i915: constify fdi link training vtable
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:68: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 46 lines checked
a022a66bdb74 drm/i915: constify irq function vtable.
-:88: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 0 checks, 64 lines checked
8715b614793b drm/i915: constify color function vtable.
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:189: CHECK:BRACES: Unbalanced braces around else statement
#189: FILE: drivers/gpu/drm/i915/display/intel_color.c:2194:
+		} else

-:206: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 1 checks, 187 lines checked
bc7d25d0b5a8 drm/i915: constify the audio function vtable
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:97: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 78 lines checked
7afd7fa26e62 drm/i915: constify the dpll clock vtable
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:73: CHECK:LINE_SPACING: Please don't use multiple blank lines
#73: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1398:
+
+

-:116: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 1 checks, 94 lines checked
19452e67e3f5 drm/i915: constify the cdclk vtable
-:458: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 0 checks, 420 lines checked
cd09b1003483 drm/i915: drop unused function ptr and comments.
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:25: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 13 lines checked
0aa6560d6dc0 drm/i915: constify display function vtable
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:168: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 145 lines checked
c38e95658801 drm/i915: constify clock gating init vtable.
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:145: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 126 lines checked
ee4bac229f7f drm/i915: constify display wm vtable
-:316: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 0 checks, 273 lines checked


