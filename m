Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A75AC767AEA
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A9D10E1A5;
	Sat, 29 Jul 2023 01:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486C410E7C7
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:02 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-5618857518dso26881807b3.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594561; x=1691199361;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=/2DXbiQb11naI17RMd9UQ+SDW96I3DO0Ug1YMgWLfXI=;
 b=N/Xuo31FD/HpJ/r+aiswhIOdyyLh/aqswWM/9gDeiWpXkOdw/BybOvDSugphjjH8vY
 czkCQ+tWVfw/K0ROTwpFPjyoZ51Hk33bVR6kSeUS5Q07NBHU+9puAFJWpliJC7Kcnsgw
 DFvz5oS/ppK6Pc7hv2pMJ+KN22NAhA7ZjuxoVq5Zi9bmUdnU0M+QCo2g8xsLagNC4PKy
 saSZeaXWNfeMQ5IHCoKm13WWjRyS4qfzbr2FQrD2W4y2GkvB0Xbs2lZZrrJ+f/6Os44D
 CcefGXGMTcsMhro4vMfe22toBHH+4FqzhGk8KS/5pO5Cd3dH/EcnHrsxFwYJ1GujncZ1
 /cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594561; x=1691199361;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/2DXbiQb11naI17RMd9UQ+SDW96I3DO0Ug1YMgWLfXI=;
 b=RGI8c57VSoJj4SYTs5Sv9pjQBrylzCiF/3UcvPAwjHWgm5srysOxXB9KJo2qi2wGrT
 WVgEbF5EAOkwAq/cC1YH5EnYyBfeKPrDK5h+c2EhlvIT0pYMWnBl6CkyslhRJhAyRJi0
 3NsAEJPb1oqXYIR9Nb5ed1ZCdSffP0dl5IWVZOuYRcG1TS0obMcYIi8NIXHWBrAq0Kel
 hHCHHTkqSfR4FZE34yC6raySjqrO0WIuJtqgIIf4FL0Dme15WGtRG+B8MiPmuzmEe5xj
 j+yX3C0hraVsZbPbgJTpA+qsQaYOyJZSMEl9pPujTpV0mZd+pltYVRyZ2hDHQ22AQjLE
 dkMA==
X-Gm-Message-State: ABy/qLanaXrmsdfNhh09Xl+yGXWQ79YXOqwv+ECHdHDmPpPPOT8sW0Gv
 b5+u2jyigQ517LWpTnrjp96C1YN7M60=
X-Google-Smtp-Source: APBJJlHjJijCc55w0wljCYyBWJLS5e6GQQI49bMEWRqbhx7NrZHhLmDEmMDXWNJlzx+OwSHEGbtvbQN0Kcs=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a81:ae13:0:b0:576:9519:7085 with SMTP id
 m19-20020a81ae13000000b0057695197085mr24135ywh.7.1690594561504; Fri, 28 Jul
 2023 18:36:01 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:15 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-10-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 09/29] drm/i915/gvt: Use an "unsigned long"
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
 Yongwei Ma <yongwei.ma@intel.com>, Ben Gardon <bgardon@google.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use an "unsigned long" instead of an "int" when iterating over the gfns
in a memslot.  The number of pages in the memslot is tracked as an
"unsigned long", e.g. KVMGT could theoretically break if a KVM memslot
larger than 16TiB were deleted (2^32 * 4KiB).

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 97c6d3c53710..6f52886c4051 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1620,7 +1620,7 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 		struct kvm_memory_slot *slot,
 		struct kvm_page_track_notifier_node *node)
 {
-	int i;
+	unsigned long i;
 	gfn_t gfn;
 	struct intel_vgpu *info =
 		container_of(node, struct intel_vgpu, track_node);
-- 
2.41.0.487.g6d72f3e995-goog

