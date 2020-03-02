Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A66F1766E6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CA86E489;
	Mon,  2 Mar 2020 22:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C8F6E153
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:26:43 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id r17so1855056wrj.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s9Dt4ZAHYBWy2uNMICh4RsHo7p4PctnYq6F5Xys1W4s=;
 b=axmB575g6/zkObum059v2q22BdYyNmVKduWj0jUdHrwBi6I6QBxULBBwvKOAPDVF0F
 ynlCpl5cL5YYdXdVnW7y1C6GV7Zp5eeuKEinsK4JVU2bw3gA3UShHustrxBxC4Eibr6w
 50vlUFqWYkKfcKaT8kni/LQ12bAnHzJFdc9EI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s9Dt4ZAHYBWy2uNMICh4RsHo7p4PctnYq6F5Xys1W4s=;
 b=ZaQ3uf1LPFw605+z5vv0YsSU6YNSuKdvCGBdfm5RgzDDic6FoWFAQcPZSs7PxhjLyv
 sCh9F7aFHbOV2aF4jE9PnV0loHCrqQhtvaDCw+e2JKEWfvchZ5VDe7+2U/WJuYw5g1So
 T9Vyw0tcfc7P4hEfKNEdPGziICgYNuLEme6i2Se/Zw12yk4zuHlocfTrMwlkWObVP53n
 FiDy5XJjQEg6bOyrRSJfXBgnJBzMkL/IbnGuWFs4A6prSogFOnreNbEBAD3DBrEFC6Bd
 /arxDt3VZAR7I6/2eKSvNIQV+beAn/KO88kNMhLj7xK4CFg/4xdr9WgyutEZlk5abSTc
 eyhw==
X-Gm-Message-State: ANhLgQ2vixPfeQEiahjikWp7nKpL64SuWNkAmK+HzJcCFwFXSrb6k3v2
 2hFnnrqxr3uVNHeEox5zkoutbQ==
X-Google-Smtp-Source: ADFU+vvoLh3Wsjn6JeoEhXLn14K8OJVwfkHDIumxe5Sg0X1KCKW9a5JdnvmTNxfHumu1ZYpZJebjdw==
X-Received: by 2002:adf:f0cd:: with SMTP id x13mr1535430wro.69.1583188002191; 
 Mon, 02 Mar 2020 14:26:42 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.26.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:26:41 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:25:41 +0100
Message-Id: <20200302222631.3861340-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
