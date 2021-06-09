Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE4F3A0B80
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069A16ECCA;
	Wed,  9 Jun 2021 04:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F4D6ECC9
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:53 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 g6-20020a17090adac6b029015d1a9a6f1aso2933779pjx.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mfTUnnmzC+4kX4IlEDIBAe5S8rQxYLu6F9Reh4TlnaE=;
 b=y2AitrvLVaDG1t9rHHgkh962NUskvKOHsDbWk+Llf+gflUtyAxfrsxEG3NIPbn0MUd
 dBbEgYUHtYexe3yWLj1914OLLWvNAAQ1YZADuSPECY1U2DceO5lRC/im+/lD1HZg0vQj
 iWP2SO08Lx/mNTYXQp770RoU42OR+h1LfUBX8Lp31sjC1LvDBVRt9WCYsIWHbfnIJiVO
 clBLjx7Bsc7Q5V2AoYZaIHdVBtjrpPZE5kBhnthIrrprtehKlQsQ3BFzUljHBXH60Lar
 LTqg06Ic7wEB+8R40E53PSd7AuqM+tUsL7k09evhfW2F3JnsB/iJR0T8COsPCodxtcyw
 vwbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mfTUnnmzC+4kX4IlEDIBAe5S8rQxYLu6F9Reh4TlnaE=;
 b=BauQR0xe+PnR3BvNZIMtObv2rq7SrcHCbNTXToh5+PBUAHvDTW1bBREfxyb2WYNXMQ
 zVBnfdIv/rKdRLsD0uRrDVWeNTRuNKLc3lOyy+air0xsZvmamrAT2RAoajb15q4Ps0Z4
 M8GYYQB27+GNr9pWuZjgrL++TJ1zfEVCYlCTZY2/Vvw4eiivhMuO+CHd42CIa9WEI1iC
 NhMERWROT0x3/vqNkFcjKB6cikk98xNtxAE1zKnpGfX6J8ye5HaNPXQ8N3UyuIWUtQ1A
 2/9rZr4/2LHJbBIRXsFL/ce3aveTqcvH9NIm84/9Cx8TMjv9iCakUz7xchEufDGmVlf5
 Cd/A==
X-Gm-Message-State: AOAM5333vai/iZAq+TftIcQ0g7ln1Z12juweQUG7gpvOUoSwG0bDaH3l
 CLGQ2gGrFKAZ6GZG4v7+4WHvUA==
X-Google-Smtp-Source: ABdhPJyZS/BkZTtL/HuOYrqrAMfl3bmrSG13wqZww6zkIIzWAIgpd/54JHXdIf2QzCxp9HQdTR4hGg==
X-Received: by 2002:a17:90b:4d89:: with SMTP id
 oj9mr29769827pjb.9.1623213412962; 
 Tue, 08 Jun 2021 21:36:52 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:52 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:36:01 -0500
Message-Id: <20210609043613.102962-20-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
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
index 972d1d3f9a17e..8df284dcfcf3a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1351,11 +1351,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
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
