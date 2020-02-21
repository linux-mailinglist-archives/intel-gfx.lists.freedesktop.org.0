Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E94168881
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:03:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A976F514;
	Fri, 21 Feb 2020 21:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9280A6F513
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:30 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id m10so6026436wmc.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s9Dt4ZAHYBWy2uNMICh4RsHo7p4PctnYq6F5Xys1W4s=;
 b=OisuFAV5oDBmQKeBs0UymzgY5td1J8RHr3pQvLxZPvhJnjEa25O4P2jGhMG2IYrRL+
 qqhzgiJfmXLL3fdEueCsvcSP3jBQmnBoDVV1Yz5y4WJedmJBAAzz8/ZISg0m/0rOs93D
 GmsNiYIv8PriLG8PGMAYrligQpoh3/yXfRFaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s9Dt4ZAHYBWy2uNMICh4RsHo7p4PctnYq6F5Xys1W4s=;
 b=tKB610GmKSGA2JnK4hN8fnyny1GA6DkoTvhAk44zR4grVJToTDHDryOX54u0Tf39vi
 OdQ6DGRJdoE7iZT+dT57khxPT2C4F6ZpyYyp1sWMlKnI4Jw4oQXNqjyy8K5YT5aAtSG9
 +QvddDMCBln7jUIjbPcQGI0/Sx3rdKsKbT94xD61N1kL4kGDOHhgyYfsjDSs80AgAhOp
 3C/hG4y6phuhh/rtqm4fT6Eiejxhj+Tl3VRGd+g4+1hUnLVeEbwlcSwtlNDiHFLEBFlC
 kx82whUXF5YadvHiDJZc3LXHB/4vLtwdLAjYkfUGJkBMFIjDURWA2+C3oUnWK6s6kVBF
 kdqQ==
X-Gm-Message-State: APjAAAXll2GDHQBEpV0Ew5EEj6b9cBmaHIPYmCoUWVS/gwozq2NawGLy
 6bc8hKPtl2erE/hrX9VqiPC6hw==
X-Google-Smtp-Source: APXvYqzu33NHGHJEAZjKXzUtN7bRj7hzr3IZyM1qrp8yQSBh8JIdkgH8hUKTBDoienQiI/4TPDI/2A==
X-Received: by 2002:a1c:1984:: with SMTP id 126mr5904804wmz.78.1582319009321; 
 Fri, 21 Feb 2020 13:03:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:25 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:29 +0100
Message-Id: <20200221210319.2245170-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/51] mm/sl[uo]b: export
 __kmalloc_track(_node)_caller
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
Cc: linux-mm@kvack.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Pekka Enberg <penberg@kernel.org>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

slab does this already, and I want to use this in a memory allocation
tracker in drm for stuff that's tied to the lifetime of a drm_device,
not the underlying struct device. Kinda like devres, but for drm.

Acked-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
--
I plan to merge this through drm-misc-next (with Andrew's ack) once
the remainder of the drm series is in shape.
-Daniel
---
 mm/slob.c | 2 ++
 mm/slub.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/mm/slob.c b/mm/slob.c
index fa53e9f73893..ac2aecfbc7a8 100644
--- a/mm/slob.c
+++ b/mm/slob.c
@@ -524,6 +524,7 @@ void *__kmalloc_track_caller(size_t size, gfp_t gfp, unsigned long caller)
 {
 	return __do_kmalloc_node(size, gfp, NUMA_NO_NODE, caller);
 }
+EXPORT_SYMBOL(__kmalloc_track_caller);
 
 #ifdef CONFIG_NUMA
 void *__kmalloc_node_track_caller(size_t size, gfp_t gfp,
@@ -531,6 +532,7 @@ void *__kmalloc_node_track_caller(size_t size, gfp_t gfp,
 {
 	return __do_kmalloc_node(size, gfp, node, caller);
 }
+EXPORT_SYMBOL(__kmalloc_node_track_caller);
 #endif
 
 void kfree(const void *block)
diff --git a/mm/slub.c b/mm/slub.c
index be2854b5b1c9..7271fb235ed8 100644
--- a/mm/slub.c
+++ b/mm/slub.c
@@ -4358,6 +4358,7 @@ void *__kmalloc_track_caller(size_t size, gfp_t gfpflags, unsigned long caller)
 
 	return ret;
 }
+EXPORT_SYMBOL(__kmalloc_track_caller);
 
 #ifdef CONFIG_NUMA
 void *__kmalloc_node_track_caller(size_t size, gfp_t gfpflags,
@@ -4388,6 +4389,7 @@ void *__kmalloc_node_track_caller(size_t size, gfp_t gfpflags,
 
 	return ret;
 }
+EXPORT_SYMBOL(__kmalloc_node_track_caller);
 #endif
 
 #ifdef CONFIG_SYSFS
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
