Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD60B48D2B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E7310E4F3;
	Mon,  8 Sep 2025 12:16:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="JXwWERrY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB28410E4F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:16:20 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id
 d2e1a72fcca58-7722c8d2694so3669450b3a.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Sep 2025 05:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1757333780; x=1757938580;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3dThyWjbFAsz9j1SgyLPDQD4xfJC9BA0CDZ4xhkziqc=;
 b=JXwWERrY0xSr1cm5Z8iX7AQvDSGEyxxqo/21lMZphoJUvX/aKiJOrTWPac4UdA09aj
 CRjTvEJZ64wDVfvuAV/kml8mOBmbNosvfaNoOyUtQFUsK5rIbMrf4F6WhPCgnQfHOEOF
 O9N5uspM6qbnU9WjNjPbB2+FNzQJpt6yDuOXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757333780; x=1757938580;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3dThyWjbFAsz9j1SgyLPDQD4xfJC9BA0CDZ4xhkziqc=;
 b=U18AO43aX/9bXD+mIgbXRLXfGxLNemhMCudc6XKgDvZLuHBTfOdFJ7DtoEK1G2fLQ2
 HUavOs2KlgjiBhmsHNhXTx+LqF3b/J0Q4wdPxir/3CWBuNnlnJjgww0ZPdnuBrEjt8he
 OwcjtGjCquTzzlsk0oXJs5GhKW2chszPzi9SWfj/WCtHEkjN3u2qydDS9fc6vZIKKIkU
 TXhnE3m4z8irZkdvBJveHxjiKwLUBK6WfbHauKH+34/vtsEbEO4EwOsnM4aq9JIxzjk6
 KPdguZkVoqS++yCbdT8FwDA1taYNwWQmN+rKqDburKEMk6SiVVIyoy4SdS+0b1+1Mhti
 QztQ==
X-Gm-Message-State: AOJu0YwTsBf1w7NLwOWMUdNwBFUqqqutCMU/lJ0p7vP4ZFREhO85QwpI
 4gICE9QaclttrYTrIfRCz3Y0Lb89Zbf4rUZcUjzTdGC3VnvAZWI0NxH2vD04W2EmVHU=
X-Gm-Gg: ASbGncu5feousyL5DV92vhHn8xSlcxie5BywJAAfN7+VFaVnXPYGpbXG07JjRYI8Zwg
 WbKFW9C7N6edAKGniY22Yy2pPw41eDDW7Oc4ZrphVZKIEhTouphY/zFN3oPWePbhpZ/XNunbXuj
 P2Fqys8tkTackIt7SD61kzSnKgoxQ0o3VEZ8E1T8f4K1bign9qBvuK0123O24yr3NcZvxriX2P/
 HtVmSDh/kG+7zKZnsZKQngUTkNWHrv0Nz8GrfsKZCLvWaUh5gFNSfOvOTJ3YSRXrb70dWvLaq8e
 rkjoeTOj6Y/aLUICEye7bWF7QIHF+XO7/2eMokjvBDfjKWb8E00veOeZL+Vc4u1XUV49h4wvj1J
 AbCnDJFtv2Of4KQN639fhPLb9HyJDcklR7TKwM4SVCOM=
X-Google-Smtp-Source: AGHT+IFx2lgoEhexSHKjV2ITkkprtdgb9CNXfr9aFy2Om5ILkrmex6QELuJSDwFf+bXGl0m57HjCXA==
X-Received: by 2002:a05:6a20:491e:b0:254:c182:3efd with SMTP id
 adf61e73a8af0-254c182443amr7479495637.21.1757333780298; 
 Mon, 08 Sep 2025 05:16:20 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:943d::1709])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-772306a1870sm28345188b3a.75.2025.09.08.05.16.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Sep 2025 05:16:19 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 9/9 v4] drm/i915: Remove todo and comments about struct_mutex
Date: Mon,  8 Sep 2025 09:15:17 -0400
Message-ID: <20250908131518.36625-10-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
References: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
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
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 Documentation/gpu/i915.rst |  7 -------
 Documentation/gpu/todo.rst | 25 -------------------------
 2 files changed, 32 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 72932fa31b8d..eba09c3ddce4 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -358,8 +358,6 @@ Locking Guidelines
 #. All locking rules and interface contracts with cross-driver interfaces
    (dma-buf, dma_fence) need to be followed.
 
-#. No struct_mutex anywhere in the code
-
 #. dma_resv will be the outermost lock (when needed) and ww_acquire_ctx
    is to be hoisted at highest level and passed down within i915_gem_ctx
    in the call chain
@@ -367,11 +365,6 @@ Locking Guidelines
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
index 92db80793bba..b5f58b4274b1 100644
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

