Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBB01C5CCB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3696E7D9;
	Tue,  5 May 2020 16:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 886366E5D5;
 Tue,  5 May 2020 16:00:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8273EA011B;
 Tue,  5 May 2020 16:00:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 16:00:57 -0000
Message-ID: <158869445750.25913.17563267566389419557@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504135030.19210-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504135030.19210-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915=3A_Mark_concurrent_?=
 =?utf-8?q?submissions_with_a_weak-dependency_=28rev3=29?=
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

Series: series starting with [1/6] drm/i915: Mark concurrent submissions with a weak-dependency (rev3)
URL   : https://patchwork.freedesktop.org/series/76912/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d336bdf650f8 drm/i915: Mark concurrent submissions with a weak-dependency
19243ac2eee1 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:387: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#387: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:547: WARNING:MEMORY_BARRIER: memory barrier without comment
#547: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 1 checks, 1050 lines checked
f3138b0d84f7 drm/syncobj: Allow use of dma-fence-proxy
e796d58b1084 drm/i915/gem: Teach execbuf how to wait on future syncobj
f3459c71c608 drm/i915/gem: Allow combining submit-fences with syncobj
7e5f8efa9a8d drm/i915/gt: Declare when we enabled timeslicing

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
