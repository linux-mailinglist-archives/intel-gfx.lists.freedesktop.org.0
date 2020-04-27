Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A351BA043
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 11:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F92A6E107;
	Mon, 27 Apr 2020 09:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DD7A897EF;
 Mon, 27 Apr 2020 09:46:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 178D3A0019;
 Mon, 27 Apr 2020 09:46:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 09:46:31 -0000
Message-ID: <158798079109.26356.7570209865792663709@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427085408.13879-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/9=5D_drm/i915/gt=3A_Sanitize_GT_first?=
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

Series: series starting with [1/9] drm/i915/gt: Sanitize GT first
URL   : https://patchwork.freedesktop.org/series/76542/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915/gt: Sanitize GT first
Okay!

Commit: drm/i915/gt: Fix up clock frequency
Okay!

Commit: drm/i915/execlists: Check preempt-timeout target before submit_ports
Okay!

Commit: drm/i915/gt: Always enable busy-stats for execlists
+drivers/gpu/drm/i915/gt/sysfs_engines.c:73:10: error: bad integer constant expression
+drivers/gpu/drm/i915/gt/sysfs_engines.c:74:10: error: bad integer constant expression
-O:drivers/gpu/drm/i915/gt/sysfs_engines.c:61:10: error: bad integer constant expression
-O:drivers/gpu/drm/i915/gt/sysfs_engines.c:62:10: error: bad integer constant expression

Commit: drm/i915/gt: Move rps.enabled/active to flags
Okay!

Commit: drm/i915/gt: Track use of RPS interrupts in flags
Okay!

Commit: drm/i915/gt: Switch to manual evaluation of RPS
Okay!

Commit: drm/i915/gt: Apply the aggressive downclocking to parking
Okay!

Commit: drm/i915/gt: Restore aggressive post-boost downclocking
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
