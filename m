Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 256AD3D3E7A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E89A6F958;
	Fri, 23 Jul 2021 17:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB28B6F615
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:21:50 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 q17-20020a17090a2e11b02901757deaf2c8so4735541pjd.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 10:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/3tyMuyNGxl9/JTpfG9wy5STTDXP4zgpuVytW5Bf2RQ=;
 b=paZ9fjt78udp6pkqkCaHRQWcTNVSK7KfYBP1u+sw2pAzAX4Ibi0l6BLR0eitHqB66O
 /g1pNNyDXjOUlgxaruZ/ipWn4mFjElxOlvYl53xyRSwDS/Hm1dQ40UMCH6I8cK4mK5Wy
 LhMPa2Uh6wZZvT/qWgS2jQEQPrIUJsBMtkpGK0CZzrKmUNNLiVcnlyfO/NsZ0FXAPxUG
 5RBvDjwObOHNjIb9yNTvMQWHTVq8IRPCmDNtkQYc2s9iqZ6jID3usicI+EYYXlZ5Ohfd
 u3ajoKCtbZoFVaDqKXhdgnJrCY9A7xbZL+634jROwFgpOv5tsf9Fid8Ijv/hhD5Pfk/u
 6oGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/3tyMuyNGxl9/JTpfG9wy5STTDXP4zgpuVytW5Bf2RQ=;
 b=jYlSZfykLFmUARLG/rMWI5kWYHnfyVvmGhA6nfq+af/cyVpaCdFzfR3msdizhrKw55
 SzSmm2+8hFn9skPO/BMH/5oHKkKss2XwX2Zqb4e+JztpG43p+HtSUHVCiTSfvVRaegYt
 PQy7qXaJozkzyTwxhnJReRmNmKUv2ErJoI9aGtVKdCQT1e0HrEtpe5hfJTAM+Uvocaq6
 No8mpi/YM+S0PpCxfO8oYQatFNE8qWMtze91u5hhMe8HPDFz333rPfopZ8dw9i7/8dfX
 s7j79SdwUKAIzwX9iq+9RjCeBsLQQR1WUSwsunO1UDFodQLjWphxBE1AHGHL/thOozlw
 uZ/Q==
X-Gm-Message-State: AOAM5301me4llVVTLna07Fc4yTYnGj/kod7cSdIKuKLwi4849Ah/aXCX
 GjsYc0WKpytV6VduvzT19hzcNPBaYkoPIA==
X-Google-Smtp-Source: ABdhPJzG/LUIqvCw76OJUA6VYoNJBEs658Qu4BQxvnDN4f/xI1VDbpGzjkG4TLSa1xlqzWYzaPRxWg==
X-Received: by 2002:a63:3741:: with SMTP id g1mr5961405pgn.134.1627060910036; 
 Fri, 23 Jul 2021 10:21:50 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id s36sm24288648pgl.8.2021.07.23.10.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 10:21:49 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Jul 2021 12:21:37 -0500
Message-Id: <20210723172142.3273510-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210723172142.3273510-1-jason@jlekstrand.net>
References: <20210723172142.3273510-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/gem: Call
 i915_gem_flush_free_objects() in i915_gem_dumb_create()
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This doesn't really fix anything serious since the chances of a client
creating and destroying a mass of dumb BOs is pretty low.  However, it
is called by the other two create IOCTLs to garbage collect old objects.
Call it here too for consistency.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index aa687b10dcd45..adcce37c04b8d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -151,6 +151,8 @@ i915_gem_dumb_create(struct drm_file *file,
 	if (args->pitch < args->width)
 		return -EINVAL;
 
+	i915_gem_flush_free_objects(i915);
+
 	args->size = mul_u32_u32(args->pitch, args->height);
 
 	mem_type = INTEL_MEMORY_SYSTEM;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
