Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 843623C1688
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBED6E933;
	Thu,  8 Jul 2021 15:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C7D6E92F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:49:16 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso6252006otu.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ou2icXI7tmSjselk/rijWxRYBQswiVZY6NDV6a58QgU=;
 b=BR1YkF+SAuWDuXH8Hc7IiMAFNALz9M0U13JDON/on/UAikJJ4kL54dYSDesUhnLtcA
 eNp5NTQZHUNIPGS12jENvmoCsiUTM5BIroqQULyC0xH95tnU3mS+4usqmdUNvSanr9va
 cYdDQJBKzR5kiLXotHwi2KHy/sGIcrBn6/y+M98MHcV2x97v41TgDJ2ML6nLIyHvZkFl
 4p0sqlEyE9/K6T0M7Y6ljYVV4RpuC9HFPxboZ8k8i6ubTwD4qXK/CXiyD/kkswuEBicu
 +90qGmWAXCPu1qAFykjK3Zil8GwxcS7yyFsgQ4luZDY5aG7dQ+mQDO3HVbGMB5bYYa40
 TBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ou2icXI7tmSjselk/rijWxRYBQswiVZY6NDV6a58QgU=;
 b=QX5IThDTIDyLX8m5fsi+l89smbI0DOrPq88cW1zibjd/Ka5QAITrlLoXc2vvBnsm/q
 ZMs/7qUt6uCIlSc/6kXRn6XNVefLjtaJwcZPc2IVWTC6UCYIaeuXp2SyIncpMm1io6No
 B0QhLjGlIvGXJN9uxW6NXOxaEjSki0yEhRaHbW4Xk4TqiTsS/imxURFamujClI/ebke+
 uH088Q0YZr/kZRhDG8M5kQthzEiNWzd4+na2naq39FSbM1SDyDRESH6FKvJvG2VjN/g2
 Awh829fHgP8PMZgbX/NX3M7d9PqeGI4fJzUgsV2HuGPP9e4vWcGWneOxTsgpRwkaPtYD
 K36w==
X-Gm-Message-State: AOAM530DtO26RD3Xms91OuWWJzn2E3i96eDx01EUijrMGYe9kwZgsanp
 lWMqYEtR9F+gfpnjVTYbcNNGjYht183IKw==
X-Google-Smtp-Source: ABdhPJz+9/MF3CD53OsHE+wNQmXg9rlriBFQMyqzRWd5Mj2+J0dIqN5TuVTh4s2LtTX9/q3GkK2mUw==
X-Received: by 2002:a05:6830:1101:: with SMTP id
 w1mr23899594otq.156.1625759354965; 
 Thu, 08 Jul 2021 08:49:14 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:49:14 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:35 -0500
Message-Id: <20210708154835.528166-31-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/30] drm/i915: Finalize contexts in
 GEM_CONTEXT_CREATE on version 13+
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
Cc: Carl Zhang <carl.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All the proto-context stuff for context creation exists to allow older
userspace drivers to set VMs and engine sets via SET_CONTEXT_PARAM.
Drivers need to update to use CONTEXT_CREATE_EXT_* for this going
forward.  Force the issue by blocking the old mechanism on any future
hardware generations.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Carl Zhang <carl.zhang@intel.com>
Cc: Michal Mrozek <michal.mrozek@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 39 ++++++++++++++++-----
 1 file changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c67e305f5bc74..7d6f52d8a8012 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1996,9 +1996,28 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 			goto err_pc;
 	}
 
-	ret = proto_context_register(ext_data.fpriv, ext_data.pc, &id);
-	if (ret < 0)
-		goto err_pc;
+	if (GRAPHICS_VER(i915) > 12) {
+		struct i915_gem_context *ctx;
+
+		/* Get ourselves a context ID */
+		ret = xa_alloc(&ext_data.fpriv->context_xa, &id, NULL,
+			       xa_limit_32b, GFP_KERNEL);
+		if (ret)
+			goto err_pc;
+
+		ctx = i915_gem_create_context(i915, ext_data.pc);
+		if (IS_ERR(ctx)) {
+			ret = PTR_ERR(ctx);
+			goto err_pc;
+		}
+
+		proto_context_close(ext_data.pc);
+		gem_context_register(ctx, ext_data.fpriv, id);
+	} else {
+		ret = proto_context_register(ext_data.fpriv, ext_data.pc, &id);
+		if (ret < 0)
+			goto err_pc;
+	}
 
 	args->ctx_id = id;
 	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
@@ -2181,15 +2200,17 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 	mutex_lock(&file_priv->proto_context_lock);
 	ctx = __context_lookup(file_priv, args->ctx_id);
 	if (!ctx) {
-		/* FIXME: We should consider disallowing SET_CONTEXT_PARAM
-		 * for most things on future platforms.  Clients should be
-		 * using CONTEXT_CREATE_EXT_PARAM instead.
-		 */
 		pc = xa_load(&file_priv->proto_context_xa, args->ctx_id);
-		if (pc)
+		if (pc) {
+			/* Contexts should be finalized inside
+			 * GEM_CONTEXT_CREATE starting with graphics
+			 * version 13.
+			 */
+			WARN_ON(GRAPHICS_VER(file_priv->dev_priv) > 12);
 			ret = set_proto_ctx_param(file_priv, pc, args);
-		else
+		} else {
 			ret = -ENOENT;
+		}
 	}
 	mutex_unlock(&file_priv->proto_context_lock);
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
