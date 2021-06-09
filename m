Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7633D3A1C49
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2FE6EA47;
	Wed,  9 Jun 2021 17:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCD46EB20
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:45:15 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id h12so1611545plf.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ou2icXI7tmSjselk/rijWxRYBQswiVZY6NDV6a58QgU=;
 b=qOF+yv38JTGKTKj6/e8wUWAIrYVGhaWPDgHpKVTBi3pDyTuv8bsKEXgpvHJprSi/yJ
 EfQsXflTHnyhqLdXcypVZ+87CHB/bH2xKLVuumuF/oo6HXNMCsSXKIRhwN/pSbKztmFB
 620QdiLUrR2EFnGeoqGM+AIdW+kwOyxJr1f6c/wndYj+h9nn8bbnD2jocweb5mlEEqr8
 2oJUoOB0Em7wzT7AlVJtlVblAR+2I+XcgfllCDkfIaKuKaPahsR7h3napN19mznihSjl
 ndv9l0bdh61CmQgGfD91OnPw678pqq1GWbHFzZ2OFf0AOI5Y9TVppdwp//yi/Hj7DsME
 9G4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ou2icXI7tmSjselk/rijWxRYBQswiVZY6NDV6a58QgU=;
 b=HVL2RYQwyMLGJk/N+jwkYRV7LJc3Z7daurpP/C4P0HY8ma07n2vc9sZiPoyYl1aJ4l
 z9Xwt2q8l23nKj8ydmOdQ/54AhqZRJyUNiTp21IIZ2Yi/2vlWVAd4ZybTMZTvDR75V1l
 LTjvuCia5dmx7ZdftaV+tikexcdiRAM8JEJrNCJMnwrx2DYDl/mnIAch6ykqOso+sCwj
 Kfs7bFqXTueHCqf1n4C1DxrazJsynVg8C/IkVqPUptjJfFy1ssi55qZtU/kV7185d8eo
 tSfWM+c9lA9Lcah6g390y5hNzXfmfDoEGeMdcyJ26rklYFwFw9TgDOAPYKmuCmsH8d+Z
 btUA==
X-Gm-Message-State: AOAM531qXo88JNrLmnRL+ayCYuXXgW8IanF/N/MQDOzB6C+iLnryWt8r
 x/KsTV9nqLGxiylukCACUfKT6w==
X-Google-Smtp-Source: ABdhPJxuAZYK93cxvwgZx5OyR6hS1BKJ3/qHTb5cZ1cZcClbJM4qceiE7CwCEuLu0gvOGBcOnLWwVQ==
X-Received: by 2002:a17:90b:4a82:: with SMTP id
 lp2mr11817158pjb.190.1623260714658; 
 Wed, 09 Jun 2021 10:45:14 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.45.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:45:14 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:44:17 -0500
Message-Id: <20210609174418.249585-31-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/31] drm/i915: Finalize contexts in
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
