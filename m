Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CACC97AB781
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 19:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75DC10E6AF;
	Fri, 22 Sep 2023 17:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A2A10E6B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 17:32:18 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1c43166b7e5so21896325ad.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 10:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1695403937; x=1696008737;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=maP8YXhB08F9LY5OG0jMprTbidCF0YS16nloYI5WUaA=;
 b=PhHSuC1wjXTZo6C6EONzQQR73/4KIT4V+Dk30na4BzElBNJ8xT97dRy064hbzVrLqZ
 8KqDuCJYmW+yxw41I1gRn0F8kmzaMdq+9p1qj5W2MUmZp1IOHGuG+HT7OSf4DxyI8K53
 QRYsmpJnMH6odYkxDLC0bk+kBqRH8/iNWTbl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695403937; x=1696008737;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=maP8YXhB08F9LY5OG0jMprTbidCF0YS16nloYI5WUaA=;
 b=vijW5sg1BqmyxDk9NYOC6FFx4ilcF1s3LXRfibLBRfy5CZgYS1CELorAr1jrmznPRY
 jWlrWoW/jaXe9GiwL70nlLSm36QuAFQ02GXVhX9NGRc13WcA5egtYZaKm18Fvx4vZtTf
 DT7KC7asbt4fdB+BDNwZOOM2Srzv55tfSVw0F5QRCyPB3MzAHpg4WCWHGFlEn9OPB9+J
 qLTXZI84ZSbAbSO9rtIuAjiA3sKMc8X8E6o7sLNaJf+Ra+Yrp36ovQXyzhZMdx6CLP/T
 YMFjxAdkj7XHO+u+P/ngWtZy27nFgD9j96MQpN2sZlr1xvR7eOpofwF3IJTSYYVGgBDk
 vvEg==
X-Gm-Message-State: AOJu0YwOghUPolHyI9TSMHw4DBHCv6/fdp2k64+oyvlCrocvetvYWzXQ
 pNdxt9wDCLayMopuY/x+V+qFow==
X-Google-Smtp-Source: AGHT+IEElaiJXwd+cHN0UEyfbPuovVQdbx97tEz5jWVvCwnMzBcyrsLzHF1i0U0dBU7w1PZYxVLT7w==
X-Received: by 2002:a17:903:1cf:b0:1bd:d911:2a85 with SMTP id
 e15-20020a17090301cf00b001bdd9112a85mr102054plh.12.1695403937531; 
 Fri, 22 Sep 2023 10:32:17 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 v10-20020a1709029a0a00b001b53953f306sm3755352plp.178.2023.09.22.10.32.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Sep 2023 10:32:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: David Airlie <airlied@gmail.com>
Date: Fri, 22 Sep 2023 10:32:05 -0700
Message-Id: <20230922173110.work.084-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2029; i=keescook@chromium.org; 
 h=from:subject:message-id;
 bh=YV47XR+Dr1NybdP/JWrsHmoQYKkqVQbnuP88RsqPU7s=; 
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBlDc+dsj3+Vh5qemjuEPg29sGFlFmzA+yi/v3Rh
 XtvZqOfqaGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZQ3PnQAKCRCJcvTf3G3A
 JiHwEACLzTcgywMl1i+ngflg0YluRoEeJQAxOBHxuE5H6DZMdzVg2q1O7AYcZvuFgGEob07505+
 PzEtpDzTZH/46SXLgI4Sgl0XmudzghRjlp0XTK1UC22xnOBNM9k0OIJif5wStFA/0uiZLRrHII7
 A/+AqzgBiY88gBa4O+x8Vj0+JBJGnDCr0QudEO6XyIcvvmLLgiRCce78vOKBXTXq6Dktknkayr7
 GSRsmx3ZTid9GiUDFYYu7/JLETFdk3ZPoT0iX6O1OocWU9VVd8IE71u38u38X+AdokHQtuEXbCe
 GXNdGJrLV9VqJ6qvypVr3S1EhagL/Z+f7Xz/GMY6nMu+6H9YM0Nbh7PQ8fyD/y9rlT2jcsSJY3r
 eqE3X+ATIdov/4puub/Z5OUm9R4z3dXWHGfnc/vb5l24ZPzLfhFdjlnbl4LYKnZyxK/lH0OGSkH
 9Wks6MuSdRE+bNJFV0VibfzZlV0+wemFXXSlAxxVQGcZ7CWgQaV2w7wE1Y3AMJLRthOuVUU6Kts
 VfGI7p8XZRScEI6mnWSh8w9zLZOftTtdiCxcVj1gdXRTx2/K3Xfv0UkoHgdzOBqTTEPqGetCOjs
 WS30PIjoUXxpO+DRvCTjySDsnQXksC7AsjBRhvnXyIR8tgFSEAywP6FcLYaX3ltdG79BvgAkkzq
 Bs7QmlF kGRGYttQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm: Annotate structs with __counted_by
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
 Alex Deucher <alexander.deucher@amd.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Evan Quan <evan.quan@amd.com>, Xiaojian Du <Xiaojian.Du@amd.com>,
 Le Ma <le.ma@amd.com>, freedreno@lists.freedesktop.org,
 Bjorn Andersson <andersson@kernel.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Zack Rusin <zackr@vmware.com>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Nirmoy Das <nirmoy.das@intel.com>, Lang Yu <Lang.Yu@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Hawking Zhang <Hawking.Zhang@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

This is a batch of patches touching drm for preparing for the coming
implementation by GCC and Clang of the __counted_by attribute. Flexible
array members annotated with __counted_by can have their accesses
bounds-checked at run-time checking via CONFIG_UBSAN_BOUNDS (for array
indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family functions).

As found with Coccinelle[1], add __counted_by to structs that would
benefit from the annotation.

Since the element count member must be set before accessing the annotated
flexible array member, some patches also move the member's initialization
earlier. (These are noted in the individual patches.)

-Kees

[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

Kees Cook (9):
  drm/amd/pm: Annotate struct smu10_voltage_dependency_table with
    __counted_by
  drm/amdgpu/discovery: Annotate struct ip_hw_instance with __counted_by
  drm/i915/selftests: Annotate struct perf_series with __counted_by
  drm/msm/dpu: Annotate struct dpu_hw_intr with __counted_by
  drm/nouveau/pm: Annotate struct nvkm_perfdom with __counted_by
  drm/vc4: Annotate struct vc4_perfmon with __counted_by
  drm/virtio: Annotate struct virtio_gpu_object_array with __counted_by
  drm/vmwgfx: Annotate struct vmw_surface_dirty with __counted_by
  drm/v3d: Annotate struct v3d_perfmon with __counted_by

 drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c        | 2 +-
 drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu10_hwmgr.h | 2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c        | 2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.h    | 2 +-
 drivers/gpu/drm/nouveau/nvkm/engine/pm/priv.h        | 2 +-
 drivers/gpu/drm/v3d/v3d_drv.h                        | 2 +-
 drivers/gpu/drm/vc4/vc4_drv.h                        | 2 +-
 drivers/gpu/drm/virtio/virtgpu_drv.h                 | 2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_surface.c              | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.34.1

