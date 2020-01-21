Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A31914479B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 23:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F281B6E4A7;
	Tue, 21 Jan 2020 22:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F1276E497;
 Tue, 21 Jan 2020 22:33:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 467F1A0134;
 Tue, 21 Jan 2020 22:33:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 22:33:07 -0000
Message-ID: <157964598728.11478.4723019051607613650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121222447.419489-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121222447.419489-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915=3A_Clear_the_GGTT?=
 =?utf-8?q?=5FWRITE_bit_on_unbinding_the_vma?=
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

Series: series starting with [1/7] drm/i915: Clear the GGTT_WRITE bit on unbinding the vma
URL   : https://patchwork.freedesktop.org/series/72355/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2068495785db drm/i915: Clear the GGTT_WRITE bit on unbinding the vma
b04be36c5df3 drm/i915/execlists: Reclaim the hanging virtual request
231180d28fd3 drm/i915: Don't show the blank process name for internal/simulated errors
9742a98ce03f drm/i915: Mark the removal of the i915_request from the sched.link
c6e519447145 drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
1d79c7ddc249 drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
<0> [198.668822] gem_exec-1246    0.... 193899010us : timeline_advance: timeline_advance:387 GEM_BUG_ON(!atomic_read(&tl->pin_count))

-:132: ERROR:POINTER_LOCATION: "foo*bar" should be "foo *bar"
#132: FILE: drivers/gpu/drm/i915/i915_active.h:191:
+static inline void __i915_active_acquire(struct i915_active*ref)

total: 1 errors, 1 warnings, 0 checks, 89 lines checked
37d47960d06d drm/i915/gt: Yield the timeslice if waiting on a semaphore

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
