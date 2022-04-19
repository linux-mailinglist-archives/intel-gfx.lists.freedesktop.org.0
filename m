Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C94507D45
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 01:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A81D10E392;
	Tue, 19 Apr 2022 23:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D92C710E387
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 23:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650411880;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=oYGafAneoUZHzEpI/8/bT8Grd+Q/phBRFprX8SG/5bY=;
 b=U7gt94AMFzkZIX6MzoKaogo8Bde+147JXHxPhwIblWkp+FN9sFtlWb2d2Hbgaul84Bf6ig
 aGl4X0+wEqV+/AYvv6dvaT3kpnIRygHV7KfgsfC7ASDOUIxy6bYXO5bjIrYXSzfIETKEqK
 cTiYzfL4tgyF9GsLGW8K1uhBdGS7Qiw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-207-QQXGMANQOP2dZUKheG3mSg-1; Tue, 19 Apr 2022 19:44:39 -0400
X-MC-Unique: QQXGMANQOP2dZUKheG3mSg-1
Received: by mail-wm1-f71.google.com with SMTP id
 az27-20020a05600c601b00b0038ff021c8a4so2069925wmb.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 16:44:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oYGafAneoUZHzEpI/8/bT8Grd+Q/phBRFprX8SG/5bY=;
 b=dhmnlr0CLN2pz9743W316W6VDBIVN8BKUSYs3AIKo5l9H01LcM4yPdArYaJazcEugz
 NZCLh0HTbWuihZN7uWzaR+8+YgLqwjm4X6irmx5XRhVSxeAzMkYQqeE+z7YDvit2Xm5f
 gmZIbEXmQT4bKQ9M4HmM7a28V8TxLrZ7dMbAIc5qCv2tGh2Kq4CeHYRNuk1FeoGK4UHd
 0zXCsv092COxUppmP+3K0jM6Z5tT9+yXGDk+lCYJ8X1wWOAM1qixnW6ElHQ3QEMHWxoN
 vBDWNXyNxc8prnileC+UlP/gX1aQRYa0qbFJPxHQhNit6hqlxH9qmQVb2saxHiI8kObY
 PSTQ==
X-Gm-Message-State: AOAM530iOfrWextLJsiZeLkBj7LU5tbvpzX+15g3NnHovM+lT68n+BuP
 qfMCkfEsc1SGKaYkX8HjF1s/pyqZdpgukYS8K+NnBopU9GzKrJQSU8kC4kn3r1TamLfrcQS8AsT
 mxZ+O7noQlurSk0WOteg1i7wRsOav
X-Received: by 2002:adf:e301:0:b0:205:db69:6dba with SMTP id
 b1-20020adfe301000000b00205db696dbamr13903200wrj.605.1650411878519; 
 Tue, 19 Apr 2022 16:44:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyd21waJxZOqKa793oN0FwdeBAnzWxA1Koh+HqrwD58qJEbPViWBCVhaKh7RSE4dFJnB0AKtQ==
X-Received: by 2002:adf:e301:0:b0:205:db69:6dba with SMTP id
 b1-20020adfe301000000b00205db696dbamr13903193wrj.605.1650411878317; 
 Tue, 19 Apr 2022 16:44:38 -0700 (PDT)
Received: from kherbst.pingu.com (ip1f10bb48.dynamic.kabel-deutschland.de.
 [31.16.187.72]) by smtp.gmail.com with ESMTPSA id
 z3-20020a1cf403000000b0037d1f4a2201sm16560045wma.21.2022.04.19.16.44.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 16:44:37 -0700 (PDT)
From: Karol Herbst <kherbst@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 20 Apr 2022 01:44:36 +0200
Message-Id: <20220419234436.2638649-1-kherbst@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kherbst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH] drm/i915: Fix race in __i915_vma_remove_closed
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Karol Herbst <kherbst@redhat.com>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_vma_reopen checked if the vma is closed before without taking the
lock. So multiple threads could attempt removing the vma.

Instead the lock needs to be taken before actually checking.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5732
Signed-off-by: Karol Herbst <kherbst@redhat.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 162e8d83691b..bb3b6e4bee8b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1615,17 +1615,17 @@ void i915_vma_close(struct i915_vma *vma)
 
 static void __i915_vma_remove_closed(struct i915_vma *vma)
 {
-	struct intel_gt *gt = vma->vm->gt;
-
-	spin_lock_irq(&gt->closed_lock);
 	list_del_init(&vma->closed_link);
-	spin_unlock_irq(&gt->closed_lock);
 }
 
 void i915_vma_reopen(struct i915_vma *vma)
 {
+	struct intel_gt *gt = vma->vm->gt;
+
+	spin_lock_irq(&gt->closed_lock);
 	if (i915_vma_is_closed(vma))
 		__i915_vma_remove_closed(vma);
+	spin_unlock_irq(&gt->closed_lock);
 }
 
 static void force_unbind(struct i915_vma *vma)
@@ -1651,7 +1651,11 @@ static void release_references(struct i915_vma *vma, bool vm_ddestroy)
 
 	spin_unlock(&obj->vma.lock);
 
+	struct intel_gt *gt = vma->vm->gt;
+
+	spin_lock_irq(&gt->closed_lock);
 	__i915_vma_remove_closed(vma);
+	spin_unlock_irq(&gt->closed_lock);
 
 	if (vm_ddestroy)
 		i915_vm_resv_put(vma->vm);
-- 
2.35.1

