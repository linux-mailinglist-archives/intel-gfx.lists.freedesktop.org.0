Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BAE5045AF
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Apr 2022 00:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE7B10E081;
	Sat, 16 Apr 2022 22:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A981610E081
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 22:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650148450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4ouuJnJQp4IGN8I0+Gam0bFswWMP7CzxEr+ECX/m5CA=;
 b=W7rgge1Omu6HpM/nYyCoRGWBagyrqfTjcEiUDlLW8vEkU0GqJSuimqzTZapJ6gyoNJe0vK
 vPWc95ByoZK8OdxD0hQiFaRl37G8v57nxaSGLC0Q0kodxaPPXpk6iodj2pEmppMfakDnPe
 JSKFq1rfW0Iyk0sPviUFWyk5ArZECMA=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-212-IxDYnm7oO8SzXx6m0ziZrQ-1; Sat, 16 Apr 2022 18:34:09 -0400
X-MC-Unique: IxDYnm7oO8SzXx6m0ziZrQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 bp31-20020a05620a459f00b00699fabcc554so7733207qkb.12
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 15:34:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ouuJnJQp4IGN8I0+Gam0bFswWMP7CzxEr+ECX/m5CA=;
 b=kkEAfASFxH8qr66XsrYpcXT6h9nzgfqJ2/76Dib8RJP72V1EzXrMooveW5dD68e7hc
 ioYre0oAeCiWj+hPDunhEnlBbR2fWHhzLl8TiwEvkpJhMXZQaxYucLFnEqwDeY83J+Xq
 I5sQZYkIjjh1pSqojOux6Zh/61Dfdish/7xgxWyhTRPKEcGU0RD8MhyeLianWp/zewHc
 KaeKJU/c9O+ChhNvnO6rqSs5rlZi3xnhoHGw44eksc7PlrrPrP3/b5bSl1KcIxyvj2T9
 wPeE3j5xGjLDvqxKudcGkMOy9HyeGqCJ2glDdgwi5Ilm0Vo2vx91dLBwjW58eT18VvhX
 mBxw==
X-Gm-Message-State: AOAM530nutOZexx5N2iVIo02sC0OsfYeQ38xc0gG3kwKSt04NjbFkEBN
 6Syza9lfwdte90H+dBd4TovfQV0ck9uepSA+pNByjxlKMFc1RbjHIWjwZhZdgNwEBiS5WXH/16/
 AA7dsDQSzHbYHVW0CrZUdBf6Ifyua
X-Received: by 2002:a05:620a:cf2:b0:69c:4dc4:8944 with SMTP id
 c18-20020a05620a0cf200b0069c4dc48944mr2940657qkj.553.1650148449024; 
 Sat, 16 Apr 2022 15:34:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyCgSH8or87FJu0ZT9dvXV57n7uWYJZDIsex3cv5/l1u5s9UMBP5GIBcNqRLvUrEyps6t5lOQ==
X-Received: by 2002:a05:620a:cf2:b0:69c:4dc4:8944 with SMTP id
 c18-20020a05620a0cf200b0069c4dc48944mr2940650qkj.553.1650148448824; 
 Sat, 16 Apr 2022 15:34:08 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 f11-20020a05620a12eb00b0069c88d15b6asm3422412qkl.68.2022.04.16.15.34.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 15:34:08 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch
Date: Sat, 16 Apr 2022 18:34:01 -0400
Message-Id: <20220416223401.1720193-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH v2] drm/i915: change node clearing from memset
 to initialization
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In insert_mappable_node(), the parameter node is
cleared late in node's use with memset.
insert_mappable_node() is a singleton, called only
from i915_gem_gtt_prepare() which itself is only
called by i915_gem_gtt_pread() and
i915_gem_gtt_pwrite_fast() where the definition of
node originates.

Instead of using memset, initialize node to 0 at its
definitions.

Signed-off-by: Tom Rix <trix@redhat.com>
---
v2: restore clearing of flags

 drivers/gpu/drm/i915/i915_gem.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 2e10187cd0a0..268b1f66b873 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -69,7 +69,6 @@ insert_mappable_node(struct i915_ggtt *ggtt, struct drm_mm_node *node, u32 size)
 	if (err)
 		return err;
 
-	memset(node, 0, sizeof(*node));
 	err = drm_mm_insert_node_in_range(&ggtt->vm.mm, node,
 					  size, 0, I915_COLOR_UNEVICTABLE,
 					  0, ggtt->mappable_end,
@@ -381,7 +380,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	intel_wakeref_t wakeref;
-	struct drm_mm_node node;
+	struct drm_mm_node node = {};
 	void __user *user_data;
 	struct i915_vma *vma;
 	u64 remain, offset;
@@ -538,7 +537,7 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
 	intel_wakeref_t wakeref;
-	struct drm_mm_node node;
+	struct drm_mm_node node = {};
 	struct i915_vma *vma;
 	u64 remain, offset;
 	void __user *user_data;
-- 
2.27.0

