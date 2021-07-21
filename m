Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7D43D17B0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 22:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9F46EBA1;
	Wed, 21 Jul 2021 20:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392356EBA1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 20:13:55 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 i16-20020a17090acf90b02901736d9d2218so2000802pju.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 13:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/3tyMuyNGxl9/JTpfG9wy5STTDXP4zgpuVytW5Bf2RQ=;
 b=1N4DzAUaZzHGMJUuctWm9jjTj+Hlt0RU6xvleoRgMN4JB2CoLEXrR8P2V4wJBHhVK4
 z01UE40LvyX/cp9HNiVKfrwCEk9iLZB5ebCqw86stRBG9J2NjxNQUsnF+eIENaCcyrpt
 MdoT8p1zBA8odbTrdpdcTrkjTjApuCm1lTBt12DDb6GUSfvXrM/+GqrPXDdG9Unt/mTd
 kf2tMbhakZfrLdmQizJWbhcFCGEd2h1vy57hfRqNPgmDIXGS8Gh2E+UQ539D/QxKHLvg
 3HZAt1P1Un36o1p4qsbYDmBPjzZPbIdE/5idWLijiVEaoHO4abGjbTpEA7rE7+bM5Mct
 LAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/3tyMuyNGxl9/JTpfG9wy5STTDXP4zgpuVytW5Bf2RQ=;
 b=fEWA1towterZ46aJAwriw9fuHYbWOdnMV5YGRQtjvCeRgXKpHYakJxvgKXTx1xmyAO
 4knl2fxoom0NfIcQlBcdqWQi2pBMn01fx/7V/ucamfjp+378OtGx8LxIWVhfLxedH0ew
 +XZotV9m2RJba8Oflq8Y0kBqoJBd69yYta0u5WoovnU/vLU9zY4770NpllKbQUnrnjBv
 Dgt98GaovRCaReJabzaACFM+WVvr1q4yEkE/EbkUo5cutrEIeqQ2vrq8R+uGH2K8p+Jw
 m2Flr53nANIEB73uduix9QgclpgN1C2BoiU5dyCtm1A0nJ7aABt9jllE4wY+yzm9nsos
 eHZQ==
X-Gm-Message-State: AOAM532a47vTjmMQfrNhuZlXaL7mJ6RN0TfiTgcZYFF3YS4YsCS5hJvB
 Wk6m1r56ewnuSHpwOvGc35kuPwnY0vvgjA==
X-Google-Smtp-Source: ABdhPJzsJ7SxFJiutbmfRJOwhN41+CtGyTFvnUcvRXMjIA1wTYqciU2b3kw87YfQYueQVzDHm8z97A==
X-Received: by 2002:a17:90a:6782:: with SMTP id
 o2mr5378570pjj.165.1626898434553; 
 Wed, 21 Jul 2021 13:13:54 -0700 (PDT)
Received: from omlet.com ([134.134.137.82])
 by smtp.gmail.com with ESMTPSA id h24sm28777439pfn.180.2021.07.21.13.13.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 13:13:54 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:13:39 -0500
Message-Id: <20210721201343.2962674-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721201343.2962674-1-jason@jlekstrand.net>
References: <20210721201343.2962674-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/gem: Call
 i915_gem_flush_free_objects() in i915_gem_dumb_create()
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This doesn't really fix anything serious since the chances of a client
creating and destroying a mass of dumb BOs is pretty low.  However, it
is called by the other two create IOCTLs to garbage collect old objects.
Call it here too for consistency.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index aa687b10dcd45..adcce37c04b8d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -151,6 +151,8 @@ i915_gem_dumb_create(struct drm_file *file,
 	if (args->pitch < args->width)
 		return -EINVAL;
 
+	i915_gem_flush_free_objects(i915);
+
 	args->size = mul_u32_u32(args->pitch, args->height);
 
 	mem_type = INTEL_MEMORY_SYSTEM;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
