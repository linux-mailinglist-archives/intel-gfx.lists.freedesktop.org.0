Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DEA3A1C2E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 147006EAD4;
	Wed,  9 Jun 2021 17:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3270B6EAD5
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:56 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 o17-20020a17090a9f91b029015cef5b3c50so1873114pjp.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w4afPRq0pG7ofjrZ6pAHNiPrcBns9byCh7t0sCfFpp4=;
 b=JXLx45FmPSn45ewzSJeSCtBelau1WHnPtZuwO5qqDg/2tjX7I/X8cokZOSJDMAikHa
 JXrF4C2ZlDy64wQDQJ7F830NNSu7d+psl5rgOm75hltGJ/TahcbyYeajvtODnGYE7oUL
 +Bo41k5yKMuzUMGiQ9oiPbj2kB+0HYrSNx4QKVqCdudpYliKzE/glJJx+IV5j83Gmyvh
 tFgtqvXmcvHlGF+jpqh2v8iZnRYu3ZgR7o1HoJJZ4hJzrTh1B7K2fExCU43yDvMfAMkC
 t0Jz76a400g3DN4EMvaJ2nLWE8hl+2ln2IsOtPSyYbG9xcqxCW/MAZi7H3g0cI/ZXa1b
 ueZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w4afPRq0pG7ofjrZ6pAHNiPrcBns9byCh7t0sCfFpp4=;
 b=c8HLu8kfnaXUuu3Fzf/XFhHV4VUG0CquxlpebiAQeVnagGlmMYfq/ORAbMXeG2Xer4
 vUCoH/uI2TG9btGvBiYATYGvZJ5Gw5v48Z2skMLmrPXINi5YGhBaN70zRMmc6woTFrj6
 tXe7+Qk49FI0AOa7X6KIoIC0pIy3LNKIl1NNoCRPn3+/mYSSfdmGq37k4gkJ5HNEbh2Z
 7ihzmxEkVJWsfYt1SVHDW+0L6hmhvK2Q1AwTqP0trdFqut1JxFLoqILXciB7j+5IqDmf
 9GYn6ppTmeo+SDNgMAAWV0AGxebBtMyDdyN6loLHekGA3fDUwpO5JQuIGBs1nUOFDySe
 vXzg==
X-Gm-Message-State: AOAM532rIDzAMICIcXN8f+0TEFZEPep8ul2ja3QywnTmBK3R5lO6a+tE
 0oL9e8Li9gDQHqW37l2lJxZTug==
X-Google-Smtp-Source: ABdhPJyV0GwJRc3oAUYrw/Y5MceQR9NSVPtHbk2AnvSJuQXU/TASwDPP0yZM4kWuMOSsYgBd7Os7vQ==
X-Received: by 2002:a17:902:d3c3:b029:101:af83:cb1f with SMTP id
 w3-20020a170902d3c3b0290101af83cb1fmr840413plb.80.1623260695676; 
 Wed, 09 Jun 2021 10:44:55 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:55 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:44:06 -0500
Message-Id: <20210609174418.249585-20-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/31] drm/i915: Add an i915_gem_vm_lookup helper
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

This is the VM equivalent of i915_gem_context_lookup.  It's only used
once in this patch but future patches will need to duplicate this lookup
code so it's better to have it in a helper.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |  6 +-----
 drivers/gpu/drm/i915/i915_drv.h             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index e62482477c771..8e7c0e3f070ed 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1352,11 +1352,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
 	if (upper_32_bits(args->value))
 		return -ENOENT;
 
-	rcu_read_lock();
-	vm = xa_load(&file_priv->vm_xa, args->value);
-	if (vm && !kref_get_unless_zero(&vm->ref))
-		vm = NULL;
-	rcu_read_unlock();
+	vm = i915_gem_vm_lookup(file_priv, args->value);
 	if (!vm)
 		return -ENOENT;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fed14ffc52437..b191946229746 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1864,6 +1864,20 @@ i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
 	return ctx;
 }
 
+static inline struct i915_address_space *
+i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
+{
+	struct i915_address_space *vm;
+
+	rcu_read_lock();
+	vm = xa_load(&file_priv->vm_xa, id);
+	if (vm && !kref_get_unless_zero(&vm->ref))
+		vm = NULL;
+	rcu_read_unlock();
+
+	return vm;
+}
+
 /* i915_gem_evict.c */
 int __must_check i915_gem_evict_something(struct i915_address_space *vm,
 					  u64 min_size, u64 alignment,
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
