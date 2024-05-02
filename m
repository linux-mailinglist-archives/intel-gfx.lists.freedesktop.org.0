Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719298BA336
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 00:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBDE1126F5;
	Thu,  2 May 2024 22:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="kqtP212f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0C910F850
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 22:33:45 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id
 d9443c01a7336-1e834159f40so69524285ad.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2024 15:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1714689225; x=1715294025;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=syonTmYD8c0TYLT7ugjKF/sEjFnMsTQVi6C/fR41bxY=;
 b=kqtP212fnLiGQ26P/2lpLag7HOtmi9WRQEWlBZMclblGBK7DChnja/X5OuP9cUH3vf
 zgZ4NIFHxrS5bU99vFCJcoY6OcAlQsCCFf6FW1bC5bJ4FlEr2NEtvS47TyMGce2UKzzk
 tpaQnTqYi7CuhQQYWN33cA+uDBxbLq//rasA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714689225; x=1715294025;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=syonTmYD8c0TYLT7ugjKF/sEjFnMsTQVi6C/fR41bxY=;
 b=l5b/LRwolbbpdjsnusOoNCwpFQamQrzBVzoA9gNO8JfthTWt98hhZz+wH7xfLdEjx9
 n6AUhGO7mrOoZf1yqM5EwVerJAHshYh3EZtAVcNkxZYVDZCHUubIb5uW9mqC37TWLrpK
 yfNS7iQS/+Mrtt6+37aYnoKQMSK5U51YZPaZo+bM3/NgQZID5zu7xlqut1McMYixxZvZ
 8LtrA5agQKNTgtmKI7yOoSxbj3gy0jpMK4JaHtTjd7c5/37QtjaHIIfdW+LkEjuYE1kt
 m2qxt1eihJ+lzTAD//Sk/avhtJIabWBVCl5eQy7uJD6DFlCGtNNhsZJhVgdYLvYih5EW
 Y0Yg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2zZd6I33vqBONIXV2gskDyPv5xQHihAKirgP5UrKy01sZhplxPC0mVR4TwCXt0xdzUGhR6V9C6QjTAGzCDwYttEtAg5Vrom5btu1KNOI7
X-Gm-Message-State: AOJu0YyHgYMibuhWknLd4DI6eLCuXZ6wYfbqEfNjFeI2WuCVB11NVkKd
 x5qS2ikmvNszACAwUZY65pytFO8YhK68zdI67T23YF/9xjeAK0aH9Pql05rePA==
X-Google-Smtp-Source: AGHT+IEF0+ZDExdwzLRwfCmuME2rfDCoHX3a0jBuTtemcfZavKrmzhzYpowtSNcwJG7mXyaEXL+8xg==
X-Received: by 2002:a17:902:bb8d:b0:1e6:68d0:d6c1 with SMTP id
 m13-20020a170902bb8d00b001e668d0d6c1mr934693pls.40.1714689225425; 
 Thu, 02 May 2024 15:33:45 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 y2-20020a17090264c200b001eb2eac7012sm1885713pli.138.2024.05.02.15.33.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 May 2024 15:33:42 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Christian Brauner <brauner@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Andi Shyti <andi.shyti@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Al Viro <viro@zeniv.linux.org.uk>, Jan Kara <jack@suse.cz>,
 Zack Rusin <zack.rusin@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: [PATCH 3/5] drm/i915: Do not directly manipulate file->f_count
Date: Thu,  2 May 2024 15:33:38 -0700
Message-Id: <20240502223341.1835070-3-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240502222252.work.690-kees@kernel.org>
References: <20240502222252.work.690-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1418; i=keescook@chromium.org; 
 h=from:subject;
 bh=P8oJtedy3HXH20Pj7T8DcdEaOEqGIej1pz81IGBrmfY=; 
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBmNBTDTJYtS4zv8xaeAG0nbcBc+V98YhNpyJSpC
 aI+gh9aiHmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZjQUwwAKCRCJcvTf3G3A
 Jj8cD/oDPHTNltydyOxjPKQZBsKvSQLMCwHO4DniBHjFHb53bO32xnSinmbDfMMW6W+37gvrw8+
 HE6zUQkGh6uuZsI+sQEoqKgttjLhXt9oHFUm4OxoD0XufetWCTKTscDgXMU1JnsNj8DboYt4rpJ
 YmSi0hs6QUUf5hOHAUXAKfGs5W7DLp6tpj4rGdmFqMXpkgD3QrChXAj6i8RDdUrhyk9B2pBuY+4
 sLgAOFTS0sj9z31xdOO8K3DRa/huLmrWWbAxb8bM8wIR0JFY0lbyIDpDRceiptDZaIJ6SDuE+tn
 8hO23F2XRQBqC2khO22JbW5VDa0wCLX1gHTzNFPXb1tP/0vGKwSn9hsEgK1Cs4O8uH/j+XXx3Fu
 ERZsO42/LUneZufeL5Yn/IXSKnnFBz50uY0DLgUUDbyVaGRt5r41lZ6VS+ICzQdfv0Np/iFVmVj
 4QbPjG3GeAvApJNmze6/hNVFC53hBO3XzEb5rZp6CQ0esedaZROBpIP6JhlqTAT/UsP6lYFZCjN
 mf5dE8DHcNPFgiFNkrVlemIs+i2cWQzPwKMzqlMsJhnW3wYbbkhwnRCZcWpBFOiCxbnTuQiPXd0
 MQTHMYZNA3iJPXlf8SU5ArabrMEfY+TNTBgUTOjKDUiIcn8B6Ykj8rc7hA4qkFA9Q3afzMjfC7m
 Uvjb+C8zzpXuOpg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
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

The correct helper for taking an f_count reference is get_file(). Use it
and check results.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index bccc3a1200bc..dc25e6dc884b 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -38,8 +38,9 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 	void *ptr;
 
 	if (i915_gem_object_is_shmem(obj)) {
-		file = obj->base.filp;
-		atomic_long_inc(&file->f_count);
+		file = get_file(obj->base.filp);
+		if (!file)
+			return ERR_PTR(-ESRCH);
 		return file;
 	}
 
-- 
2.34.1

