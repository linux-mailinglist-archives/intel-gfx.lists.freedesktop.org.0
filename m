Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E44B141E6C
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 15:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBD76E3BB;
	Sun, 19 Jan 2020 14:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 862AF6E3B8;
 Sun, 19 Jan 2020 14:09:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E8E9A0088;
 Sun, 19 Jan 2020 14:09:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 19 Jan 2020 14:09:16 -0000
Message-ID: <157944295650.23912.2426322071048509480@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Acquire_ce-?=
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

Series: series starting with [1/2] drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
URL   : https://patchwork.freedesktop.org/series/72249/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a0bde5e9b518 drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
<0> [198.668822] gem_exec-1246    0.... 193899010us : timeline_advance: timeline_advance:387 GEM_BUG_ON(!atomic_read(&tl->pin_count))

-:132: ERROR:POINTER_LOCATION: "foo*bar" should be "foo *bar"
#132: FILE: drivers/gpu/drm/i915/i915_active.h:191:
+static inline void __i915_active_acquire(struct i915_active*ref)

total: 1 errors, 1 warnings, 0 checks, 89 lines checked
d9228769075a drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
