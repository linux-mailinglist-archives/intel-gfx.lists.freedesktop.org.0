Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032464F802E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2157310EBA6;
	Thu,  7 Apr 2022 13:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2B710EA3E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649336922;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PYiG2jwpKviTbC79FBF6SS2JRtmy5ygo1J5oP0vh2gA=;
 b=MAR6r5axZ9YHQVLb+Nm2FBNWKq1GCCUzSzxVu4kwtAoHY0ABIiZlR8m16MaXVkrYXpL/84
 I4S3cFFHmij10ppfwuSo/8YxJ3E52vf89iRqlCqI03qdnM+Lmi4KLqZH3g8GJyJFFKgPx1
 xRKdY5T3NYM7QiEaAKMo3UYx63SXA9U=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-480-95_q2VtyPUOp0i13FPP6dw-1; Thu, 07 Apr 2022 09:08:40 -0400
X-MC-Unique: 95_q2VtyPUOp0i13FPP6dw-1
Received: by mail-wm1-f71.google.com with SMTP id
 c15-20020a7bc84f000000b0038e8df5c9ddso1086174wml.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Apr 2022 06:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=PYiG2jwpKviTbC79FBF6SS2JRtmy5ygo1J5oP0vh2gA=;
 b=tqNYACDBPWE2EyhxmPthWjHwGEC6K68MfCtvJbkMUiNJVLVEtpDnUi++8qbnnKtkIY
 VD6V9fh/Gor5532yjvARr/vvsJdm+KcakzbaQkWNGAoytJKWE9kyFjaKKcsLh6efI0yD
 ITZfjv6mM0yMMG4a7Qp8wjMIXLRs3zs0Kkxpy5NNzf0cUlSyvc8xcMRByTvHnJmO70qD
 yhbQy60hutcGq06ApcZYf7YvBxgFsrNnUuu8Z+rGG/1qaa1VinrefTmwUhzl90kN148U
 5aKkXHVnIirNLvZq6JvKfYAelqqb09VVg+ap9N23Weu4T8EyS47KTqRU4H/zE3VThu/h
 m1uw==
X-Gm-Message-State: AOAM532PK+UbZkedbvbpp6eXHjmwO8H/NB5t4pggoTJNVlS6PfEem8/g
 AgsP22tQPtfWBduqwNjzGVlNS7+MJ5iko/9Vtt64kHgtlJubY/aV0/L24pDVBPcGjVWztwld/41
 2oZ4b+DPrJikFvs1rkFJoHOGGOlNm
X-Received: by 2002:adf:b60a:0:b0:206:4ba:395c with SMTP id
 f10-20020adfb60a000000b0020604ba395cmr10724769wre.447.1649336919265; 
 Thu, 07 Apr 2022 06:08:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwusfCJViMsUP5Xtwk6CXg/MU53VnwwpUv0/qc7h8bleBl1fGekB+z/417y+QDwXAGl1LwU0w==
X-Received: by 2002:adf:b60a:0:b0:206:4ba:395c with SMTP id
 f10-20020adfb60a000000b0020604ba395cmr10724750wre.447.1649336919002; 
 Thu, 07 Apr 2022 06:08:39 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id
 e3-20020a056000120300b002061837b5b4sm8531890wrx.85.2022.04.07.06.08.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 06:08:38 -0700 (PDT)
Message-ID: <29677a4e-42dc-d35e-f487-f8b344678bee@redhat.com>
Date: Thu, 7 Apr 2022 15:08:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 intel-gfx@lists.freedesktop.org
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-3-christian.koenig@amd.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220407085946.744568-3-christian.koenig@amd.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 02/15] dma-buf: specify usage while adding
 fences to dma_resv obj v7
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
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Christian,

On 4/7/22 10:59, Christian König wrote:
> Instead of distingting between shared and exclusive fences specify
> the fence usage while adding fences.
> 
> Rework all drivers to use this interface instead and deprecate the old one.
> 

This patch broke compilation for the vc4 DRM driver. I've this patch locally
which seems to work but I don't know enough about the fence API to know if
is correct.

If you think is the proper fix then I can post it as a patch.

From 3e96db4827ef69b38927476659cbb4469a0246e6 Mon Sep 17 00:00:00 2001
From: Javier Martinez Canillas <javierm@redhat.com>
Date: Thu, 7 Apr 2022 14:54:07 +0200
Subject: [PATCH] drm/vc4: Use newer fence API to fix build error

The commit 73511edf8b19 ("dma-buf: specify usage while adding fences to
dma_resv obj v7") ported all the DRM drivers to use the newer fence API
that specifies the usage with the enum dma_resv_usage rather than doing
an explicit shared / exclusive distinction.

But the commit didn't do it properly in two callers of the vc4 driver,
leading to build errors.

Fixes: 73511edf8b19 ("dma-buf: specify usage while adding fences to dma_resv obj v7")
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---
 drivers/gpu/drm/vc4/vc4_gem.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_gem.c b/drivers/gpu/drm/vc4/vc4_gem.c
index 38550317e025..9eaf304fc20d 100644
--- a/drivers/gpu/drm/vc4/vc4_gem.c
+++ b/drivers/gpu/drm/vc4/vc4_gem.c
@@ -546,7 +546,8 @@ vc4_update_bo_seqnos(struct vc4_exec_info *exec, uint64_t seqno)
 		bo = to_vc4_bo(&exec->bo[i]->base);
 		bo->seqno = seqno;
 
-		dma_resv_add_fence(bo->base.base.resv, exec->fence);
+		dma_resv_add_fence(bo->base.base.resv, exec->fence,
+				   DMA_RESV_USAGE_READ);
 	}
 
 	list_for_each_entry(bo, &exec->unref_list, unref_head) {
@@ -557,7 +558,8 @@ vc4_update_bo_seqnos(struct vc4_exec_info *exec, uint64_t seqno)
 		bo = to_vc4_bo(&exec->rcl_write_bo[i]->base);
 		bo->write_seqno = seqno;
 
-		dma_resv_add_excl_fence(bo->base.base.resv, exec->fence);
+		dma_resv_add_fence(bo->base.base.resv, exec->fence,
+				   DMA_RESV_USAGE_WRITE);
 	}
 }
 
-- 
2.35.1

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

