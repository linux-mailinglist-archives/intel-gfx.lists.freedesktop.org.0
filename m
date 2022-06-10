Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1138546655
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 14:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9881D10EEEF;
	Fri, 10 Jun 2022 12:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600C610EEEC
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 12:12:12 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id g2so584380ljk.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 05:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=LTVUZS9Ollla//7EqLyM6173DwHAqmVCMi1znVPh9v8=;
 b=aMNh7db2uLG7LB0ahxuRD/m1dSihCbCJpsX7uIQdp3qRj4K+dNATNS7uHme9mOZ0WH
 /V3uSV8u8tyZMMg9mQ7AtU/WC91oN8iHUM+cseJCQgeQzype7tqKDZbWKyfQdBRAlI6b
 27rzR0WlpuH9AxJugK1gQv96xNRfn+r3GeWUNQ0bvDUSFd93NJE+eoEhBRHWrx+UUjPa
 uNidmpnprWCV9FIfi8+BuydLcLvD9yuHBrsMCbl6eswDMKYxAEMCKtyhtrbGPTCDIWgF
 QG1jk50+7Eb7qr7J0pvkp7patl68iLzFeEmg0NAo2SVY8RGZwI3hFXKhOA36ULdqJowQ
 yC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LTVUZS9Ollla//7EqLyM6173DwHAqmVCMi1znVPh9v8=;
 b=rdl6PsQ2PbRQZZMakgAk1KFPus+4LD2UlX1JlqSbpLjBdhKW71licBKg0RthNK9lcN
 ZdxvQRpmuZQQT+JA7t6D5CDiv0KZaIeH7Bv8UEr17gFwO2Ba77NuvS+CNQPtT0P6RZcw
 QGdMuAqmaQjsJKtnpuhZ8QoSHflRjuXXVC35RQPN/ZUja9410Ws0Gtdu3FAGLBi2XVEu
 ryNl2MGkUCCMlLejVJ0/VgOn99gf1OLnLkIK2oUzQ/nfk9Oh4rSv8sNOvXgSgr6YM0LA
 QimXfETwWlb+NzFUK8cbS1VxrGUXR+hSQNcr49HtQsxrp36Br+q7vqVH3QUFRcLzPtDP
 KvmA==
X-Gm-Message-State: AOAM533Odk0hSQr/ZFK9MKqUhFF3nY+n+MRFZNyOEHDlAzhRO9W+Dauc
 QTr1lfF7pmgHPQnlbQJp4iYT6DdvdxzBcw==
X-Google-Smtp-Source: ABdhPJyejzlWGoq4Crt05xCwSwF6bpleUlen46KErXtUEDDoIhFVws4P45d/hUXgBhhZH7xWD7U+Zg==
X-Received: by 2002:a2e:9584:0:b0:255:829e:590a with SMTP id
 w4-20020a2e9584000000b00255829e590amr18186730ljh.170.1654863130370; 
 Fri, 10 Jun 2022 05:12:10 -0700 (PDT)
Received: from localhost.localdomain (d547nd2hqr-rv74hs34-4.rev.dnainternet.fi.
 [2001:14bb:ce:36b1:d8cd:77dd:1de0:cfbe])
 by smtp.gmail.com with ESMTPSA id
 p4-20020a056512312400b0047255d211f7sm4673185lfd.294.2022.06.10.05.12.09
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jun 2022 05:12:09 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 15:12:05 +0300
Message-Id: <20220610121205.29645-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: don't leak lmem mapping in
 vma_evict
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't leak lmem mapping in vma_evict, move __i915_vma_iounmap outside
i915_vma_is_map_and_fenceable

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 7753337ff9fb..bda37616221f 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1918,9 +1918,11 @@ struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async)
 		/* release the fence reg _after_ flushing */
 		i915_vma_revoke_fence(vma);
 
-		__i915_vma_iounmap(vma);
 		clear_bit(I915_VMA_CAN_FENCE_BIT, __i915_vma_flags(vma));
 	}
+
+	__i915_vma_iounmap(vma);
+
 	GEM_BUG_ON(vma->fence);
 	GEM_BUG_ON(i915_vma_has_userfault(vma));
 
-- 
2.25.1

