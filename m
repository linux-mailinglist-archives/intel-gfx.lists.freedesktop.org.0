Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD279B1B6B3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404A710E48A;
	Tue,  5 Aug 2025 14:39:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="sbkE4DDL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6DB10E48B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:39:48 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-76bdce2ee10so3249092b3a.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404787; x=1755009587;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cPwTw55Tat4/RAcsZ0Cr48lAXm1AGjPrT47wjjBZvcg=;
 b=sbkE4DDLs7un/TZfGqPiYTrg/T3+TRUQhoHyNIAncK8tsIB60jtoH05V9DvbVIjFMI
 NAeXxUR3X5jaNopps3SqiZBLmq7qp6KEcNJOVI2mOwswEP/naGRgHCkThy/fIBMjl+Ix
 7BvImryHlk/my81P5+UkY/gTp2+3w55U1FRJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404787; x=1755009587;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cPwTw55Tat4/RAcsZ0Cr48lAXm1AGjPrT47wjjBZvcg=;
 b=wvn6HZM+sop2zmia7PqaEwL546gH6PRvHsFmabJK5n4fYUyexCKqNRLKeRHKS3F90z
 T/FZTgC0uEO2pyYbwl8VsMWMGx+nMxDWBuD9DqZ5eCD78A0ha/2zVxVEhKP+An7PrjyB
 a9viBBWFltKEh519tc2QjNN92Lpwy6W0yev8UTh1PfBS8XQfLDC7aYuLgknXyseWpmJD
 YI1B7P3ha6T0/+CruspfMfZ3rOsRoAdh23r/lUvfoStUyLMX3tlvomuUDj6Viub456gm
 tyNdGWWmKdcbokdCFzd9I78cyFQCjORcezjq5a+XxRIOvoM7fA3i5BqdX9+arh+vN+TH
 HJvw==
X-Gm-Message-State: AOJu0YyCmCOo3F/fPtIMlrAyNbqsIL4oo3Q8+RUE/Vkv3uPCWEPjUcR9
 4fLHfFC1CSvwEN0iNdaC9ECRluG89C+wev7/3x8WLjYJ2THF1ZNwnwPj1n98o3wUVXmtDFBn4yk
 RPEmkgmNX4w==
X-Gm-Gg: ASbGncuR7+EmofGWZl7CL/jyEMSnkKlJZ8hJFVy5PqrCnquz9rBLLDDrvGbhFP7kCK/
 yysE/wv0idkrhOefg6z903BfNR+0ur6PgcYeogPd7A9n2nqQrKLdG9xfniaK3m+ozTmWMl2kZ4X
 KL44JLmwL5G2S+Uc1FQCoGNWPnabmvH9HC9B3/WSBMlJtj0OioFSLRksoipEPI3rQJoNw9Ykgi2
 v3b4YXZLYNC9JZBFb2i9qLULZ+Yg64xC/MfJhn23s79hqJELjz2nFuHpTZOwZOxHBWuIdiXiH9D
 Qhib8+zGFvBphhOLHePtwiEWDvmkqVaEupmZx1DsAVgevVbKAszhaAVfTGQFzR56d4jqJxiqPTm
 Uki/Z/u4BkHJG5aR1sTct/mOFvqQSaUTzADzIhex6PoQ=
X-Google-Smtp-Source: AGHT+IEl5OfPdmnCRmk6I/LgZqLC8qo/yQ/Q8L8LBAth/mZRo2Dx+Z4Ol5V6b3R0IQeigYhSZ2RKxQ==
X-Received: by 2002:a05:6a00:464e:b0:76a:986b:6d2 with SMTP id
 d2e1a72fcca58-76bec48131fmr16231021b3a.11.1754404787510; 
 Tue, 05 Aug 2025 07:39:47 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.39.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:39:47 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 2/9] drm/i915: Remove struct_mutex in i915_irq.c
Date: Tue,  5 Aug 2025 11:38:57 -0300
Message-ID: <20250805143908.32343-3-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Remove struct_mutex from ivb_parity_work() function.

The ivb_parity_work runs in a workqueue so it cannot race with itself.

Also, it is not protecting anything with the other remaining usage of
struct_mutex.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 7b29062fed50..a597751f9598 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -162,11 +162,6 @@ static void ivb_parity_work(struct work_struct *work)
 	u32 misccpctl;
 	u8 slice = 0;
 
-	/* We must turn off DOP level clock gating to access the L3 registers.
-	 * In order to prevent a get/put style interface, acquire struct mutex
-	 * any time we access those registers.
-	 */
-	mutex_lock(&dev_priv->struct_mutex);
 
 	/* If we've screwed up tracking, just let the interrupt fire again */
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
@@ -224,7 +219,6 @@ static void ivb_parity_work(struct work_struct *work)
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
 	spin_unlock_irq(gt->irq_lock);
 
-	mutex_unlock(&dev_priv->struct_mutex);
 }
 
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
-- 
2.50.1

