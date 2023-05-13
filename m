Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CA570132A
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFE610E6FD;
	Sat, 13 May 2023 00:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA14110E6FF
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:24 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-ba2526a8918so14116922276.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938183; x=1686530183;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=kGWzOGNnYX/vPHab7hWTlXeNk8DC7e1HwcSSdi2i4zw=;
 b=cSZ/VlxdW4Pvbsz3re6QAwL7WZtCGSlM3rK2fKtPlroG7b/uYLspYK3BUBxjTTVT5H
 rExIRgrg9h7XNVV7S8JfLCc6hKMFeVMPfqlR+bwL2034YQgp2h3wOyvRQhcjmYy/0CWV
 Tb+gGu3prYb0KrHv7Vpt1Y+ROsVp45lgtRd9usk1mFWD3GZrX5I8Fe1G/lbZAI8o3lEr
 mWJgGWPW0bvh34EiK1V42Nbd2UJvbVYh21LbBL0Z3RhkD6kdDit2UIz+fEakFenDOmre
 edXxYiugm9t9TfwtH8lYTgo0OpSfKkvacHAeaJpt4SGriTEuFWd6Nrv6Y3L/CUCP08tz
 nGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938183; x=1686530183;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kGWzOGNnYX/vPHab7hWTlXeNk8DC7e1HwcSSdi2i4zw=;
 b=Bg7soCzaOTlVrloVWW2yXBJfPbI4zKWqctnkWLMp+EYtKjKfq68u9SQLOFiuTrz185
 69QOVUBuSRS7PBxFDgRwHl2hyHQO1cagpsBnztTcavVJ3Z0U8ZuXRzmhbjaWMwM2Ons0
 BmPziRL3sArN5QHVsSt2L5xYQy2p0w4Z4fJ/4DzRBduRILqu6wOohbz9BUoQ8bcfj8Q7
 PXkFqgEhdUZJoOke036i9+SIrNGA39er3Q/Y3W5F46UOodRNpOBR+uTj/sH7Is9JzCye
 O6utJXS3O2y0Sl6iJIvBqapdZAY0bQztYfPhcakTT6fDxLEm8cbKQX3QZZTqI65S2ZHt
 Sckw==
X-Gm-Message-State: AC+VfDwKZlSTpLq0F1tjNUKHYQ0ysvTqNCppePLla7zUcCU5GOEFYS95
 sRyM9dEPhKWc2cFAEapbn9LOUg4WLZU=
X-Google-Smtp-Source: ACHHUZ44XO16MxtzD/w1KoYsys54d1K4j5Ud62MPtg/R3svFiezEkhnbaVUuOmGlNoGAUGi8FiukEJhRUEo=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6902:4a9:b0:ba7:6620:4caa with SMTP id
 r9-20020a05690204a900b00ba766204caamr88646ybs.4.1683938183796; Fri, 12 May
 2023 17:36:23 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:41 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-10-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 09/28] drm/i915/gvt: Drop unused helper
 intel_vgpu_reset_gtt()
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
Reply-To: Sean Christopherson <seanjc@google.com>
Cc: Yan Zhao <yan.y.zhao@intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Ben Gardon <bgardon@google.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Drop intel_vgpu_reset_gtt() as it no longer has any callers.  In addition
to eliminating dead code, this eliminates the last possible scenario where
__kvmgt_protect_table_find() can be reached without holding vgpu_lock.
Requiring vgpu_lock to be held when calling __kvmgt_protect_table_find()
will allow a protecting the gfn hash with vgpu_lock without too much fuss.

No functional change intended.

Fixes: ba25d977571e ("drm/i915/gvt: Do not destroy ppgtt_mm during vGPU D3->D0.")
Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 18 ------------------
 drivers/gpu/drm/i915/gvt/gtt.h |  1 -
 2 files changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index f505be9e647a..c3c623b929ce 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -2817,24 +2817,6 @@ void intel_vgpu_reset_ggtt(struct intel_vgpu *vgpu, bool invalidate_old)
 	ggtt_invalidate(gvt->gt);
 }
 
-/**
- * intel_vgpu_reset_gtt - reset the all GTT related status
- * @vgpu: a vGPU
- *
- * This function is called from vfio core to reset reset all
- * GTT related status, including GGTT, PPGTT, scratch page.
- *
- */
-void intel_vgpu_reset_gtt(struct intel_vgpu *vgpu)
-{
-	/* Shadow pages are only created when there is no page
-	 * table tracking data, so remove page tracking data after
-	 * removing the shadow pages.
-	 */
-	intel_vgpu_destroy_all_ppgtt_mm(vgpu);
-	intel_vgpu_reset_ggtt(vgpu, true);
-}
-
 /**
  * intel_gvt_restore_ggtt - restore all vGPU's ggtt entries
  * @gvt: intel gvt device
diff --git a/drivers/gpu/drm/i915/gvt/gtt.h b/drivers/gpu/drm/i915/gvt/gtt.h
index a3b0f59ec8bd..4cb183e06e95 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.h
+++ b/drivers/gpu/drm/i915/gvt/gtt.h
@@ -224,7 +224,6 @@ void intel_vgpu_reset_ggtt(struct intel_vgpu *vgpu, bool invalidate_old);
 void intel_vgpu_invalidate_ppgtt(struct intel_vgpu *vgpu);
 
 int intel_gvt_init_gtt(struct intel_gvt *gvt);
-void intel_vgpu_reset_gtt(struct intel_vgpu *vgpu);
 void intel_gvt_clean_gtt(struct intel_gvt *gvt);
 
 struct intel_vgpu_mm *intel_gvt_find_ppgtt_mm(struct intel_vgpu *vgpu,
-- 
2.40.1.606.ga4b1b128d6-goog

