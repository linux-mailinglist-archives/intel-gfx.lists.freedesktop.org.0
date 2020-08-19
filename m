Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DA3249CBB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 13:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357406E2F2;
	Wed, 19 Aug 2020 11:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E3396E2E4;
 Wed, 19 Aug 2020 11:52:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68872AA0EE;
 Wed, 19 Aug 2020 11:52:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Wed, 19 Aug 2020 11:52:40 -0000
Message-ID: <159783796042.23598.1922470797475659238@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200819043409.26010-1-nischal.varide@intel.com>
In-Reply-To: <20200819043409.26010-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_Critical-KclockWork-Fixes-in?=
 =?utf-8?q?tel=5Fatomi=2Ec-PossibleNull?=
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

Series: series starting with [1/5] Critical-KclockWork-Fixes-intel_atomi.c-PossibleNull
URL   : https://patchwork.freedesktop.org/series/80798/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3848eb8cc6ce Critical-KclockWork-Fixes-intel_atomi.c-PossibleNull
eb9bd41069a2 Critical-KlockWork-Fixes-intel_display.c-NullDeref
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/display/intel_display.c:2270:
+		vma = i915_gem_object_pin_to_display_plane(obj,
+			alignment, view, pinctl);

-:38: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#38: FILE: drivers/gpu/drm/i915/display/intel_display.c:11273:
+	if (obj) {
+

total: 0 errors, 0 warnings, 2 checks, 41 lines checked
f99675438805 Critical-KlockWorks-Fix-intel_sdvo.c-Possible-Null
66e2f48dd7a0 Critical-KlockWork-Fix-intel_tv.c-Possible-Null
75fa8cc3edb3 Critical-KlockWorks-Fix-intel_crt.c-Possible-Null


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
