Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C31B1DC40
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1FED10E8A8;
	Thu,  7 Aug 2025 17:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="QkzpDTBl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD8310E8A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 17:03:43 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-2402bbb4bf3so15128075ad.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Aug 2025 10:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754586223; x=1755191023;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zVXRCsVzbfu06qdJtGyvjBgsZI7BsBP5cj5zz9Jcysc=;
 b=QkzpDTBllOIDZJPSBpFGnYRXhlyihCNmCGuEZFocYJCH6nXCUUdl5hAoDnNjlZPZ2Z
 WQuTn4ICZcd4i1MwfWB8RKbWlcO+K5a/i3gMZz+IMsih3zS+3fNd/Qa6q5CcAKvP17nI
 K2tDzwZoz8gdLZ2qeT+4ERYQlORqlHXBvzqME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754586223; x=1755191023;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zVXRCsVzbfu06qdJtGyvjBgsZI7BsBP5cj5zz9Jcysc=;
 b=pEUCH/3rCeqCGkiJuYkxgkXe+bxjRTaBML3mnPKdeATE1qG1iMuAWO8Tkg1Ep0lo4t
 nXjzx08uRTpLXpjb+wRDLYJY40YRXkhu9KeT6Iejeryn+cO7xU/m47vrqCaBKKevYHU+
 zYoGmNB3uw9LjZ0HS1L2dHjooR0J1GBjXPZ79f24I6KWSYhJw3utUkTRXHT8vLvClgXr
 xcwKbZVUwgxRFOFYcz4qwx9iPAJRek5tx7GVtc3iJoGQIXcpxrrw4lsr42OnUKO0Doe+
 L80THc8twj33p0gTUWkvatG7OkD7ZUKe7j911xPL50gZz7AnMxWlVbPGGC2xu+mxwmh3
 qnOQ==
X-Gm-Message-State: AOJu0YzuhTd7dbjKPj27QmIt3h61Dehv+BgLhjY77zB36mToOrFigUK/
 g6it5D+39/MLXKNvovozj1fGyS/4jzsKWIn+d7bpCgLH13C8pqb+j+qMufa0s7IRNgKmRCYhFvQ
 ZkkOZLWsZ0w==
X-Gm-Gg: ASbGncuWa7IwdRNYHJdwFWCMusEyAuUFPkbPKC2CWA9PYhf3HNu5E7ps1E5aoI5qvR8
 lP8wm1SSyicgd544Q/TiUIsqj5FFF5bTExvc0hmAbQtIZ9iWTA1/6p2MLCRrJdGPVcnLrh8eJiA
 MFKVHtCb5OMZjyu7hTD8EB2c0BTkJ9UkmPlfqqqJ+eSvN7D6oWT66syU0ykqbidHGmJtjF86+TK
 G7cnOaLu6g6/J/02Z6ZavQ6DJGYtUABhwz9mKEEI60kSKxvGKZJ+P6ZjYz64abNLpJzQ8Yq0JIX
 391SoWrIa6IGzB7fkQ6Dww9SiyMzC9aw2q497b4874I8o7EnXCB6ip5jS1loHFmJAzkZ8YL4E/m
 I6uS+TezrFGOcSrIkLW9CBeS4iRNZGtpF
X-Google-Smtp-Source: AGHT+IH5zMw9FtUZNHbQt4QV3x7RKG4zHf10hWAJM8XxurTOLvK3Ori8OyaYlk0QwXLbZHyQGWCvUw==
X-Received: by 2002:a17:903:4b43:b0:235:cb94:1399 with SMTP id
 d9443c01a7336-242a0a9114amr99567465ad.6.1754586222770; 
 Thu, 07 Aug 2025 10:03:42 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241d1ef7c30sm188804875ad.37.2025.08.07.10.03.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 10:03:42 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 7/9 v2] drm/i915: Clean-up outdated struct_mutex comments
Date: Thu,  7 Aug 2025 14:02:06 -0300
Message-ID: <20250807170212.285385-8-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
References: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
MIME-Version: 1.0
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

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch updates various comments in the i915 codebase to
either remove or clarify references to struct_mutex, in order to
prevent future misunderstandings.

* i915_drv.h: Removed the statement that stolen_lock is the inner lock
  when overlaps with struct_mutex, since struct_mutex is no longer used
  in the driver.
* i915_gem.c: Removed parentheses suggesting usage of struct_mutex, which
  which is no longer used.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 +--
 drivers/gpu/drm/i915/i915_gem.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6093dbaf4009..e8cb94962482 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -114,8 +114,7 @@ struct i915_gem_mm {
 	struct intel_memory_region *stolen_region;
 	/** Memory allocator for GTT stolen memory */
 	struct drm_mm stolen;
-	/** Protects the usage of the GTT stolen memory allocator. This is
-	 * always the inner lock when overlapping with struct_mutex. */
+	/** Protects the usage of the GTT stolen memory allocator */
 	struct mutex stolen_lock;
 
 	/* Protects bound_list/unbound_list and #drm_i915_gem_object.mm.link */
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 8c8d43451f35..e14a0c3db999 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -847,8 +847,7 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	/*
 	 * Only called during RPM suspend. All users of the userfault_list
 	 * must be holding an RPM wakeref to ensure that this can not
-	 * run concurrently with themselves (and use the struct_mutex for
-	 * protection between themselves).
+	 * run concurrently with themselves.
 	 */
 
 	list_for_each_entry_safe(obj, on,
-- 
2.50.1

