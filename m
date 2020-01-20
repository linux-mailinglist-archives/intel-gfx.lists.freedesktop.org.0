Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 582BC142E9C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 16:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F646E9B4;
	Mon, 20 Jan 2020 15:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB4276E9B3;
 Mon, 20 Jan 2020 15:17:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1EE5A0087;
 Mon, 20 Jan 2020 15:17:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 15:17:31 -0000
Message-ID: <157953345163.682.4660785440090561636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915/gt=3A_Acquire_ce-?=
 =?utf-8?q?=3Eactive_before_ce-=3Epin=5Fcount/ce-=3Epin=5Fmutex?=
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

Series: series starting with [1/5] drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
URL   : https://patchwork.freedesktop.org/series/72269/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6cbb3c0bda69 drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
<0> [198.668822] gem_exec-1246    0.... 193899010us : timeline_advance: timeline_advance:387 GEM_BUG_ON(!atomic_read(&tl->pin_count))

-:132: ERROR:POINTER_LOCATION: "foo*bar" should be "foo *bar"
#132: FILE: drivers/gpu/drm/i915/i915_active.h:191:
+static inline void __i915_active_acquire(struct i915_active*ref)

total: 1 errors, 1 warnings, 0 checks, 89 lines checked
4fc48a860edc drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
1ac032874ab5 drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list
570974a6f083 drm/i915/gem: Convert vm idr to xarray
0614af4d0caa drm/i915/display: Squelch kerneldoc complaints

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
