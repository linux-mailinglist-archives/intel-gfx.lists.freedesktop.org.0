Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E1A71261B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 13:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE3010E7EE;
	Fri, 26 May 2023 11:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 021AC10E7EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 11:59:37 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-3f50020e0f8so12158525e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 04:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685102376; x=1687694376;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xmuBDrlBpQbtrys/Qf8AocII7gV0XMhC8+i/ej21270=;
 b=HtZKWKl6N4Hu9jhvdgpgoBwmpeb0KQxF6iy25p4ERux2pJYIJQbc74jN/4Z6Wh49DJ
 OkolH5SrvNC3axkhttZ7uy0n6eA4Rw1aKcNKRw8ySrqVJoEf1sleGn16+OLzFpSHtXbn
 WwgBETxaKo/ymJvkuMiomvLYwZiyJuTDiLB78oNxBnFhkfMfWkdxczLQpHStsmeZuX84
 yLSozzy9hs4GzjV5aG4+HqQTrjOEjJnxTNUFikz1NmmPKy/YNtBe5GcU3G8k85n5Y9Mz
 QwGbfk3eaZSh25DHpM+wNFiEKyHqvGmmVsWYCqn2CT+pPoNoELnh8mIwuIVsM4tEknfx
 M9oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685102376; x=1687694376;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xmuBDrlBpQbtrys/Qf8AocII7gV0XMhC8+i/ej21270=;
 b=fvJPacERab6AlMlSuW6g8ln3GU7+RpCdIx8p++LUjwzlpstAWh50WF3q1DWNz/qYH6
 7CpHZ8y64mApN9JJntr4PSK8gpa5XhrnUpX9xUqlAn+xzGEPkhgzPvFlFrwTK6K5TS75
 VnskNPYG78QjM9VnDrPchxhDD9xgTDb13xD1A+eN6qkruE6Ha8A9mwuvneYzNrF8kd/J
 qxCV/f2tBdcmpptqvxeIYhbneWOq8gtVpiTACrsmJ+ICvKUVD11ew4zlqq/F1tZMcw8p
 5wmSK6odJO217u7T6agjcmLvWK6FOsYNAAxWNOy7CaFXcdM+uJQRD4oYuZz9WH5m+Idv
 aRpA==
X-Gm-Message-State: AC+VfDwhTOvFYhjAz8XOHb1HJmmFUdfx6+MU06moUUeicAIea/LOK2JV
 P05/pYJO8Sn/N3cnbkIrdft+qdaWwik/1FZvTA8=
X-Google-Smtp-Source: ACHHUZ6KQQagZsTWWsJi4zpOqN7RHhUd2mr8Ex4eBHrdpPfHi/9Qg5DZ7Po3996wiMzpzGgjNg3P+A==
X-Received: by 2002:adf:e2c8:0:b0:309:4642:8795 with SMTP id
 d8-20020adfe2c8000000b0030946428795mr4663108wrj.12.1685102376168; 
 Fri, 26 May 2023 04:59:36 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 s26-20020a7bc39a000000b003f42328b5d9sm4992147wmj.39.2023.05.26.04.59.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 May 2023 04:59:34 -0700 (PDT)
Date: Fri, 26 May 2023 14:59:31 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <f6b876f1-4dd7-4d96-bee5-966817cc1644@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: fix an error code in copy()
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Return the error code if i915_gem_object_create_internal() fails,
instead of returning success.

Fixes: cf586021642d ("drm/i915/gt: Pipelined page migration")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/i915/gt/selftest_migrate.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index e677f2da093d..a26429fd5326 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -55,8 +55,10 @@ static int copy(struct intel_migrate *migrate,
 
 	sz = src->base.size;
 	dst = i915_gem_object_create_internal(i915, sz);
-	if (IS_ERR(dst))
+	if (IS_ERR(dst)) {
+		err = PTR_ERR(dst);
 		goto err_free_src;
+	}
 
 	for_i915_gem_ww(&ww, err, true) {
 		err = i915_gem_object_lock(src, &ww);
-- 
2.39.2

