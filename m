Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683AF6B564C
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9D410EA2B;
	Sat, 11 Mar 2023 00:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C253A10E311
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:08 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 i15-20020aa78d8f000000b005edc307b103so3604447pfr.17
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494188;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=5rhB2a1dGUQodXCAV1sLu8Trgm2geLJIaCstXFeDsp8=;
 b=GB1gArfoEAh+1WeCcjFVNp3vGLQPOrtMQm3umapPCUNXovRZEPAgcDRZpaYhW1tf9+
 CvhEy391fDyT2xqQ1g8qmuVWNBmP7UVJsFcL3mgm7RaKcql7bw7PdbrcK9UQnXnwem1r
 FU9LJcIGnJbh9gm9H/XJuz/Dq+mHbXKaD4dBo7vYXZwCIQctrdx+IoLOGg34exedOP+u
 2UIixuFO6RzJmTnpt07kkUCpmLTwmKqAgAU5/2WAo13OkxqmFkUmyMZjfrqgOFlBa7hO
 I1fwoI7LFYng69bDtaVnS5BZj1UDwY7V1Vyazsgnc4KzZhcVvFJZLbViqdtNYTuGxtqF
 FROg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494188;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5rhB2a1dGUQodXCAV1sLu8Trgm2geLJIaCstXFeDsp8=;
 b=jfLmSG6zvPeMOMI8viGUevJMi+Klomy8cItSTbU7o/sHlJX1NmzmbHkkhyi2bz6I1S
 mPZCfwlwDwGWb3I8U5E3lzq0xnljkCL8NQi/aMrlfhdLRxrc2gU4Jb4Gd8S+6S2btKjD
 gBzAvMAyoW/REeNV6e5Lv8GqAxlSsRmpqgrI/GlkN6NvmISj5i/qneF5o6pMBHhWUPhf
 QiOxOeENoEv3+7nd+MeTF/8xpI/Qpv7M4rvVIDbzLLgaxSrW4KFKYdtvGRaal7zfH3rr
 yHopvuDgIWtrNHC7v/OzIFLTRdWKTU8SY9Wntn4SzVjsSNbp4vUv768LQi9XjQM5h9Eq
 NHuA==
X-Gm-Message-State: AO0yUKXdfO1T1v+4cDO0t2BWN6a+dwwgN/pzyD6aXTRi9XTlaQfwQJmw
 e3LYSk/eeGpPVJRZoEyu7DoJfbEeWmo=
X-Google-Smtp-Source: AK7set9sw0CZVcFqZrfDflUkQTT1tENe6w88Dfa9HFRo7lMUTe6dGvFxBL08Vzw0chBY7MhZsiabz11wK80=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a63:7556:0:b0:501:26b5:f43d with SMTP id
 f22-20020a637556000000b0050126b5f43dmr9777394pgn.0.1678494188381; Fri, 10 Mar
 2023 16:23:08 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:32 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-2-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 01/27] drm/i915/gvt: Verify pfn is "valid"
 before dereferencing "struct page"
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

Check that the pfn found by gfn_to_pfn() is actually backed by "struct
page" memory prior to retrieving and dereferencing the page.  KVM
supports backing guest memory with VM_PFNMAP, VM_IO, etc., and so
there is no guarantee the pfn returned by gfn_to_pfn() has an associated
"struct page".

Fixes: b901b252b6cf ("drm/i915/gvt: Add 2M huge gtt support")
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 4ec85308379a..58b9b316ae46 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1183,6 +1183,10 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	pfn = gfn_to_pfn(vgpu->vfio_device.kvm, ops->get_pfn(entry));
 	if (is_error_noslot_pfn(pfn))
 		return -EINVAL;
+
+	if (!pfn_valid(pfn))
+		return -EINVAL;
+
 	return PageTransHuge(pfn_to_page(pfn));
 }
 
-- 
2.40.0.rc1.284.g88254d51c5-goog

