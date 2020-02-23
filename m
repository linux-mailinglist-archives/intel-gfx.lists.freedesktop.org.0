Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45420169A2C
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Feb 2020 22:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D4189DC7;
	Sun, 23 Feb 2020 21:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86C1C89DB7;
 Sun, 23 Feb 2020 21:11:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F81AA011B;
 Sun, 23 Feb 2020 21:11:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 23 Feb 2020 21:11:14 -0000
Message-ID: <158249227443.14522.15541054534190372871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200223205432.3993019-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200223205432.3993019-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/6=5D_dma-buf=3A_Proxy_fence=2C_an_uns?=
 =?utf-8?q?ignaled_fence_placeholder?=
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

Series: series starting with [1/6] dma-buf: Proxy fence, an unsignaled fence placeholder
URL   : https://patchwork.freedesktop.org/series/73824/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: dma-buf: Proxy fence, an unsignaled fence placeholder
Okay!

Commit: drm/syncobj: Allow use of dma-fence-proxy
Okay!

Commit: drm/i915/gem: Teach execbuf how to wait on future syncobj
-
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2540:62:    expected struct dma_fence *fence
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2540:62:    got struct dma_fence [noderef] <asn:4> *fence
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2540:62: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2542:48:    expected struct dma_fence [noderef] <asn:4> *fence
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2542:48:    got struct dma_fence *
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2542:48: warning: incorrect type in assignment (different address spaces)

Commit: drm/i915/gem: Allow combining submit-fences with syncobj
Okay!

Commit: drm/i915/gt: Declare when we enabled timeslicing
Okay!

Commit: drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
