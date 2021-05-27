Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603613933EF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36EA6F47F;
	Thu, 27 May 2021 16:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F2986F467
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:35 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 mp9-20020a17090b1909b029015fd1e3ad5aso2689113pjb.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l7emU7YPiOIIBjsZBoqO5K5SQSJvYhl57EeV7evCNAk=;
 b=iAfzJIn2daAmhImpfo1zpNtR/SCV/SuuyuLs2TYsFmV8ipHkGPRl5rChGgcLvenp4j
 kgmSrbME0GqYUmnn32Qt8Iolkk6bXh8x0m2aAvyuRX7wPpOBlhCQoJT2Tx7UYH+Or9xy
 Mmr8NcjjxIG4f12VQ0zw8z8f4TtdCikCxqr0MpvVRPFQf4WB9RvHtrdDgIbP7IrOH+Np
 iR9bSWaCAmq3D8kWpXWP/Jrz2xHRDdNYZDaedvLqUcRUQMLl77SGGrHSAVNifnqANBHg
 Fx/zHD7y62H1rFmL7pSRCHxIH51+Axdg+A8IsCzoOEtFO76/G+FNdWtLedwlgD2H0DIj
 jO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l7emU7YPiOIIBjsZBoqO5K5SQSJvYhl57EeV7evCNAk=;
 b=EiynmFL3FRVNDOfIMcsR4YhjvOlhpF7vPno7RRzkbfKT6CD0h+kkZc854fW39xje0H
 Ow993zKHPXuMlHY0tbzRIIcCUWd0NJYxVjcsazxHTCnEO5AWP/IL29R9Izqk9gTv7OWm
 UbxeLQEpVLjZqoWlVSx4aUOHcP0h89/xB6h5pjFxLuHZLksm2t5dLvBdon8S0Y3U4Xd4
 ywR92Q/834v22FcWnz4AKV0rY+314NNUebQSq2hSvT5O5u9CexoqZ8iYTkesMb0HjjjR
 xNUx4rHcYImKduJfMF+HcrVGvDMRV8RXZGa1xpJTgYvswxWsiCPUynxgihB2Qktv1vf4
 sucA==
X-Gm-Message-State: AOAM533eMdvPEq+xAdaOHCE2HOQjT3lUBn+ury2hn4tGMSIuj6f3s7Ng
 Y6xeXJuPZ7Q+rhDWLgfG5XyiPixb31XMAg==
X-Google-Smtp-Source: ABdhPJwHXEfNBJwvCDtoLH9p1oNiADVhEjL5WeD+JVs2Pzr24m5m+h3+6rvVqOQSyQcfAK6xd57fBQ==
X-Received: by 2002:a17:90a:f98c:: with SMTP id
 cq12mr10298747pjb.235.1622132854561; 
 Thu, 27 May 2021 09:27:34 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:34 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:49 -0500
Message-Id: <20210527162650.1182544-29-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/29] i915/gem/selftests: Assign the VM at
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
index aee5642818824..01f7615eb3a8a 100644
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
