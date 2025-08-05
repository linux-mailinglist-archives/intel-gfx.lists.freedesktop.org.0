Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 777C1B1B6C1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1273E10E6A0;
	Tue,  5 Aug 2025 14:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="JpyC9h32";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957FA10E6A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:40:31 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-76b77a97a04so3529629b3a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404831; x=1755009631;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Vkf1GCmjvA7ZUzJkkGOKsxb2wo0GT0xtYS7KUQa6OWA=;
 b=JpyC9h32oCD6/OPbSnBhQrPUtZZh8kuXDCmNv7Fv/ZdDezPlHuqr30Wz6SLnYFG1og
 sBEHGN2rMEgdpxZgZcWsBmuu510Ti0TC40gC8mLRpwCIhCER8rmT0yrrLOG8S9usQ4B2
 li+GJwDj4787XRhARGQc8oyl90yv2Aslkt/6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404831; x=1755009631;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Vkf1GCmjvA7ZUzJkkGOKsxb2wo0GT0xtYS7KUQa6OWA=;
 b=GZfzycwklLWjEOE2SQGSEbgwQugQgdhCrVmCD9gZG0hGVejzOE33OEtz9ts/wVFuKs
 hMWVawEdH6phsoqcBoEZ6WfYTvc2TGCxSQY+538rwu1SbObVWgurs41GSGUwoW4r6jUp
 ehkDr9+PeZ/99rOZZrHZD4ZY3DCG08r3fyB/jf+S7KzXMnCqiq1+rGFCrbcPyefvo283
 7Kpo/4ksYUkTZUAtyZDpW7EeRMMNMG5ODRKMG4D4PEXcbisvyCy8H/5JDX7HC4BJPkGW
 ok6oO9YiTItH3zqUtvXRpNc0+gxWy4HQbGdQuXdwYnv0ndLNzFVG/i3rkdNXxvMOPn4k
 5JbQ==
X-Gm-Message-State: AOJu0YzbLrzQ1fC54N70UqEw024NryQI8v2sJlxEQy7y06wwiLWSV3lQ
 yG3J+F+u7ryRddOh3NMQkJILj1QobzT9Zo9iFRpp9JX6YhGfdzI51pHBHJR6Ng/kZJU=
X-Gm-Gg: ASbGncuYxL4qCaOjwfUgpbSPUp++cLfW9l8XejCYosMufYAoREH82hv/yMYy5PSGXE9
 gcBOWm8JLrQ6A1GAuypc+oJTl9kvewSsW1ZH86wMLqtDkKLeN8Vd/QgBmSQRCNNBctWicDz0AhP
 47KvLZVWQg80X2Di5R4PYYat/LcAAvgKYhEipsOiowtdYLGxZJhR+nWkswMB054KMmdto3kytwc
 fnfAdKsezF6U2ZdyQSQ5JAwDDJlp0FoEhb8zL0LTN8oPo1c+GEqkNCvDkW4yfAB4oCRYYtLpEyP
 pLctEbPsByXC+0ZFzn7SlHZD7xJ18NUzFho7IOszfW52R1Eq39kr2DBOy+MtsQ7SE9WApP9yK5m
 uC04oe8oWXfb5DWOrZnQCP8V/yTtsgpBH
X-Google-Smtp-Source: AGHT+IF0RwvmhRKAp8YRNzje9XBNHR/ZfEzyr/psSN5hODlw4/dzMItDKHBATpxgBROPqc4abmC8mQ==
X-Received: by 2002:a05:6a00:2394:b0:76b:f73a:4457 with SMTP id
 d2e1a72fcca58-76bf73a44d5mr14783816b3a.6.1754404831017; 
 Tue, 05 Aug 2025 07:40:31 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.40.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:40:30 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 9/9] drm/i915: Remove todo and comments about struct_mutex
Date: Tue,  5 Aug 2025 11:39:04 -0300
Message-ID: <20250805143908.32343-10-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch completes the removal of struct_mutex from the driver.

Remove the related TODO item, as the transition away from struct_mutex
is now complete.

Also clean up references to struct_mutex in i915.rst to avoid outdated
documentation.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 Documentation/gpu/i915.rst |  7 -------
 Documentation/gpu/todo.rst | 25 -------------------------
 2 files changed, 32 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 7a469df675d8..ce0bb1a7af1f 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -352,8 +352,6 @@ Locking Guidelines
 #. All locking rules and interface contracts with cross-driver interfaces
    (dma-buf, dma_fence) need to be followed.
 
-#. No struct_mutex anywhere in the code
-
 #. dma_resv will be the outermost lock (when needed) and ww_acquire_ctx
    is to be hoisted at highest level and passed down within i915_gem_ctx
    in the call chain
@@ -361,11 +359,6 @@ Locking Guidelines
 #. While holding lru/memory manager (buddy, drm_mm, whatever) locks
    system memory allocations are not allowed
 
-	* Enforce this by priming lockdep (with fs_reclaim). If we
-	  allocate memory while holding these looks we get a rehash
-	  of the shrinker vs. struct_mutex saga, and that would be
-	  real bad.
-
 #. Do not nest different lru/memory manager locks within each other.
    Take them in turn to update memory allocations, relying on the object’s
    dma_resv ww_mutex to serialize against other operations.
diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index c57777a24e03..ff8f4ee32bee 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -173,31 +173,6 @@ Contact: Simona Vetter
 
 Level: Intermediate
 
-Get rid of dev->struct_mutex from GEM drivers
----------------------------------------------
-
-``dev->struct_mutex`` is the Big DRM Lock from legacy days and infested
-everything. Nowadays in modern drivers the only bit where it's mandatory is
-serializing GEM buffer object destruction. Which unfortunately means drivers
-have to keep track of that lock and either call ``unreference`` or
-``unreference_locked`` depending upon context.
-
-Core GEM doesn't have a need for ``struct_mutex`` any more since kernel 4.8,
-and there's a GEM object ``free`` callback for any drivers which are
-entirely ``struct_mutex`` free.
-
-For drivers that need ``struct_mutex`` it should be replaced with a driver-
-private lock. The tricky part is the BO free functions, since those can't
-reliably take that lock any more. Instead state needs to be protected with
-suitable subordinate locks or some cleanup work pushed to a worker thread. For
-performance-critical drivers it might also be better to go with a more
-fine-grained per-buffer object and per-context lockings scheme. Currently only
-the ``msm`` and `i915` drivers use ``struct_mutex``.
-
-Contact: Simona Vetter, respective driver maintainers
-
-Level: Advanced
-
 Move Buffer Object Locking to dma_resv_lock()
 ---------------------------------------------
 
-- 
2.50.1

