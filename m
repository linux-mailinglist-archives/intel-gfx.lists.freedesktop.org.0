Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C296867866
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 15:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E3810F222;
	Mon, 26 Feb 2024 14:28:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gOLRtS0E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7B610F222
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 14:28:03 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-5643eccad0bso4876600a12.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 06:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708957681; x=1709562481; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=2xOWJPhFBYXH+ELW+yf8lQnNXpdgEaJxYxPiwTy7BHg=;
 b=gOLRtS0EYYt3mk2otGoWHQ18vlL1NFAgS1eLSW/JyLxkwuB1b2UK/mUrzFtgNp322T
 W95HDlDD1hoCDZ9ifMh37TseyKrVwIUUxlMeNeLQeXOEWI49ALuV6RACS1k/7Bw7QyVm
 l1IhQl/WLm2zM1reLhx5Mcg0Kq8dhx+ybpGBD4Gzmc6ZEyUgs72eqCG4GYDmZ4ArsETW
 x9t+te5Y3NJeYDbf397fV/wW+yY1WsHFKDqROe6NbQMkJLFGGHtzuRz+zNnUbXADYWRB
 p0tNNNtfyzK1gVbK/7xdzVyNuNImLfOyeRM1mfi0UCJhIru9mDAuqc176duN2GNZVu2a
 LBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708957681; x=1709562481;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2xOWJPhFBYXH+ELW+yf8lQnNXpdgEaJxYxPiwTy7BHg=;
 b=nLaG5RHXpJCbIBin+ZzX63PbpEu9W5FG7tqh9c01Wm1oa9nUSwgngQcEdULU8w/Pba
 DFSr9st/F6+IlQK9aOkOcouImppz33qjjU24bgMCpjL9wRKIV5A8kgkMag+XbukkXtgc
 Y7h+fzR6nn0bYFkjrB+i+9QEFsWv2G2Enrryrr+OQPVXvFP4vFAS/Kn3YwhcrJHFuwY6
 QPuWO3CWlxGzGXJ2MsoYsPc9uaV7YqgP0h3ee6ZvBq5BLvJ2WYJ1IAOEyxpk1GCd1BCv
 QougiKQZmXBfdzMIJh05HzNjPcqNrcDSimUao6k8pjw5IuMNcfzJFKcPg9yhhoqm3Zc7
 3Jsw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOASCLVa7M1pz2OCPae0ZdN6u/NjWuJjuCzr5bUqieaUWgtV6AcGicixwdQ21XG5KgWqO2MVUMiDLYGbn8w1TsbDMbbS4f/CLlya3d1QRO
X-Gm-Message-State: AOJu0Yy6cK8by7829v4FxSOGr1TuTpKyURa7de2Ic8D/yQUo+i61rRMh
 BDyP8HOcs+9DFkPbTfq1/64cACEzJyPYo9NAN1Q5ATTkjibNry3j
X-Google-Smtp-Source: AGHT+IF1orXhwHqWwXxWJifnmGxL7cdRvvPbo/y9ac2BI/aujBiQmUPdYjMG1bQ+gUDdgA6quBHkzw==
X-Received: by 2002:a17:906:5a8f:b0:a43:24cd:7201 with SMTP id
 l15-20020a1709065a8f00b00a4324cd7201mr2838118ejq.63.1708957681331; 
 Mon, 26 Feb 2024 06:28:01 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1597:8900:4157:a5f7:3108:a67b])
 by smtp.gmail.com with ESMTPSA id
 h4-20020a1709062dc400b00a3f355aeb0bsm2482691eji.131.2024.02.26.06.28.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Feb 2024 06:28:00 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sfr@canb.auug.org.au, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: fix applying placement flag
Date: Mon, 26 Feb 2024 15:27:59 +0100
Message-Id: <20240226142759.93130-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
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

Switching from a separate list to flags introduced a bug here.

We were accidentially ORing the flag before initailizing the placement
and not after. So this code didn't do nothing except producing a
warning.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Fixes: a78a8da51b36 ("drm/ttm: replace busy placement with flags v6")
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index a6b0aaf30cbe..7264fb08eee8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -162,10 +162,10 @@ i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
 	unsigned int flags = obj->flags;
 	unsigned int i;
 
-	places[0].flags |= TTM_PL_FLAG_DESIRED;
 	i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
 				   obj->mm.region, &places[0], obj->bo_offset,
 				   obj->base.size, flags);
+	places[0].flags |= TTM_PL_FLAG_DESIRED;
 
 	/* Cache this on object? */
 	for (i = 0; i < num_allowed; ++i) {
-- 
2.34.1

