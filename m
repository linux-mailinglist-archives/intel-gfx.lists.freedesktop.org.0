Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B13026B5691
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB7D10EA52;
	Sat, 11 Mar 2023 00:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FA610EA36
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:57 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 k17-20020a170902d59100b0019abcf45d75so3562209plh.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494237;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=x2tVYLFtu4+/4LAPARn3E33zkHftYTv9vOX58pVkWHM=;
 b=eCTAn9KE2O9xKHWOxj1VUE/UZXTx6Y1mDDTMlkwbdR0Y57s9PpUrM5h9i2cHbxsnki
 t0637AV0rExfo48KvvrqnyadfUnxBMwpuXsf8bzU9+CnuuH5alcmDXRXkCkOTywDKJEk
 XcU2Ssqaps8aM9ojs9FjhyBohQxSawze04pO8kWuerEOURvl7R99eb/R/ZcwEpa5D8mU
 TLGucsOnbjVeWTw9U9PMc6v0xVNdb3bFtznClK5hKBNddFaRNaHEDwN47WSFEGxmM3iV
 bkMq0Bn8TSiu6JuJ5U2kGO4Zf7ybt6AJeJqWZFsgqPjAfErV+ulDY+iqxXYTBp35bmjn
 a4Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494237;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=x2tVYLFtu4+/4LAPARn3E33zkHftYTv9vOX58pVkWHM=;
 b=yZrQ20Ob2rm6MYa0DKIzvnlFxQSXFFyuaS/0m4ZgqNip7+JbqmuQQ6Ge9P0nPCP3Xb
 FTxJ7VqIZIteLQiJB2yl51DoRJGnC2INYD7w5R5gRD3lr8LW3Tx7tgyfMrxmF2xRZI5G
 DUn4G6B7UVeT6AoJI2b9hkmGvyV1YCih4pOe8STohif9DbGEwaizHt4BWGzUAzrKS07v
 mUc0BwqnuQ0c8D8SeIvVsjD20Q5dBeG99WmbFpZO5BZBYdj0rQNoM3YEZOufWhhk/UIz
 hZM5oFf/IAaAPWkt2WRAErvL3b+K+rnkgnys+zIC4OAu11LrIdbom9AB7DCwxT7+Yu9H
 v9Nw==
X-Gm-Message-State: AO0yUKUNaoCcsoYt83YC955OQZherSL78oXRs/Yk29vmiKE33puUFOVi
 OHK/k9rB17jtaPWYnzDjryKyUiLqorA=
X-Google-Smtp-Source: AK7set/9DiEaGFm/frdpvFkcKgynFsB7l9O/lCeTPJ5Btk1PEMlu/T/014QaQyiTK4eR3E2EyTqi6Wr5p4Y=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:7783:b0:237:9029:c29b with SMTP id
 v3-20020a17090a778300b002379029c29bmr10323383pjk.0.1678494237678; Fri, 10 Mar
 2023 16:23:57 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:58 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-28-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 27/27] drm/i915/gvt: Drop final dependencies
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
index d16aced134b4..798d04481f03 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1599,7 +1599,7 @@ static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
 
 	mutex_lock(&info->vgpu_lock);
 
-	if (kvmgt_gfn_is_write_protected(info, gpa_to_gfn(gpa)))
+	if (kvmgt_gfn_is_write_protected(info, gpa >> PAGE_SHIFT))
 		intel_vgpu_page_track_handler(info, gpa,
 						     (void *)val, len);
 
-- 
2.40.0.rc1.284.g88254d51c5-goog

