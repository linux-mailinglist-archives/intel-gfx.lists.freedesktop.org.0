Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 613C6415D3B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17CC16ED64;
	Thu, 23 Sep 2021 11:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 127CE6ECF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:33 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id d21so14424742wra.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=BuZrVO2AK8pOXHBnqQb9ANq1oJMSvD8QLzif1+QS9pdLsQMJVv0+vRw+zRaO8nzzal
 0frR/1OsKDG/G50rZY1nMaiEc9w9QfkOrD47IgioQir735ukviJrbg7lTFrJoCRIMQ86
 GqJRiqn7Qmr/NzxFkMC+o4YrfZOq/08Uf0qOW553+dk+LTlWtp1fwS6YvfnebOe8ois2
 +4TnKtee+6wgVGxEi2V85BF0+eCi5LWD/SPuI/Z5mt4uF4qcoz9jc8vwktMf4fB1vUXx
 Y7NOJDqZj4kvzDbd/jaM5tECd5Pbf/fQLqQQE8g2DJJFQC6xHjZUYIqoaxORD23Txudz
 JQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=jp+qtsAl3XZlJCWfBFtg8jJidguIuwb7OkXyeq5WfhrvyoImr999ka/BKCqnowWVb5
 Qr2tC4gPbcjIh4ply32eqs0EzWfRsGUxnMaoLJiJXV8m/RCrqC2vIzDvyjFYSWQg74Up
 yqjkfZzl1SP5scZ9d6NmGEqn2ElHOZeB6JowoGOkJSG+GUCu1GFAbk8BBMf3xVG/xk65
 CUWn4GYM47fnTxJuUB9XdJS74GKzsTkAAJzSt689p5POzKMgg7Y3mxisjR1YILwpaX4O
 3ffa5emRBVrBUbNg8d4YreaS8l35+wavcjS/civMX9dkkB9ZrTjK0dw9yaICydfK41oD
 Weig==
X-Gm-Message-State: AOAM532O1t9uKg6elbozOTmfPNZ/srEXGbisXCgeIZHydbdx87zbTypC
 1PNTKRZEuxpc8YZxp/1jJVM0SPMANzE=
X-Google-Smtp-Source: ABdhPJwuhS+KVPJmS5vaJHKH0VrYF7uz87ZbZCxvAirkjzDAgtSBCCGHWWJJ2HB33V4WF3bK4QQOww==
X-Received: by 2002:a1c:f405:: with SMTP id z5mr3004727wma.72.1632383791652;
 Thu, 23 Sep 2021 00:56:31 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.30
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:56:08 +0200
Message-Id: <20210923075608.2873-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 25/25] drm/etnaviv: replace
 dma_resv_get_excl_unlocked
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

We certainly hold the reservation lock here, no need for the RCU dance.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
index 4dd7d9d541c0..7e17bc2b5df1 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
@@ -195,7 +195,7 @@ static int submit_fence_sync(struct etnaviv_gem_submit *submit)
 			if (ret)
 				return ret;
 		} else {
-			bo->excl = dma_resv_get_excl_unlocked(robj);
+			bo->excl = dma_fence_get(dma_resv_excl_fence(robj));
 		}
 
 	}
-- 
2.25.1

