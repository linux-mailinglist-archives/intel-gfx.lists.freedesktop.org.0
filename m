Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D073DA15E82
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 19:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7746610E3E9;
	Sat, 18 Jan 2025 18:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694C910E3F1;
 Sat, 18 Jan 2025 18:37:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Buiild_error_in_i915?=
 =?utf-8?q?/xe_=28was=3A_=5BPATCH_next_4/7=5D_minmax=2Eh=3A_Use_BUILD=5FBUG?=
 =?utf-8?q?=5FON=5FMSG=28=29_for_the_lo_=3C_hi_test_in_clamp=28=29=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Guenter Roeck" <linux@roeck-us.net>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jan 2025 18:37:28 -0000
Message-ID: <173722544842.1243096.12077376765977731619@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
In-Reply-To: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
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

Series: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
URL   : https://patchwork.freedesktop.org/series/143703/
State : warning

== Summary ==

Error: dim checkpatch failed
9955d8377768 Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
-:20: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#20: 
> > This patch triggers a build error when trying to build parisc:allmodconfig.

-:48: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#48: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:79:
+#if 0

-:63: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#63: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:126:
+#if 0

-:74: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#74: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:147:
+#if 0

-:82: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 4 warnings, 0 checks, 36 lines checked


