Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCEF3718C7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 17:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3289A6E91D;
	Mon,  3 May 2021 15:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B4A6E912
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 15:58:39 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id h7so3071357plt.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 08:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dj8ATrkLDKFJ5d9l+0wwim1gFsFJ9J3GyHYy87xeWak=;
 b=F8TwtdGS6T61N65u4INUx7+XSTns761E7Hse3cjQO2cag0g+cxzieZVy3VTlvT5948
 GU9tIftvMLwujgJ1PtJQ46dfujcQQP2ty1LYsU+HxPQi1XfTusVJwtZl/T/68rztS5CJ
 sCKshP6QmkQpLXo2Rr8aTKce1tqqsYbKWN5k4tD/jJwl5DB6KFqz9+NgS3Sq4rjmiCvz
 ZO9eEh16LvhSwRtsvYjAko3IsQt7F4rsyd413aXmmXFmesOXspWH69gemnYLez5aNRtL
 80xhzBWoVndtTUpjLQOFZgSF9orNS35RFQNvZIbeVd9kRCB+pRtWQWfv1JNBSvX2bH1G
 lSkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dj8ATrkLDKFJ5d9l+0wwim1gFsFJ9J3GyHYy87xeWak=;
 b=n/73Z7JaD3bWDNKkh4N/wnLkiLv5J0abJdtd1SzVCrA/k2JQ+H0uPAPvg6bqkcV+m5
 gZ4yqG021hM16o1Tkwu5kOj+Xl0p2dPZtC4Q944RtMcwPxTcXehY27R16k7Y95xsB03l
 TB9ucguln7tMrcXuHPATY6i+V4pb41hEuhrE9wM7va0OGqxwMDzlgPEzd8Cc/dJRPlZo
 xJTjETPraULVszVGiWu2blQXXzXSYHJYoVVxIR25bn62/4oKMC43JOaUhEgJtzBvzrHG
 PKNrHCGEjBRBww3ohQg6huTabiOBSG4ciXILsWYC/TL/kGNDXw8qSJL23bm5GU9DWM5+
 mCnw==
X-Gm-Message-State: AOAM531JoilPyzjcfx+eFSkLp59Tnc2wYTMGhys9992GbMxWWfRkRKIr
 i0TxLr4yXjrKBqDIelIB0ABGGCrdTk2rwg==
X-Google-Smtp-Source: ABdhPJxSTk1yBUn/GhdZP+ibV1+JvUsTOSIIKW92Y60CSDiheiM4wUmKF6tDz5o24nvR59t/JszUTA==
X-Received: by 2002:a17:902:e353:b029:ed:866b:7624 with SMTP id
 p19-20020a170902e353b02900ed866b7624mr21581594plc.25.1620057518457; 
 Mon, 03 May 2021 08:58:38 -0700 (PDT)
Received: from omlet.com (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id gf21sm9783296pjb.20.2021.05.03.08.58.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 May 2021 08:58:37 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 May 2021 10:57:47 -0500
Message-Id: <20210503155748.1961781-27-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210503155748.1961781-1-jason@jlekstrand.net>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/27] i915/gem/selftests: Assign the VM at
 context creation in igt_shared_ctx_exec
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to delete __assign_ppgtt and, generally, stop setting the VM
after context creation.  This is the one place I could find in the
selftests where we set a VM after the fact.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 76029d7143f6c..76dd5cfe11b3c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -813,16 +813,12 @@ static int igt_shared_ctx_exec(void *arg)
 			struct i915_gem_context *ctx;
 			struct intel_context *ce;
 
-			ctx = kernel_context(i915, NULL);
+			ctx = kernel_context(i915, ctx_vm(parent));
 			if (IS_ERR(ctx)) {
 				err = PTR_ERR(ctx);
 				goto out_test;
 			}
 
-			mutex_lock(&ctx->mutex);
-			__assign_ppgtt(ctx, ctx_vm(parent));
-			mutex_unlock(&ctx->mutex);
-
 			ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
 			GEM_BUG_ON(IS_ERR(ce));
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
