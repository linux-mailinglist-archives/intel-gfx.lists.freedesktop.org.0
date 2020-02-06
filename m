Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713F3154EF4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 23:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C00CA6ECCE;
	Thu,  6 Feb 2020 22:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F51F6E43B;
 Thu,  6 Feb 2020 22:33:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07710A0118;
 Thu,  6 Feb 2020 22:33:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 22:33:12 -0000
Message-ID: <158102839200.15031.17356547032607389853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/gt=3A_Prevent_queui?=
 =?utf-8?q?ng_retire_workers_on_the_virtual_engine?=
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

Series: series starting with [1/4] drm/i915/gt: Prevent queuing retire workers on the virtual engine
URL   : https://patchwork.freedesktop.org/series/73116/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
26ef32e64fba drm/i915/gt: Prevent queuing retire workers on the virtual engine
2824c4d40d2b drm/i915/gt: Protect defer_request() from new waiters
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
<4>[17436.705449] Hardware name: System manufacturer System Product Name/Z170M-PLUS, BIOS 3805 05/16/2018

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
9cbb3d697335 drm/i915/gt: Protect execlists_hold/unhold from new waiters
f8a0d318c6d8 drm/i915/gem: Don't leak non-persistent requests on changing engines
-:248: WARNING:USE_SPINLOCK_T: struct spinlock should be spinlock_t
#248: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:183:
+	struct spinlock stale_lock;

total: 0 errors, 1 warnings, 0 checks, 240 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
