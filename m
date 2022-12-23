Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9FE6549FC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61EB10E5F7;
	Fri, 23 Dec 2022 00:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C065810E5EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:57:57 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 s2-20020a170902ea0200b0019247629ee5so2389504plg.17
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=8k64KFPY2FFl58dlOKiSt/6ffoasCJxRfQQP/flk2s8=;
 b=ADGdSRhE19CpKn3Mx8Gw1o4OLrTbUVUIoTOjSZyGWqJNQL1SN7v8qQsh4q5cXqj6ZL
 hD6fxxwCTl4y/NNCwu4uuodODhWf/UAdCQYUzyxbDjQPykN+rUTv5icpILVoRgxBnOw/
 yeOcWPtNLNwR3Y/uk6j76NAwfZg7MRzWvFz7ko8kkCzO6CB+8LvhG1Xfv7qgN06BwTPR
 tE+2BbMHDSCHA/Y16iC2bZMsqqlYWqoBvXSOH7eVW1O1/dc8s+Fc+brkRiaAncEhUjUu
 kRfRqXhHbJkZXcp9gW5MeZZhEQ+HG6DbvBb/0kC1i/PgW4/d5vbzVWUhK143REl6RJgm
 KT7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8k64KFPY2FFl58dlOKiSt/6ffoasCJxRfQQP/flk2s8=;
 b=h4teNbuhoXFEk/NsBNjYOd5pAUAZoaNPDHrQo6TTxZ9tVwE3oUYHqgBYlRLNJgRujC
 CVXflRFKiJPFiC4ZEYJzACQ8laBS+rxInQ5zHAaYiYc78NrfohgUz3g4N/KZJRM96JLA
 T1XRfPCbKzTdvoSxi4EE+6FUM6Q+mzp9+sEahFBHEFMTYD5Dv5Bfat2ISGxrM+0iMtWq
 E83enUti/1FFDPth+i77s2Z8AENqzBrA1Afc3vrFRrOqxF65g22VDA5APgh4HVETRwNG
 s8cjUahCv953yD2Isyfte5JlrNtyicY0mR9vzG0xgXP9K3zoGUP8bvhmy7pnW0XW+1Au
 k7qw==
X-Gm-Message-State: AFqh2kqgm5nOz98gn8bSlAg/Bo4DNK7xfSHf+xOFRH24lelpjWTzaDLr
 jo58gGgP8JS3MXzXvYxrsraRNxXxB2U=
X-Google-Smtp-Source: AMrXdXtZzqXSfhAfIWlCK+WT2T5JZRV5LJOH9tPTZxKT6bo1HSjiqq3ll6wCTHVFE26Ee59g4OXn+ZR2sNc=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:7794:b0:189:6936:7031 with SMTP id
 o20-20020a170902779400b0018969367031mr457317pll.31.1671757077092; Thu, 22 Dec
 2022 16:57:57 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:19 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-8-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 07/27] drm/i915/gvt: Use an "unsigned long" to
 iterate over memslot gfns
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

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 6f358b4fe406..5d0e029d60d7 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1635,7 +1635,7 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 		struct kvm_memory_slot *slot,
 		struct kvm_page_track_notifier_node *node)
 {
-	int i;
+	unsigned long i;
 	gfn_t gfn;
 	struct intel_vgpu *info =
 		container_of(node, struct intel_vgpu, track_node);
-- 
2.39.0.314.g84b9a713c41-goog

