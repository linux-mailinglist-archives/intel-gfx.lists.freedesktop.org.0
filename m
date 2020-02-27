Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C74172643
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:15:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52FC86E964;
	Thu, 27 Feb 2020 18:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351036E944
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:31 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id p18so4603986wre.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s9Dt4ZAHYBWy2uNMICh4RsHo7p4PctnYq6F5Xys1W4s=;
 b=ARggmJF0Md01/eym0nw72nOTBrRfmsUuV8VnF35SsA7ok30GpUnsfINOCeoPo16CH3
 EAwDPW+Lu/Wej2oaK5GyxVZn01VewErf8UpL+acHuwuXQK9U4Soz1aqVTfGzE+gsCKVy
 wL6d3cYR5tE/vikv3fUeAvvRcsj3DbUUcQgdA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s9Dt4ZAHYBWy2uNMICh4RsHo7p4PctnYq6F5Xys1W4s=;
 b=pNYidheYREKHaxQWMenU9tK/CxrrQpc3aZ0WfhyKfbLqrerDT8abhVbmOyJK42EqG/
 kIP4xUwWrI6nsXXfdfa6mcayRlg7uiLgoCpgOVl+GDs3TbUfkRbs7NjFh6nkFnAkj7Ev
 zhX1W8g4TxjQS5jTl8ncd1jXHGTOoWIXKzOsZ7mZTNGRnVoH6et/DA6ZRPWDMljorJCP
 HAY+DoAJzuJ7aDALByPszDIsjyKbuM7pecqb5yGrU7paya+AOHnjaM/J2CXgUoPy9Iby
 uZIXEULorhTTIHtdmCRdINtAH06WymJ+c6NnkwCvaIDshPQNYPDvW3AsQYrqrJ92rOJw
 D6mw==
X-Gm-Message-State: APjAAAV/clVh7wTTqKXdNVg23Tyg2pKiKuqPwD2+g6OvenKbdBThKBsM
 GqfFnLQQTBhe5Jqa8XJv34mbGA==
X-Google-Smtp-Source: APXvYqyS8G8ysqKvrlfpv+NT0O6trBXNmoLB1tnfzb9RAUggAHw/KDstk2oj74jEGW4oPEPaVnqjMg==
X-Received: by 2002:adf:ffc4:: with SMTP id x4mr134865wrs.306.1582827329860;
 Thu, 27 Feb 2020 10:15:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:32 +0100
Message-Id: <20200227181522.2711142-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
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
 m.felsch@pengutronix.de, Pekka Enberg <penberg@kernel.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, David Rientjes <rientjes@google.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Lameter <cl@linux.com>,
 l.stach@pengutronix.de
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
