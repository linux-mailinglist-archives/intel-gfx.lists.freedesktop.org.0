Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3709743739D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 10:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF806E8FD;
	Fri, 22 Oct 2021 08:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C65F6E8FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 08:22:07 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 b189-20020a1c1bc6000000b0030da052dd4fso1786773wmb.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 01:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gXdqibzVXher+yn0TaEWhAcS+yma3hpFltnOTWJOHb4=;
 b=luxQVj+Y+au3KKD+pRom/5q8nAXuBjQOJPYvu3ax2A2Dv0J9vSwbWdjQfdqNJNY4dl
 rwu5+aVIUVfP2Y/4aTXu4j2Qbb5sBTUnmEoza4+BuscuKcQzZvjBUkfm8p1aPXZiKTKC
 X263jgbqXCX15TTPlHsFPbEYoOxhVopD3d3V8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gXdqibzVXher+yn0TaEWhAcS+yma3hpFltnOTWJOHb4=;
 b=iNJswXlVkC0p0SmQKzpUF+2XA40r8qqwM+1s1pk9QdXnjsL4sQB8bOSkT8UpHsA9L0
 t6LigMw8/Nb1qPkY6T30EXNW92HrBSZYZ5hG5iIWuntA0Uucxkb9iBJCKNlLHYXWkM4j
 GdpIKcKe73ZoORM19FlTS21Ua9s8qBJHIK6umHWIBr/WufAlvXXPZRQmejxgxVUru/E1
 Lz8qJ+TdQUvSCx2YGpGF4toIBcCmr4gd+qbadpTLPpIq5X1dCgSFlnOSAGHD02qvfY8q
 9slnm3pNxuaQd0TijnkqyU8aTlwl9sBHTjtP8jTJ+hHnE+qDHpd/zg4RW+Pk69E1z4Wg
 QHGg==
X-Gm-Message-State: AOAM530Ey8rdKHMxo+jDi9BMAWmpJqAgwKTUSjf6a30wYokq3n9U+ebT
 ZZp1p2t05xUXck3cx0rubsEY+24osToT4g==
X-Google-Smtp-Source: ABdhPJzvvCWQwKZ+gAugDFHt0eaCYsjdldultXdVLKGy6clofiFbbVIwlejncaVB+Oy+ynBOoQeRAQ==
X-Received: by 2002:a1c:1f0e:: with SMTP id f14mr12369556wmf.65.1634890926112; 
 Fri, 22 Oct 2021 01:22:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z2sm6988169wrh.44.2021.10.22.01.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Oct 2021 01:22:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Fri, 22 Oct 2021 10:22:00 +0200
Message-Id: <20211022082200.2684194-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i195: Remove some dead struct fwd decl from
 i915_drv.h
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

Gone with userptr rewrite by Maarten in ed29c2691188 ("drm/i915: Fix
userptr so we do not have to worry about obj->mm.lock, v7.")

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 12256218634f..2321f895cdea 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -191,8 +191,6 @@ struct i915_hotplug {
 	 I915_GEM_DOMAIN_VERTEX)
 
 struct drm_i915_private;
-struct i915_mm_struct;
-struct i915_mmu_object;
 
 struct drm_i915_file_private {
 	struct drm_i915_private *dev_priv;
-- 
2.33.0

