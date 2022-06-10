Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCCA546653
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 14:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E61D10EEEA;
	Fri, 10 Jun 2022 12:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF0910ED7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 12:12:10 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id a29so14007162lfk.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 05:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pS2ld4gDxW5ixgcryyaX0ZX1VmMQk9uuoSuteSPW/FM=;
 b=Nm5GXzG4mNzXLB+TZpkFUszHf0plsABbToUUtJRzoW0lUnKuUX7lAStjMAuYz7IF3p
 r6EMVcOiOtlWOQHlMOhAI5coBIgOPoAWaU3p39G19X4DCG0HBVNOMSYuxZ053KQ/1dZn
 tmdaK0CzXw1+YZP+75w6SmXvtqBCaL7hGZWz+Za6ltGwlxMyjOWDfwfpGA6aVS1Cud1u
 5xHbNq2/ZJL+rqMSwRMT9Cy1LQ4Cmuq91A1M2MmIXCvq84lqE3wZphoeA8kCRNCpsxqd
 q9aXBo7vAXhg+tKddTph/g6SzUNZObHT0TP7Kq53Mr+31gA6lPLlLcZZuF4ktIx3nAuA
 abrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pS2ld4gDxW5ixgcryyaX0ZX1VmMQk9uuoSuteSPW/FM=;
 b=5+g/BFrLkKHvGP8uIJSVTdyAStVtd2c6eMH11+u65ylL1LBORR/5L34l8xHRCEVTq+
 qYEZteAHIlj0TgqKuCyfnKvWNOGiQCkFXM77JfK+twJcx6EsblS33SOYwB5Bobe/LSPi
 5kQk6sqfHH6C24iDZJNJqgo8fUn83g+e5U1q0jiHBO+xsLZiqQj5PORI4OK9zOXFnbKN
 PrluFzf6RgibEtyYKO0GxEB6yL1tvjN/DkguVR+9F6g4kJP2Gbht1REP21RqbRsIDw9T
 xRHDMlwQPbFaj7YMrRl48ukia8Gl3PNhJchgSUk4z4YREEYHgbVBVrDLTqLrQZR9oKj5
 O+Hw==
X-Gm-Message-State: AOAM533ZcvwP0zxorJwwIu4P6oGJ/9xN+RafPgt9CcYj4awp6uVdLiIs
 jsUWHnOITYMisICSy9d95VWmbr0LKEyNhA==
X-Google-Smtp-Source: ABdhPJxYH+DOFhuqVNzzD4PFbNiraW+S8oFP7yUJUaNvToWoqUSRxGPYxa5h/Vyp+k3dmGTbQInOGQ==
X-Received: by 2002:a19:dc57:0:b0:479:5300:4e0e with SMTP id
 f23-20020a19dc57000000b0047953004e0emr14639109lfj.236.1654863128002; 
 Fri, 10 Jun 2022 05:12:08 -0700 (PDT)
Received: from localhost.localdomain (d547nd2hqr-rv74hs34-4.rev.dnainternet.fi.
 [2001:14bb:ce:36b1:d8cd:77dd:1de0:cfbe])
 by smtp.gmail.com with ESMTPSA id
 p4-20020a056512312400b0047255d211f7sm4673185lfd.294.2022.06.10.05.12.06
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jun 2022 05:12:07 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 15:12:03 +0300
Message-Id: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: Add smem fallback
 allocation for dpt
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

Add fallback smem allocation for dpt if stolen memory
allocation failed.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index fb0e7e79e0cd..ac587647e1f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -4,6 +4,7 @@
  */
 
 #include "gem/i915_gem_domain.h"
+#include "gem/i915_gem_internal.h"
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
@@ -127,8 +128,12 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 	struct i915_vma *vma;
 	void __iomem *iomem;
 	struct i915_gem_ww_ctx ww;
+	u64 pin_flags = 0;
 	int err;
 
+	if (i915_gem_object_is_stolen(dpt->obj))
+		pin_flags |= PIN_MAPPABLE;
+
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	atomic_inc(&i915->gpu_error.pending_fb_pin);
 
@@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 			continue;
 
 		vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
-						  HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
+						  pin_flags);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			continue;
@@ -248,10 +253,13 @@ intel_dpt_create(struct intel_framebuffer *fb)
 
 	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
 
-	if (HAS_LMEM(i915))
-		dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
-	else
+	dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
 		dpt_obj = i915_gem_object_create_stolen(i915, size);
+	if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
+		drm_dbg_kms(&i915->drm, "Allocating dpt from smem\n");
+		dpt_obj = i915_gem_object_create_internal(i915, size);
+	}
 	if (IS_ERR(dpt_obj))
 		return ERR_CAST(dpt_obj);
 
-- 
2.25.1

