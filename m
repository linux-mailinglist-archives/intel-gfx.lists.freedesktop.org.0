Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9820B7AB789
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 19:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC10210E6B7;
	Fri, 22 Sep 2023 17:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA0110E6C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 17:32:20 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-690bc3f82a7so2327113b3a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 10:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1695403940; x=1696008740;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q96X+e6e2GphA8WEKNidppfkY54O3UO5SgYggFHsXis=;
 b=D2i987MsIealRDRy1XGX6kR0E0RRNshjZbWu+s/CRudwaELuqP6V7doxsc6nqRm5tA
 6t9/caaNJKieYCL8EX3zSvsW335/jAnVTQTjLfnuo0vkQNcePqTYH4LK/cw8+q7bXiPb
 YfJtP/3qjwCPTVDkSckyMgaHfJsP+RgKmoYPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695403940; x=1696008740;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Q96X+e6e2GphA8WEKNidppfkY54O3UO5SgYggFHsXis=;
 b=D+90VCULy0bh8Hw7d4/lwSi+oGNGJpVnRi2kS8ftVvmPggPfS/5GyyHKjHuaISkSdO
 UasfWaoPVSQJWIxp4NcT+4tfMA35VOQg7/v3ecX6oUq+uXSDpaf2g4P82DmNQV9g/6nZ
 JdOc70xcsFmGfdYR5Iu/RREDoonAGuYKIOvsS5mcg6EHmc1p3Dl/mJ98UKQGVxZE6G1x
 BEQh9i/UpI6eLHT//Epm3bGNpfe2kGHjbuHGJRxBaqBxqb7ihHYHMg2C22ob7Ut0cfLU
 s3zrcDooF9UB4Yeh8TJq6gF2YMGTxAmqoWBvMoDN3C3gyttH77EE63jNcaFOnRmMbPrl
 aj0g==
X-Gm-Message-State: AOJu0YxWN1RAJWBk+Z0P63UiwqIuJrGWMHsFUIzhbLhsr85SqZnMUXjZ
 1yUK6sF7hHAtNKI7Bg4PMoyZxA==
X-Google-Smtp-Source: AGHT+IGXr1Sat+m9Td0MGaNcSAWB3dRra4hS8nmW8pMNrVJgFfBDLEWjUeK3DqEHM0m4IjyMLEfwlA==
X-Received: by 2002:a05:6a20:9756:b0:14d:9bd1:6361 with SMTP id
 hs22-20020a056a20975600b0014d9bd16361mr200432pzc.11.1695403939966; 
 Fri, 22 Sep 2023 10:32:19 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 u74-20020a63794d000000b00565e2ad12e5sm3318350pgc.91.2023.09.22.10.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Sep 2023 10:32:19 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: David Airlie <airlied@gmail.com>
Date: Fri, 22 Sep 2023 10:32:08 -0700
Message-Id: <20230922173216.3823169-3-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922173110.work.084-kees@kernel.org>
References: <20230922173110.work.084-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1705; i=keescook@chromium.org; 
 h=from:subject;
 bh=SbNV7tt6Hho3aemFjM+WsFyDqpMFvSNtroJg7EF/6LY=; 
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBlDc+e99M+BFyGmat9Yjgpanw6UekhSMQhhAVfe
 PzecbdVf2uJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZQ3PngAKCRCJcvTf3G3A
 JhPmD/oDoTfSn61jeN+hZ6qtbqMVL0umbxgqdZnXY/WBbLuBKV20tcaMAcUgkDgD7IZTf9vLT7N
 QvsK/I3NzdeyXN9KRjg9P26c5TGRnuFhT5ow/Mmpjw2ZfwY/adYsynGhgMsY1zCzocr9Klih2M5
 ONqETCgHopA10PwXUTZcfeylbqK62rRaYAWtkuoi0RcYjB0ba0MiguwtlB6nrG6fwv2owEKE9yZ
 q2M6NVTsjfrdnESUtkpr+ZQMSdTP4DYj6WZCs8PEing/sqS9G43U/93adZtoUdXHfx6OIvtf4kR
 QVJDI5f2FtS/OLpfsJPETvUFATNLl9zt+qYEEI6Xo/nwVAIDi10lef4gFjjLtPRlK+1R5w0hwDl
 vKJUW0WgT4cnNhXnSosMUxrlYOzDiiFUv22K7MRCjwllhPuoEqIvmEu2skXTbfOi++COJZQENGW
 mjr4E/cj8Pue9+KM7OxnSvfWccW9jLZfobZ+Mt3QO0uwzIKFw3tbN6roSBWKQjPzGVWZBhoB7P/
 YBx8LyLPlIme4RIAinnRTvKcRBVmPKq0z5qb+ZrfdbS5SyUax0buA8IufSmAFbFNMVWiehiR7kj
 m3qIzz42RIlit5ahExdpEPXkGeqqxLI86EouMV1p14sfdA6bPnL2FdLAyVYLHh92VJ7BRKvGmB7
 gVsy2dUkMQ94AOw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/selftests: Annotate struct
 perf_series with __counted_by
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
Cc: Emma Anholt <emma@anholt.net>, Tom Rix <trix@redhat.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Prike Liang <Prike.Liang@amd.com>,
 Huang Rui <ray.huang@amd.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Karol Herbst <kherbst@redhat.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 amd-gfx@lists.freedesktop.org, Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Nathan Chancellor <nathan@kernel.org>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, nouveau@lists.freedesktop.org,
 David Airlie <airlied@redhat.com>, virtualization@lists.linux-foundation.org,
 Chia-I Wu <olvaffe@gmail.com>, linux-hardening@vger.kernel.org,
 Lijo Lazar <lijo.lazar@amd.com>, Kees Cook <keescook@chromium.org>,
 Yifan Zhang <yifan1.zhang@amd.com>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Kevin Wang <kevin1.wang@amd.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Melissa Wen <mwen@igalia.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Evan Quan <evan.quan@amd.com>, Xiaojian Du <Xiaojian.Du@amd.com>,
 Le Ma <le.ma@amd.com>, freedreno@lists.freedesktop.org,
 Bjorn Andersson <andersson@kernel.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Zack Rusin <zackr@vmware.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Lang Yu <Lang.Yu@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Hawking Zhang <Hawking.Zhang@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for the coming implementation by GCC and Clang of the __counted_by
attribute. Flexible array members annotated with __counted_by can have
their accesses bounds-checked at run-time checking via CONFIG_UBSAN_BOUNDS
(for array indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family
functions).

As found with Coccinelle[1], add __counted_by for struct perf_series.

[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: John Harrison <john.c.harrison@Intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index a9b79888c193..acae30a04a94 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1924,7 +1924,7 @@ struct perf_stats {
 struct perf_series {
 	struct drm_i915_private *i915;
 	unsigned int nengines;
-	struct intel_context *ce[];
+	struct intel_context *ce[] __counted_by(nengines);
 };
 
 static int cmp_u32(const void *A, const void *B)
-- 
2.34.1

