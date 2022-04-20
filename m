Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BB5508546
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 11:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A555210E873;
	Wed, 20 Apr 2022 09:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF5B10E804
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 09:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650448644;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZbxWeXm1X4zfi7zki/F+6Y9tTnHLdesLwVcaLaLQFls=;
 b=NeXvR5XDTYWoh8sIZTDnV+fTPYLfyCLq7ztdoGKElQ7Usbl3MFGf91gHwbwyTS/5F9Dqe6
 xVbmn38hihIhwRWlis/Xm6iNVAgeFDCSuZ/Op11wJfRwg0Gow5j5zTiCYyJcmWPFbvmJYM
 RTDfwdMT6eaxm+1KfA9Yg4F9dn9SbBk=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-35-UoBgZO4xM2ai5IbVyk_91w-1; Wed, 20 Apr 2022 05:57:23 -0400
X-MC-Unique: UoBgZO4xM2ai5IbVyk_91w-1
Received: by mail-wr1-f69.google.com with SMTP id
 t15-20020adfdc0f000000b001ef93643476so247631wri.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 02:57:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZbxWeXm1X4zfi7zki/F+6Y9tTnHLdesLwVcaLaLQFls=;
 b=Zfg+K5KRxLFogh+P29rJQQGAdAWnhop2e5wXryo2T8OBLbNXzSaHnulMbMBcXTglaa
 Bt++QBQlUiNeyt/VoA+BVYj/qlem6kxZ5+X+9kVWXD3Cn5/B58VCn9XZACWsp2mG87Us
 RcBFoLd87yO3EsutYIxxFiIs04/hT3/Q6n80ZG12YiARsNjTjfed8eHvhP4Y8n3xx3jJ
 Vng7ioYItE8yDXdrAicuy6ONZ0MJY3kTuDJKFCt7jviQEghc3hMd/Qc6mjKe3v1TXJPZ
 4mljkMzUG7DqhZaVlASQMZj2DQ7c2HydpHMhv5lcC79GqQia1YthLwRM8jLGhlw9SkIX
 xeFg==
X-Gm-Message-State: AOAM530ecqiwREWviBWDm60blf7DdoszSWCPfBjqhh3coJW2TQiGTPMo
 KFvs7Yd8bE19UNWoet3+O69Aiu9bVhzNRIKplf8zPRxLaSnPM2+/IST2z92+Lg4Xf6wsXN2o07O
 FG55WhcOWQcaxi3i/cJ86Bugp7ZL7
X-Received: by 2002:a5d:6788:0:b0:207:ad57:cc71 with SMTP id
 v8-20020a5d6788000000b00207ad57cc71mr14714982wru.180.1650448642368; 
 Wed, 20 Apr 2022 02:57:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAkCEg6ZTgvGJWDPDulGPHJ7+1EP0RT/2MwYavQA06jMb2aB4/hMSe2V5kqJ2x7FdsxgpAjA==
X-Received: by 2002:a5d:6788:0:b0:207:ad57:cc71 with SMTP id
 v8-20020a5d6788000000b00207ad57cc71mr14714970wru.180.1650448642139; 
 Wed, 20 Apr 2022 02:57:22 -0700 (PDT)
Received: from kherbst.pingu.com (ip1f10bb48.dynamic.kabel-deutschland.de.
 [31.16.187.72]) by smtp.gmail.com with ESMTPSA id
 g8-20020a05600c4ec800b0039290a5b827sm11376161wmq.24.2022.04.20.02.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Apr 2022 02:57:21 -0700 (PDT)
From: Karol Herbst <kherbst@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 20 Apr 2022 11:57:20 +0200
Message-Id: <20220420095720.3331609-1-kherbst@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kherbst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix race in
 __i915_vma_remove_closed
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

v2: move struct declaration

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5732
Signed-off-by: Karol Herbst <kherbst@redhat.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 162e8d83691b..2efdad2b43fa 100644
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
@@ -1641,6 +1641,7 @@ static void force_unbind(struct i915_vma *vma)
 static void release_references(struct i915_vma *vma, bool vm_ddestroy)
 {
 	struct drm_i915_gem_object *obj = vma->obj;
+	struct intel_gt *gt = vma->vm->gt;
 
 	GEM_BUG_ON(i915_vma_is_active(vma));
 
@@ -1651,7 +1652,9 @@ static void release_references(struct i915_vma *vma, bool vm_ddestroy)
 
 	spin_unlock(&obj->vma.lock);
 
+	spin_lock_irq(&gt->closed_lock);
 	__i915_vma_remove_closed(vma);
+	spin_unlock_irq(&gt->closed_lock);
 
 	if (vm_ddestroy)
 		i915_vm_resv_put(vma->vm);
-- 
2.35.1

