Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F25858E42C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 02:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4B7DF7C9;
	Wed, 10 Aug 2022 00:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7284DF779
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 00:43:01 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 j10-20020a62b60a000000b0052b30f6626bso5772607pff.17
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Aug 2022 17:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:mime-version:message-id:date:from:to:cc;
 bh=ZBB+wz8NYy4GDon8w8yQObiASWsP2PjDuGTzWUtSxqo=;
 b=ZIrjjBfUozLSld5BSr+QI2UBKdYz61jDfp3W4JrQtMrQMM0rnPIRwYhitcv8ZYYfDK
 TZgKmTjEyWfKn3PMb52OIeL94L+guDWtOYn8v3dXnJCu9/vKuR9932UC3BHpiuzG3wnx
 x6WeNJAbFFBGvU+iV2j5jC6w/Z4aDny81aSYmy/masy3+PAp9AEJtlnK7w5mQEdSfTN8
 tgOorwY8/77o3dZxdLzFBqXkO0CwxIT5YDALgTmmlpJtqT4y0Z3BQF9SjeZZqbpEoY73
 OOHR6P3lZydpubQuka7tc4QG6emUB29zgn+lsgfr+CUDjxku9sZhqHFMRtK4f1P8PJpf
 1SOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
 :from:to:cc;
 bh=ZBB+wz8NYy4GDon8w8yQObiASWsP2PjDuGTzWUtSxqo=;
 b=1TTXfBbaGeG+5ZyPKGELj5rN8MET80wW5frnIpwZKf2tjFFnMJVxj52b0HX15YRs8k
 J30uLbpMc1UF+wVnep2uBOukxKAxQ8BIClVRlGeB7+lNl3q6UTdqCTfE5hiT/3wVph+T
 qG4LgF9FbohZ34G4KndCuMK7QH4QgV2h0xcQsTnFqhdUWIAALA0onsHalqBqYiA3I7T8
 wI+UZQjdFLQSq7BCCeekxSXMcVM4izmS9t6YFgSjfw80VSwxNqAKtDK8kr7hgACxd8pq
 9biFPTmUFE5AmiUaB28DHbN5+e36wo8Xpv8Un4uZvy4dx5zxVyz2yH3SfVXSeMp6fTIj
 cyog==
X-Gm-Message-State: ACgBeo37ehF2nMjSWjFGVWwKcmJ8fZWUViZr0YohrtyvmRiHYNmL3X9B
 k2Pcqy1i1wc4cUZpSfB0te0Mlxc31pk7Oxf/nL2C0+Ec6ymOCB7IuP0PD+ssKchwZ/21KVL/Kq8
 qH+H27KaIYkqiQ50zPt38vb3K2PxtylF0qnpJdOQc+yia0CUsg8ikqILEJ3LLbwCWbXU/AYutO5
 9V0I4=
X-Google-Smtp-Source: AA6agR4KIGFzJApYyWfN5V3pEAoavSlbyVUkXSBS9NdXXIfBjv9LyKwCRR71dX6qBKiDnQXDxKQoE1qhLvAiMg==
X-Received: from justonli.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:c7d])
 (user=justonli job=sendgmr) by 2002:a17:903:2301:b0:16e:f916:22b4 with SMTP
 id d1-20020a170903230100b0016ef91622b4mr25146619plh.52.1660092180880; Tue, 09
 Aug 2022 17:43:00 -0700 (PDT)
Date: Wed, 10 Aug 2022 00:42:53 +0000
Message-Id: <20220810004253.3240393-1-justonli@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.559.g78731f0fdb-goog
From: Juston Li <justonli@google.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2] drm/i915/pxp: don't start pxp without
 mei_pxp bind
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

This fixes a race condition during bootup where we observed a small
window for pxp commands to be sent before mei_pxp bind completed.

Changes since v1:
- check pxp_component instead of pxp_component_added (Daniele)
- pxp_component needs tee_mutex (Daniele)
- return -EAGAIN so caller knows to retry (Daniele)

Signed-off-by: Juston Li <justonli@google.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 15311eaed848..8b395ebc430a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -187,6 +187,14 @@ int intel_pxp_start(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return -ENODEV;
 
+	mutex_lock(&pxp->tee_mutex);
+	/* check if mei_pxp is bound */
+	if (!pxp->pxp_component) {
+		mutex_unlock(&pxp->tee_mutex);
+		return -EAGAIN;
+	}
+	mutex_unlock(&pxp->tee_mutex);
+
 	mutex_lock(&pxp->arb_mutex);
 
 	if (pxp->arb_is_valid)
-- 
2.37.1.559.g78731f0fdb-goog

