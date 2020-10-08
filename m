Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E22877C1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 17:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45A466EA7E;
	Thu,  8 Oct 2020 15:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2660D6EA7B;
 Thu,  8 Oct 2020 15:44:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E7E6A47E2;
 Thu,  8 Oct 2020 15:44:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 08 Oct 2020 15:44:33 -0000
Message-ID: <160217187309.11035.554046463613849720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201008095436.27743-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201008095436.27743-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Exclude_low_pages_=28128KiB=29_of_stolen_from_u?=
 =?utf-8?b?c2UgKHJldjMp?=
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

Series: drm/i915: Exclude low pages (128KiB) of stolen from use (rev3)
URL   : https://patchwork.freedesktop.org/series/82443/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b386647f0366 drm/i915: Exclude low pages (128KiB) of stolen from use
-:142: WARNING:MEMORY_BARRIER: memory barrier without comment
#142: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:85:
+		mb();

-:160: WARNING:MEMORY_BARRIER: memory barrier without comment
#160: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:103:
+	mb();

-:183: WARNING:MEMORY_BARRIER: memory barrier without comment
#183: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:126:
+		mb();

-:207: WARNING:MEMORY_BARRIER: memory barrier without comment
#207: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:150:
+	mb();

-:249: ERROR:SPACING: spaces required around that '=' (ctx:WxV)
#249: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:192:
+		err =__igt_reset_stolen(gt, engine->mask, engine->name);
 		    ^

total: 1 errors, 4 warnings, 0 checks, 232 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
