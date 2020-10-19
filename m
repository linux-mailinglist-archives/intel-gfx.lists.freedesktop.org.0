Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10E9292C81
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 19:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185EB6E93C;
	Mon, 19 Oct 2020 17:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 896396E8F7;
 Mon, 19 Oct 2020 17:18:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85CB7A41FB;
 Mon, 19 Oct 2020 17:18:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 19 Oct 2020 17:18:31 -0000
Message-ID: <160312791154.32024.10553554880540278628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201019165005.18128-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201019165005.18128-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gem=3A_Poison_stole?=
 =?utf-8?q?n_pages_before_use?=
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

Series: series starting with [1/2] drm/i915/gem: Poison stolen pages before use
URL   : https://patchwork.freedesktop.org/series/82834/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
650f2e2f5bdd drm/i915/gem: Poison stolen pages before use
-:38: WARNING:MEMORY_BARRIER: memory barrier without comment
#38: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:515:
+		mb();

-:49: WARNING:MEMORY_BARRIER: memory barrier without comment
#49: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:526:
+	mb();

total: 0 errors, 2 warnings, 0 checks, 63 lines checked
02b10f8c887c drm/i915: Exclude low pages (128KiB) of stolen from use
-:146: WARNING:MEMORY_BARRIER: memory barrier without comment
#146: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:89:
+		mb();

-:164: WARNING:MEMORY_BARRIER: memory barrier without comment
#164: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:107:
+	mb();

-:187: WARNING:MEMORY_BARRIER: memory barrier without comment
#187: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:130:
+		mb();

-:211: WARNING:MEMORY_BARRIER: memory barrier without comment
#211: FILE: drivers/gpu/drm/i915/gt/selftest_reset.c:154:
+	mb();

total: 0 errors, 4 warnings, 0 checks, 236 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
