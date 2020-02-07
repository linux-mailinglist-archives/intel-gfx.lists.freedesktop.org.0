Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BE71554C7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 10:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA426FBEF;
	Fri,  7 Feb 2020 09:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEBC06FBEC;
 Fri,  7 Feb 2020 09:34:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A74A5A00FD;
 Fri,  7 Feb 2020 09:34:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 09:34:35 -0000
Message-ID: <158106807568.8752.13599207480374796230@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/gt=3A_Prevent_queui?=
 =?utf-8?q?ng_retire_workers_on_the_virtual_engine_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915/gt: Prevent queuing retire workers on the virtual engine (rev2)
URL   : https://patchwork.freedesktop.org/series/73116/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5060a4cb7d77 drm/i915/gt: Prevent queuing retire workers on the virtual engine
e0b56b21df77 drm/i915/gt: Protect defer_request() from new waiters
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
<4>[17436.705449] Hardware name: System manufacturer System Product Name/Z170M-PLUS, BIOS 3805 05/16/2018

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
35d0f7ddbc6f drm/i915/gt: Protect execlists_hold/unhold from new waiters
6bf204cf34f4 drm/i915/gem: Don't leak non-persistent requests on changing engines
-:248: WARNING:USE_SPINLOCK_T: struct spinlock should be spinlock_t
#248: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:183:
+	struct spinlock stale_lock;

total: 0 errors, 1 warnings, 0 checks, 240 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
