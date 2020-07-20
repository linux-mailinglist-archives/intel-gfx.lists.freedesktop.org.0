Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5168B225CA7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 12:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 481BD89081;
	Mon, 20 Jul 2020 10:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40CAC88584;
 Mon, 20 Jul 2020 10:33:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38819A3ECB;
 Mon, 20 Jul 2020 10:33:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jul 2020 10:33:21 -0000
Message-ID: <159524120119.13116.6928914104301928117@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200720092312.16975-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/10=5D_drm/i915/gem=3A_Remove_dis?=
 =?utf-8?q?ordered_per-file_request_list_for_throttling?=
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

Series: series starting with [01/10] drm/i915/gem: Remove disordered per-file request list for throttling
URL   : https://patchwork.freedesktop.org/series/79663/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5658c6f4f5ec drm/i915/gem: Remove disordered per-file request list for throttling
9bbfe782827e drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
b31adc8db68e drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs
c0249b2d18cb drm/i915/gt: Only transfer the virtual context to the new engine if active
-:28: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

-:28: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")'
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

total: 1 errors, 1 warnings, 0 checks, 81 lines checked
b94091b54c89 drm/i915/gt: Distinguish the virtual breadcrumbs from the irq breadcrumbs
-:194: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#194: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 498 lines checked
d3452c2885e6 drm/i915/gt: Move intel_breadcrumbs_arm_irq earlier
1ee68c9b0e38 drm/i915/gt: Hold context/request reference while breadcrumbs are active
6bbb5b5dc21a drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
caef82f06367 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:276: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#276: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:54:
+	spinlock_t signal_lock;

total: 0 errors, 0 warnings, 1 checks, 236 lines checked
a9f67affbc82 drm/i915: Drop i915_request.lock serialisation around await_start


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
