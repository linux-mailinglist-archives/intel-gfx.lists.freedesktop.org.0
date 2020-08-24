Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBBA24FBF3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 12:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F396E1F1;
	Mon, 24 Aug 2020 10:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33BC66E1E6;
 Mon, 24 Aug 2020 10:51:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B83BA3ECB;
 Mon, 24 Aug 2020 10:51:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Mon, 24 Aug 2020 10:51:22 -0000
Message-ID: <159826628214.20777.17920254415671346837@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200824034556.26626-1-nischal.varide@intel.com>
In-Reply-To: <20200824034556.26626-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_Fixing_Possible_Null_Pointer?=
 =?utf-8?q?_Dereference?=
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

Series: series starting with [1/5] Fixing Possible Null Pointer Dereference
URL   : https://patchwork.freedesktop.org/series/80939/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e2dc6f705c6e Fixing Possible Null Pointer Dereference
3b7087647897 Fixing Possible Null Pointer Dereference.
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/display/intel_display.c:2270:
+		vma = i915_gem_object_pin_to_display_plane(obj,
+			alignment, view, pinctl);

-:38: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#38: FILE: drivers/gpu/drm/i915/display/intel_display.c:11313:
+	if (obj) {
+

total: 0 errors, 0 warnings, 2 checks, 41 lines checked
392417891b5b Fixing a Possible Null Pointer Dereference.
932de90c59ae Fixing Possible Null Pointer Dereference.
fe514036c049 Fixing a Possible Null Pointer Dereference.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
