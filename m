Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DB03933F2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9B96F485;
	Thu, 27 May 2021 16:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619836F44F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:20 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id y202so977870pfc.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jWlDW8BQGVys2enmS0GzVoJMLqd9hRdYFWb1bS6tUIk=;
 b=N2Etsad6jvLzqYHLwd63KJRir2nfm078QNNoF90H7KriLpdQCaP5fFdGK9TZ2DJoF9
 bH06lqecnzEa4pCAND+9p/vrzFVJ0OucirMvfTpNSG9/GJ0Uv2LmVo7FOlbXKUP4vD+M
 zeCz4j+sdpowBCVIvUq235hT7gqmBHzNbFZK8NnMf8cW0SXHQ9RlB0n1mLe/l2dmQEok
 zraLQrTyTHA5417MXnyKyn7lYUdLq++NGcTknGkFyPWZ5SofCyn4fjYxKzJ8xwpkZ6Nw
 qamn/KeqReXbuuLo2GU/UrUdIaFGHnEZBalbn4TKNmcpQ9MQxrV+oHRUp4sn3k7/zzwU
 6QYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jWlDW8BQGVys2enmS0GzVoJMLqd9hRdYFWb1bS6tUIk=;
 b=UElp8Uo8WKWm+OcaDNs8hs1dEeZMI75P0aLpSxAgJxnUN1CWiHNUWEICZ2Qn11kXzo
 ONGYfoQiyKG9JftV4X0xLsqQjIhVpdo20ykWAx7iy/f3fmQFmoDbpoT0wWDLqf5I8p/q
 NjMIwMeumx77PfVUPKdIkli6LrGu2XQUxaJ9f/tC8nvcQpN9XABJ8pHL9iCLz1axIeDd
 1s0yd1jCSjjMAaKUUyFAJYgT8f8Z7h1/ZrvD0DnlTOU6EUQxLVEHB9ytLHJeUoqWQ+xY
 3FwNkgu1US0QuDad1NeB9EBAbykxJ58EqrKfIgyQX9OCpD5LtFItPBctrXFQOAb2gT8D
 niRw==
X-Gm-Message-State: AOAM530MKYqKKVwg06twCakP5D56u5/kg/lEe0c4Vw5BHxv2ISvv/d5p
 +clVaJbaXpW222SR5pGNd1GrZ9gQ6KcVzg==
X-Google-Smtp-Source: ABdhPJzOl3zysItfThBR9Cen+KNLSEaWBvpUjCLyzGUXl097JJ4jdSyIbA7JK/vzPY3xNpsjRgqFlw==
X-Received: by 2002:a63:224d:: with SMTP id t13mr4426481pgm.283.1622132839531; 
 Thu, 27 May 2021 09:27:19 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:19 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:38 -0500
Message-Id: <20210527162650.1182544-18-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/29] drm/i915/gem: Rework error handling in
 default_engines
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since free_engines works for partially constructed engine sets, we can
use the usual goto pattern.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 10bff488444b6..f8f3f514b4265 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -420,7 +420,7 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 {
 	const struct intel_gt *gt = &ctx->i915->gt;
 	struct intel_engine_cs *engine;
-	struct i915_gem_engines *e;
+	struct i915_gem_engines *e, *err;
 	enum intel_engine_id id;
 
 	e = alloc_engines(I915_NUM_ENGINES);
@@ -438,18 +438,21 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 
 		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
-			__free_engines(e, e->num_engines + 1);
-			return ERR_CAST(ce);
+			err = ERR_CAST(ce);
+			goto free_engines;
 		}
 
 		intel_context_set_gem(ce, ctx);
 
 		e->engines[engine->legacy_idx] = ce;
-		e->num_engines = max(e->num_engines, engine->legacy_idx);
+		e->num_engines = max(e->num_engines, engine->legacy_idx + 1);
 	}
-	e->num_engines++;
 
 	return e;
+
+free_engines:
+	free_engines(e);
+	return err;
 }
 
 void i915_gem_context_release(struct kref *ref)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
