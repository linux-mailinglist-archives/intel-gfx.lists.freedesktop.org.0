Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E80B1DC35
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6397910E88D;
	Thu,  7 Aug 2025 17:03:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="LMUvHSbl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D0410E88D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 17:03:12 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id
 d9443c01a7336-23ffa7b3b30so11581375ad.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Aug 2025 10:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754586192; x=1755190992;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=flIxjpWpa6hoR0nexsnqX4duO2P6jkx4Mipqam9GCMo=;
 b=LMUvHSblLtWPe8YIxxzm6PzBYu5XfXlwUmKWyWCBmLMQbdQDOIhRqag7ZNaogMW5eZ
 akQG2zZSQFnMyuqMZBF0E0uWJMnj824dM0uquPSSUaHpcMELGDJYght2mhVy6Z9cZOV6
 yYmqCy/EitQAYVZqAt7Nkwng1WP6gDWP/7f8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754586192; x=1755190992;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=flIxjpWpa6hoR0nexsnqX4duO2P6jkx4Mipqam9GCMo=;
 b=Wn5XL0qxRzALCwQyrljY40u0OEjduB1nkZ5A1gIxWVxXJgOK+cyHXuhs5UGb5WKulv
 ITIPIqO35aTbUuVNjOemzXAZvpCFIj4mmmDmSh4Bm8YpjrygZphYv93hm1osakUVk1DV
 9q0PWRjz4uwCV2qhowXaA4ptTiYtFSD2SsQF+MDM9V7BiNEWU328p2XWXrpQdf09/4BY
 QUhZqRwns6ZCNuerEjybsQwdkCaX8od4Kcan5vGSffOb11/VYFuEvCGtIrtQtN5SwDSh
 szQn4gYhiAIAcKzFpEhUf2DC8If9g/1bAqubrVNHSfshNxCAR8n6fY5zDQ7GO/L8Pkbt
 ecxA==
X-Gm-Message-State: AOJu0YyWh/FCrVssB0CzoiEqqWS1qp9pcE7EaYeiUoPDDYAjV0G7LcKf
 4FM3kH2CFBQc+wgK1QOYBFZGW/FvYZH1COi1pZwEgFHf8ipeJrvthAlJPO5ZpZdqagg=
X-Gm-Gg: ASbGncuRsfnJ+b9hYN0A7YI7sB8rXw5fJwXFbfu8uBpxjZTEDq1lvTDvKOZRqoJtqb1
 M6NGhN1EjRv1Yac2B2y93tvFZy/4hIOvFTvnssccPJ3QHhxrx2eCpS1MN/pcckesbW79UsBq355
 jzW1FRFRt05C6SmLQu4+b8upMdEjM4VeNwtt716JkKs1QUlp9Ch6ORatTtH4FeL0ntJmNFhEvZf
 3FSTczoyG9IH6emd5A6i2UpNm7SqojpUP8f6CEpXwhxANWUJ6W9OqCME+N18vaS2XmaMD1hBRgj
 iHJypNuCSuVGEq+Vxeud/eMOszX2UsoVrWQAYN3mddfROFvm7a1SNx+IbmEQbVViN6PCWH/VpdK
 We59wWg1yGdba7J7b+VdlhJ5vAK8ik+Za
X-Google-Smtp-Source: AGHT+IGx2yLMioCxqd0sgFSD03y5HFFKScb1B7Kkc8rIpzJQlvi+IrTHmgd4FN3a1jUL7RN/Mn8z2w==
X-Received: by 2002:a17:902:e54b:b0:240:7fcf:ced7 with SMTP id
 d9443c01a7336-242a0aa6bd7mr116352115ad.21.1754586192005; 
 Thu, 07 Aug 2025 10:03:12 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241d1ef7c30sm188804875ad.37.2025.08.07.10.03.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 10:03:11 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 2/9 v2] drm/i915: Remove struct_mutex in i915_irq.c
Date: Thu,  7 Aug 2025 14:02:01 -0300
Message-ID: <20250807170212.285385-3-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
References: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
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
index cdfb09464134..83b08dacd194 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -163,11 +163,6 @@ static void ivb_parity_work(struct work_struct *work)
 	u32 misccpctl;
 	u8 slice = 0;
 
-	/* We must turn off DOP level clock gating to access the L3 registers.
-	 * In order to prevent a get/put style interface, acquire struct mutex
-	 * any time we access those registers.
-	 */
-	mutex_lock(&dev_priv->struct_mutex);
 
 	/* If we've screwed up tracking, just let the interrupt fire again */
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
@@ -225,7 +220,6 @@ static void ivb_parity_work(struct work_struct *work)
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
 	spin_unlock_irq(gt->irq_lock);
 
-	mutex_unlock(&dev_priv->struct_mutex);
 }
 
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
-- 
2.50.1

