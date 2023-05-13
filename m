Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6DA70134E
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFBF510E716;
	Sat, 13 May 2023 00:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CBF210E713
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:59 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-b9a7553f95dso20731181276.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938218; x=1686530218;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=kZXl2d46AVzuxVL4wEArY8+PLpXkOpan9Ss3n2LOe+w=;
 b=PJ5ujw7k63/285aFZkaQIW9C8AITUzrBCxCkRLS/LiTK9rN7s/xhYfAhELQh3Xc0Dp
 qwHgb9Q+rR7cr9mg0FC2zMKRANFPFRynMfwOlg6sMHOcrz01TJa1ozCj4rJ22fB5EanQ
 plr70rxThmIu9VPuBvntxszlIAqp7P9+Cb0RXR9VYF1Tfha3i51cp7E02H+pfNU7gjwH
 Qsu0+cJSYB4yfMq46ZR7bCp/XTq4ITg86KKOK42YezbsuXPb5UA04cUNk5Wy9d7M4J4Z
 I6JBX6bi0Ec5M9URC0LcHCdWva32fRIe1s1LV8JbP2g40yLwGpBkoH9gr5riwEj5E2wV
 iXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938218; x=1686530218;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kZXl2d46AVzuxVL4wEArY8+PLpXkOpan9Ss3n2LOe+w=;
 b=RBoQRl1r4J7+oMXdfh8GDIppALWaE6nbkQyIEKGT0/F8myfcVUYDa94ZghiN/BYzQs
 PSgvPK9fQPhya+xE8iBKAw8uduzqNRqh+VaoHIfxcHWelviFFTfld09exJJZt030gE0V
 qrgdvg1iI9iYC87iTRvhKhf14Mzb+hRyZ+eCX8ovI0Gj9y4sGyc6tjmfo4l80PlRWK3x
 bns3Tj44spmjbokuY36fFxgtXt+rfADPj4LMpUXDZqGQIMktvVwWJDQIGwYKn5VgnZ7h
 Yff5pc0vzknpGfH3OKyG1FTSG2Fc+SlvIEAbzOECYoUdJdokLiJ1XWsCNCkmclu8HCG4
 L5xQ==
X-Gm-Message-State: AC+VfDwZ4H+66Kq4nJNO0S9DO84ROL+SbzoW/3LMR8NX8ILc3tpgvVc8
 4kiU7VrmvPTGY3V3ornYXG/RcCc1Qx0=
X-Google-Smtp-Source: ACHHUZ5UUSJXsA68sfe6L609Rbep1n1mm8SDVeM7Zb2GXmQQSlQpMUrMf5Upl9tIWgk9JCqeiRH4Jn9I8yE=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:1283:0:b0:b8f:6b3b:8a0a with SMTP id
 125-20020a251283000000b00b8f6b3b8a0amr16018115ybs.6.1683938218722; Fri, 12
 May 2023 17:36:58 -0700 (PDT)
Date: Fri, 12 May 2023 17:36:00 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-29-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 28/28] drm/i915/gvt: Drop final dependencies
 on KVM internal details
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

Open code gpa_to_gfn() in kvmgt_page_track_write() and drop KVMGT's
dependency on kvm_host.h, i.e. include only kvm_page_track.h.  KVMGT
assumes "gfn == gpa >> PAGE_SHIFT" all over the place, including a few
lines below in the same function with the same gpa, i.e. there's no
reason to use KVM's helper for this one case.

No functional change intended.

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gvt.h   | 3 ++-
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 2d65800d8e93..53a0a42a50db 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -34,10 +34,11 @@
 #define _GVT_H_
 
 #include <uapi/linux/pci_regs.h>
-#include <linux/kvm_host.h>
 #include <linux/vfio.h>
 #include <linux/mdev.h>
 
+#include <asm/kvm_page_track.h>
+
 #include "i915_drv.h"
 #include "intel_gvt.h"
 
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 597ffc9d12fd..191b4484cc7e 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1584,7 +1584,7 @@ static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
 
 	mutex_lock(&info->vgpu_lock);
 
-	if (kvmgt_gfn_is_write_protected(info, gpa_to_gfn(gpa)))
+	if (kvmgt_gfn_is_write_protected(info, gpa >> PAGE_SHIFT))
 		intel_vgpu_page_track_handler(info, gpa,
 						     (void *)val, len);
 
-- 
2.40.1.606.ga4b1b128d6-goog

