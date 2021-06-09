Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E28A63A0B91
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024826ECC5;
	Wed,  9 Jun 2021 04:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC4B6ECDF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:37:09 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 m13-20020a17090b068db02901656cc93a75so643971pjz.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6vd4HrjqLsgBU80FzHWd/G9MkReVAnbCbdgJ5zbQrXI=;
 b=vWNhcZPCd5EnmAufP3CGAdJmDfQ8zsi3+1EfPxpF6AjwyvKFFlNr95BQjKa8oD1m7d
 WcCh4cOx/3R7p/cRUvqJMPVqip8xBajODo11CJGXM8+WK/fyAO+Uy4YE7jHqzDrYjOqt
 bYnK/ffHGQhQ22zBOAxrSJcd3gqpEb+o4iNx/gvFIgOe3aZ8+QARr+BRYPxCBAbq+Ti9
 x1yxcnONi9INai5dodFcKPEzl2YuyZytZE5Nol4cFohememr+d2XPB1VLREhLEGzpsxt
 1T0iB4iduo9LyAbJX17tipYnRm0JLZGuZKbZ4PABtaBP7kV81Fsm1fzVjca99dg7Id7Z
 lDJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6vd4HrjqLsgBU80FzHWd/G9MkReVAnbCbdgJ5zbQrXI=;
 b=TCzSg5a3uwWKD2dIprsed5if14gd6i72Qm5Lz1CpxcF/izU/eM93IOCjQujK8TQcFb
 nrGaqrXJGGw/K4MUF1m4Y4gTbqpLYA6TS1ZByMiLEFEKw9Bj048G4gt1xJz7sxfzTc3E
 XyXi7snvmM8bvWMNW4IPL35puDfO7HJEtN0scNtfVtpdlLWzC6czm64qt9ExSQJ0TKqn
 IR4qrtfLODORV+bVHTVQQ2ZHMTDN7qLO7nr0k+roAOpsLt8KPmp1c39OmfnaMCEHMFLl
 RvrSHvPz8ObnVEDqNbHhsJofBE7Ce+U/Ys3Idl3jIbOLMdjkz5I+wXzcxC2dGOFXgjBm
 HHFA==
X-Gm-Message-State: AOAM531X2WKAALtLWRS47WGfspMfMC1BrBB+Jxe3DnU2PrhNChEj/TEb
 8RlEjbF18ZotffPFU5/frzsO4Q==
X-Google-Smtp-Source: ABdhPJyzWcSG5xL8aoVs1wWr+2OHRxS4wzy8F7S+O3E4C5RR74tUf9zsBM4cLlQPIBtVVoOPwVOeTQ==
X-Received: by 2002:a17:902:b497:b029:115:e287:7b55 with SMTP id
 y23-20020a170902b497b0290115e2877b55mr577650plr.79.1623213428633; 
 Tue, 08 Jun 2021 21:37:08 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.37.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:37:08 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:36:10 -0500
Message-Id: <20210609043613.102962-29-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/31] i915/gem/selftests: Assign the VM at
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to delete __assign_ppgtt and, generally, stop setting the VM
after context creation.  This is the one place I could find in the
selftests where we set a VM after the fact.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 3e59746afdc82..8eb5050f8cb3e 100644
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
