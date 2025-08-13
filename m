Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D70B24B20
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35CD910E72D;
	Wed, 13 Aug 2025 13:51:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="eLVdqLq3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 329A010E72E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 13:51:31 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id
 d2e1a72fcca58-76bc61152d8so5761911b3a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 06:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1755093091; x=1755697891;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3dThyWjbFAsz9j1SgyLPDQD4xfJC9BA0CDZ4xhkziqc=;
 b=eLVdqLq3t6mih5Emv76qfYSYgRVbjEfNhjMrMUlDhl/DICOlXd/3YHBX+DarFyPeOm
 +LpfIkKRB9IFWAEROh1WUdO6wLtp4sTzrHtgIktq86p/4O5qwh+q31Cv8q2OcdqAcfTp
 TocUKYIgFlJQUZW+O2FeM7zcxWtUdt6b9aPxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755093091; x=1755697891;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3dThyWjbFAsz9j1SgyLPDQD4xfJC9BA0CDZ4xhkziqc=;
 b=IonrmBcY8JNVway3tQBcwxs6QUA/qqohxlnoOCFWrMMn8aizvv+7KrPjLzCXAMtBW/
 u6YM6bOlLiQFCPBURfOeA97GlHmjHn9LwAmgza/T8xwREufYklC2384tuxU3tkFmvNZi
 zUppc8bqMt47VBaKJPnNQIU0vaNwwz/dVJYprX+FsmIF7CqlONefaarvPuCkMqGRyEyl
 4h9MMpA8eOe8eh5Ezi8roTIlXO7gImIYkr7F2goG6lcrSC91BG3KayiECfV61nSKRb5r
 UBdze/5IN3tjIcVD+EWcHe5AcUGuyGs52MQECLnaa56BWtHK+j9y7/BOz2zdFjprtPmi
 XZQw==
X-Gm-Message-State: AOJu0YwsTGKVXWKQhVTsrG/CvuYM0FcNkt53FRafhpxlFj4fwgX5msDZ
 JAHCOimoiDlKn5ldvqHKrzHkJvdk7NOH3t6If7rRprAl971eHmJiR4BRHwMsg4XONZ0=
X-Gm-Gg: ASbGncv9xZPesGUJfgZGy8FFQ64HaBL8UJKSyFATj/a2E5kJt4PA9cSjLwvYjWkNJtc
 Nursi89itVod00Gq6lH+UvYmKPCYStmU+V00Kix4+Zzi3yBOa0JZVWQFIsfX5eH3eIBqUfX2F9Z
 SUjNNER7V6F3a1JjdmaMnIwbMawQPg7Dvn1zt7z1VVtpBcRRUtd31xYAJFeNjamw8lXtpsQ+KMv
 uSsv+lNHSGICVISBVRhcHmxvCm+RJgWgOlvbfEYhkM4WnASUmdrcDXRdIqWVM2X2QqHvZUgUvbE
 b6gT1oGbPxBaZ+HHQTuRdur2NMRNJckeAr1WV7jiM1AYuquJ6W+klBODn5P7aIJjY3K0YLdX37G
 uypXWFNHOKHs7w/av2m7t6GHv95gayRZK
X-Google-Smtp-Source: AGHT+IE/6yfjN/hwM2zR+0wXw48MhVH7ZLUa//tRyJkV80i0bnvNakHyAHObuWkuu9V/3wPUM8P7SA==
X-Received: by 2002:a17:903:1a30:b0:23f:cd6e:8d0f with SMTP id
 d9443c01a7336-2430d0e87b4mr44770525ad.13.1755093090674; 
 Wed, 13 Aug 2025 06:51:30 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1709])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241e8aaf855sm326965955ad.168.2025.08.13.06.51.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Aug 2025 06:51:30 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 9/9 v3] drm/i915: Remove todo and comments about struct_mutex
Date: Wed, 13 Aug 2025 10:50:33 -0300
Message-ID: <20250813135035.144762-10-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
References: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
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

