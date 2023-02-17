Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE04169AB5C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 13:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9792A10EFB8;
	Fri, 17 Feb 2023 12:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882C010EF99;
 Fri, 17 Feb 2023 12:22:31 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id m17so4063892edc.9;
 Fri, 17 Feb 2023 04:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to; bh=rexHsYzVpgv7QGvwm4JZRgCynN9IfMSmYFd1wUGPksU=;
 b=lVv8n0SxtKCxBPCwdqQh+1Z2D/SGcrXGS5Sk3eT6nQ38siO/qwXdhrpuGPzRQPxBTR
 wLFDbx9Rr09cBtVE45FvGjslQxGYeyrCghuzOLN/9aZCvUvbRtqHgTUJs9FWp31/ugxm
 hmcfkYih2OGLvq7uXCO1HP/dUrsCclkU3NqyLPnq595XxlK3ezm12tRnXCagVLmOhMAT
 vtAbrLfUTcPBUq1O7PpU1JchJ1u3OlgOrZPGDOgX3Iuo3t6DkE105WkPlconsULL3wEu
 jgXUeisMGds0hvDeoFJn5/dFt7/LuC1aQrmBLaeYdHoAjlBWXGDzDZixitNLqw3A3nxQ
 /9nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rexHsYzVpgv7QGvwm4JZRgCynN9IfMSmYFd1wUGPksU=;
 b=61bzitWdWA+d8FX1ybtYrqHucSkj+xa98+lY+5/Hrd1ZquFIqeNK3Qv4ybpoSL2Vwx
 QM+FJN4KAreLAsE8U5QYA0praxpjTzCKwnV6KhjDE0Hy027jOrIZMUcmxaCTuqP3j1wR
 beTlFaI/g+nVn4cjQgBegiQ3HFSYslojGEw1Tp85EWE1fWG4XeyErElZY0nSPJQEYvVc
 gJdz4mZrp9SMFwRUGbPNqpfOiTMNCa+7BnoXS1pnp7qRVWwaFX1Ka+h7rhbGirSrNq5b
 P+eUkGBSSmdXFqkVcBi+hXkRUsAqatqxj5816ZOrurShyIvsjZgI0vjSaGWjaIaHwKEX
 CqSw==
X-Gm-Message-State: AO0yUKUCWbqWSSr8cZVw0iyipM8kY001bBfnB0d7I1iOlz6CANyAXmx9
 efKw66puURsTyoDLhWCUEiFv2aiT180=
X-Google-Smtp-Source: AK7set//x9AeIoBlUIDuxNBucV1uRwMq4jKtnnHuskCDi122fvB1eD/vo3mdXqeLrgndN/NtOQcLGA==
X-Received: by 2002:a17:906:edc1:b0:872:6bd0:d2b with SMTP id
 sb1-20020a170906edc100b008726bd00d2bmr9044022ejb.45.1676636550018; 
 Fri, 17 Feb 2023 04:22:30 -0800 (PST)
Received: from able.fritz.box (p5b0ea2e7.dip0.t-ipconnect.de. [91.14.162.231])
 by smtp.gmail.com with ESMTPSA id
 h10-20020a50c38a000000b004ad75c5c0fdsm1373472edf.18.2023.02.17.04.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Feb 2023 04:22:29 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Date: Fri, 17 Feb 2023 13:22:22 +0100
Message-Id: <20230217122224.29243-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230217122224.29243-1-christian.koenig@amd.com>
References: <20230217122224.29243-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/gem: Remove BUG_ON in
 drm_gem_private_object_init
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

From: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>

ttm_resource can allocate size in bytes to support less than page size.

Signed-off-by: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>
Reviewed-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Christian König <christian.koenig@amd.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230208090106.9659-1-Amaranath.Somalapuram@amd.com
---
 drivers/gpu/drm/drm_gem.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index aa15c52ae182..5a3ca3363f82 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -152,8 +152,6 @@ EXPORT_SYMBOL(drm_gem_object_init);
 void drm_gem_private_object_init(struct drm_device *dev,
 				 struct drm_gem_object *obj, size_t size)
 {
-	BUG_ON((size & (PAGE_SIZE - 1)) != 0);
-
 	obj->dev = dev;
 	obj->filp = NULL;
 
-- 
2.34.1

