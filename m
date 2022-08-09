Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF77358E379
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 01:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330F6A2D19;
	Tue,  9 Aug 2022 23:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4147CA7826
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 22:58:56 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 f16-20020a17090a4a9000b001f234757bbbso6465616pjh.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Aug 2022 15:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:mime-version:message-id:date:from:to:cc;
 bh=/CE3AXejp62eOWrTktdD913X8Qp/d7aPq3QFRtMtXfw=;
 b=gzBY8Fzyj/bCVq1l0G0BhG/pWs1LITpkXXH3kDhRbYKSWN6Lz12jvneKT5yRM/2urf
 6ZvlhM4HvRcKmO4O+zJ7GLlnpoPrhlJTFZhEoF7d/kyWx0wRPj2bxumHn4q4XB7J0R3K
 IwzBjoqqi+IznAxufCqrdbjUxTtuHwOZRY3TqZ6gxR5qWgof73k1a78Qr7/rXZWhgysG
 aUpY1cQ1YJ3GuJ1YziZzWljipCCUNEd6UZOw2Ss3dkWDmr3w9pxEnYu15x4RGqCMsdce
 YybsR3Z8n9vwxjHZVduZEARZgrq22MQhwlUN8PLPpUG2AtWP2pXiCT6azbQXfAeWDbC9
 3+Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
 :from:to:cc;
 bh=/CE3AXejp62eOWrTktdD913X8Qp/d7aPq3QFRtMtXfw=;
 b=Yrzb60MllDDNdJQZsh7j0qV/y7waLhA4VrAPYyoybxOopdDu7vobCQ8kPId/z+D8CB
 TtrS/s+WA0pNgHXLIOykHRg1B/GLK/8yPcFxfBidge68wU8hsy/3Mz9c6o4/kFopsF+2
 Fq9yjRDEw+Xk1TzZwyHesybehPZ0cdlqGolLEiaSSnPM923tbo/dsOy1+DVMTreyDUmV
 2bRu92Mb0/1N47YzmQaFcLhx7AxyWBx6grFr6iy9juCqZWSweP3+363Tzx+ivR0orFkP
 HvPQXp5lR3Loa6AkVfeAaoAU3ba3hb1IfEYegjrqL6SWfRUs7CZup3Pfjcx23UIW9MWL
 B6sQ==
X-Gm-Message-State: ACgBeo3AyJu/iemR+jC715tfbRT3BnHzL+tMP871wIx5Y6ORzqv1eV2q
 VkSrt6pyXkrVrWvaxwox4TMnWkW0Xkvml7aJOwekASq1gB+VFmAW0Cmo5M/cDT95DIXhTqbPjBt
 xHya8nUQy7zbGy22fr1riHQGr1dGvugD2XcePcscw+wyFvRovIdNXskAqALJQ0yNzXxNz5SP+xA
 wJ68I=
X-Google-Smtp-Source: AA6agR6j5oPKaffWznJeQjZC7lgYLRFXTdLxaOmxsWFaVa11rRSwewI4/qKdUGJR+bJAX7GTydE8jhp8FCb0/A==
X-Received: from justonli.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:c7d])
 (user=justonli job=sendgmr) by 2002:a17:90b:4b07:b0:1f5:37d3:fb40 with SMTP
 id lx7-20020a17090b4b0700b001f537d3fb40mr690289pjb.12.1660085935368; Tue, 09
 Aug 2022 15:58:55 -0700 (PDT)
Date: Tue,  9 Aug 2022 22:57:00 +0000
Message-Id: <20220809225700.2002634-1-justonli@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.559.g78731f0fdb-goog
From: Juston Li <justonli@google.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH] drm/i915/pxp: don't start pxp without mei_pxp
 bind
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pxp will not start correctly until after mei_pxp bind completes and
intel_pxp_init_hw() is called.

Signed-off-by: Juston Li <justonli@google.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 15311eaed848..3ef9e4e1870b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -184,7 +184,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
 {
 	int ret = 0;
 
-	if (!intel_pxp_is_enabled(pxp))
+	if (!intel_pxp_is_enabled(pxp) || !pxp->pxp_component_added)
 		return -ENODEV;
 
 	mutex_lock(&pxp->arb_mutex);
-- 
2.37.1.559.g78731f0fdb-goog

