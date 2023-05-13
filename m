Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E421270131B
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96AF610E6FF;
	Sat, 13 May 2023 00:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60CA810E6FE
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:22 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 d2e1a72fcca58-6435b851de0so6328261b3a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938182; x=1686530182;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=xOh8270aHmhQkt9lEUjS49SPgiz7MiCgITarxX9E6A4=;
 b=0jqUD1zjEi55ZfhAIwMWNWENT9MRrpNqKPwfQ1O+9RvhBF4O2kdCyXExTphM2+/m9k
 /jnyyeFCDa3H2au4xyKDmwQ25q0BQadY/AQ5keaYUsgrQKFeyRVTbA64tAv2mHUVd79F
 MA1woP6wnOSriWMc3ixbrjlmsjIvDoDt2FMBhOh/vWdW0IYpXN+YySWq8QleQOn1OCNY
 zaA45ZWqVu8O+rYagST5vwdnd2n7ifjmb0xsLWIRl0HT3SzfiTn9LZMpvRUt0vUY023R
 scxbCiPEhmmQYIdSQSSJVaEk7yZ8fAWjNetppIAeHmtlBBJ2ncdcrr67LCrk49c7ptKV
 AVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938182; x=1686530182;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xOh8270aHmhQkt9lEUjS49SPgiz7MiCgITarxX9E6A4=;
 b=GvWYJhNImn0KFDs0F3xrnijdxnPRbWYQlSXvRGubWXwtc3AsSYFDIdogjBA+zSnrrp
 qJrZpFOxU4AueaDoz6dgimRR6pB2JMdWI3lLDSG6U/fLeY7zHfKaRww4uFm5DXz/gZ2I
 4P9vd6OL+MfqeuR4UcmsOlGjXVbMDJ9TDQ2yZHOc9L+8h28mrd8g5dMFQkoN8DfV/3eo
 vDdUqCgt71GqaHgydgsXJBo+dFHPxaiQsg86TrOoznHXfm8bQXsDIP0qayCsU44FRrvV
 7Hh7V6sfni8e4SdvvZtpwVGjYSRUf/gFJKVJArOMewz7y4qy9RJkk1ow0jFtJXA23HsL
 0zGA==
X-Gm-Message-State: AC+VfDy2UhMcS2S6G2BV/CyoWpU7q1n12XJEugiTya0OgLJYJVSqBaW+
 TDmawFf3f/7rUn2LyJig1kh/NkkueJo=
X-Google-Smtp-Source: ACHHUZ4jgx7mBorgy6buawkOwqeHbNOdHMLcx00pmvGCjodnLruorEbphmkbg9mH6m6+8x0sTFFO0bzj3qo=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6a00:1790:b0:64a:f4ac:3433 with SMTP id
 s16-20020a056a00179000b0064af4ac3433mr565273pfg.6.1683938181992; Fri, 12 May
 2023 17:36:21 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:40 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-9-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 08/28] drm/i915/gvt: Use an "unsigned long"
 to iterate over memslot gfns
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

Use an "unsigned long" instead of an "int" when iterating over the gfns
in a memslot.  The number of pages in the memslot is tracked as an
"unsigned long", e.g. KVMGT could theoretically break if a KVM memslot
larger than 16TiB were deleted (2^32 * 4KiB).

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 92ceefe1e6fb..117bac85ac2c 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1619,7 +1619,7 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 		struct kvm_memory_slot *slot,
 		struct kvm_page_track_notifier_node *node)
 {
-	int i;
+	unsigned long i;
 	gfn_t gfn;
 	struct intel_vgpu *info =
 		container_of(node, struct intel_vgpu, track_node);
-- 
2.40.1.606.ga4b1b128d6-goog

