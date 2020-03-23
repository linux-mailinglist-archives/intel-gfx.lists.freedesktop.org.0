Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0DF18F921
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 17:00:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B003C6E279;
	Mon, 23 Mar 2020 16:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3CD76E283;
 Mon, 23 Mar 2020 16:00:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDBA3A47DF;
 Mon, 23 Mar 2020 16:00:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Mar 2020 16:00:36 -0000
Message-ID: <158497923683.9810.16712886980469152374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323130935.13568-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323130935.13568-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/execlists=3A_Pull_t?=
 =?utf-8?q?asklet_interrupt-bh_local_to_direct_submission?=
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

Series: series starting with [1/4] drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission
URL   : https://patchwork.freedesktop.org/series/74973/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cc3bda70c931 drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission
2e7463a5b755 drm/i915: Immediately execute the fenced work
-:54: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#54: FILE: drivers/gpu/drm/i915/i915_sw_fence_work.h:17:
+#define __DBG_BUG_ON(expr) BUG_ON(expr)

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
c9fc4147269c drm/i915: Allow for different modes of interruptible i915_active_wait
42c13a451e00 drm/i915/gem: Prevent switching of active GEM context VM

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
