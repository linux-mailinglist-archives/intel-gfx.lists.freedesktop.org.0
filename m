Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF0A3F0722
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 16:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF086E915;
	Wed, 18 Aug 2021 14:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A59F6E912
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 14:52:24 +0000 (UTC)
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id CBA83412C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 14:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629298340;
 bh=C63KvaJ+cWhAEINSiaxTGMz7FLf9euvtefJ5UKJKvuw=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=aU/M0lDC3lnWmWPUa2sIxOGmfjLAmCGdzn+Vlb+3oTTNJ6w0y28PZer6Zhk5AiNO7
 i/VvFqLWkFnm94H9rDL3ufDFmmVgec3CZO5avjNGL+ZrqGyyqdHGTcciRN5r1MtMlj
 JR+T7BCG627JjzgjPg1MOVLVVX/jmDJuCDX0CFt9ZnpSwuUbrpnsmrxDIJM6YPVvIi
 77VkWbypUnmgTk92Cpt4gwFB10MeASo0EiA/94jHvy1pk1bIu4VTaDaw8SUlbFSEV3
 jHTO8KhS27s4qD8snT96XdUr2DX4GEURih5bm/6EZ7Dtvbq0daRLyLfXeuvPsfhl+L
 QoXsKRZVZerWA==
Received: by mail-pg1-f199.google.com with SMTP id
 t28-20020a63461c000000b00252078b83e4so1564135pga.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 07:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C63KvaJ+cWhAEINSiaxTGMz7FLf9euvtefJ5UKJKvuw=;
 b=Y7vI+p1d0Ao6QAOZULneDv9CvWo89jmfTgd7f4E2rxQqNzXMoyK1DQ7ltNtyyCqSjW
 8AfmhOa6ZqUfSVRfw5yCVgfucPgp/HNTluJC0l7nOUf1TJaGA2Wa/IoPuBJiAGdusvIb
 QdQE3/1yK9a0EghYzN2vEAAhGkfawWa95pPkTi5MqiDl0YtWHO00AWh2dSdjuWH48UWH
 Ku9sjg4zLHOUCUJ0YofgtsD+Z7tTjxMVM7VUNk9X+WpWX1XiyESoCxlf+v+px+cVwgpM
 Jq64y67OmNwY2svkqqaicDKchJZzly2VMsowYnTsr4/+8wt3ScBcTS2plb1b5A+c5YAH
 seXQ==
X-Gm-Message-State: AOAM530K82w+1EEnrlORrPgLJBrCu3/8aI9jbbfKx7ok/c+aZf6yPcp6
 hFaoSFoE/WLCCebYyi5q2hqETCa7nvmv++/5k6W9kXMbPhumebE2Zd1nMctkZ04360MzvsXALJp
 LxhXx7RtQNw1ZeD45XKWOQcNgqV5z5eMzjQF00bwscKbtOA==
X-Received: by 2002:a17:90a:f314:: with SMTP id
 ca20mr10053553pjb.210.1629298339358; 
 Wed, 18 Aug 2021 07:52:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIX0xUNdP8jrpWXr9FRIo/5CxYkCcC18au0WkZhrfprpv1h8lb2dEHNI4DzTUBH3RtKFQesg==
X-Received: by 2002:a17:90a:f314:: with SMTP id
 ca20mr10053525pjb.210.1629298339084; 
 Wed, 18 Aug 2021 07:52:19 -0700 (PDT)
Received: from localhost.localdomain ([69.163.84.166])
 by smtp.gmail.com with ESMTPSA id 73sm7331pfz.73.2021.08.18.07.52.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 07:52:18 -0700 (PDT)
From: Tim Gardner <tim.gardner@canonical.com>
To: linux-kernel@vger.kernel.org
Cc: tim.gardner@canonical.com, stable@vger.kernel.org,
 kernel-janitors@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
Date: Wed, 18 Aug 2021 08:51:59 -0600
Message-Id: <20210818145159.12402-1-tim.gardner@canonical.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Avoid NULL dereference in
 __i915_gem_object_lock()
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

Coverity warns of a possible NULL dereference:

Both dma_resv_lock_interruptible() and dma_resv_lock() can return -EDEADLK. Protect
against a NULL dereference by checking for NULL before saving the object pointer. This
is consistent with previous checks for ww==NULL.

Addresses-Coverity: ("Dereference after null check")

Cc: stable@vger.kernel.org
Fixes: 80f0b679d6f0683f23cf98a511af3e44dd509472 ("drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.")
Cc: kernel-janitors@vger.kernel.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
Signed-off-by: Tim Gardner <tim.gardner@canonical.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 48112b9d76df..3391ca4f662a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -187,7 +187,7 @@ static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
 	if (ret == -EALREADY)
 		ret = 0;
 
-	if (ret == -EDEADLK) {
+	if (ret == -EDEADLK && ww) {
 		i915_gem_object_get(obj);
 		ww->contended = obj;
 	}
-- 
2.33.0

