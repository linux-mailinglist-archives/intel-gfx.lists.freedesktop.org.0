Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2C9598A9F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 19:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4B110E489;
	Thu, 18 Aug 2022 17:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A203A10E0F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 17:42:23 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id d10so2097678plr.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 10:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=UkNt6nCcXqcJWYaTT79KFNWGcjRsatrpz+QhyyqREsA=;
 b=FpBGm98tcyCcDV5VBHsVND3H5f7c4O5gu+L7nexlbDrSvBWm+3Ab50yu222MFCOE7e
 0/DCdwc2kf7ZFyeUB03NGvFMWwnZvMcnZjlx09qtxoTlpuYL5GKyxQZJg+ioiZCsAKzb
 0EP4KpgMQq9n+A2L9qQMEMjZ4fnB0rBrjWEnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=UkNt6nCcXqcJWYaTT79KFNWGcjRsatrpz+QhyyqREsA=;
 b=XriZhwkTuZNR42RFgP+HpC1fTkkIMS/h19f0pNgG8YEV8nXJWIINitnMO9cIkVlcS0
 hVSgtupvq6T/4fHlQb6gQBYMoZ/5+pVCQWX8bmMHC+W5I9Q0244sAPUmpSjWnn+cCf1Z
 bHSfFY5COdcStj5aGT2WW8KLqkutEonBZNzuh/AvjEXsB/bRyHoM71/1R0f5oEl7PDwS
 uzVNjPDio/LtUMRyvHgloLz4Cnh3ZrEQR5nRFxn4wxr3oBbdpWDoDh+1mq/tfg58yH1t
 nkpLA/4knBtqQ4qE8QL+GkqzpXTLour7QBsU4HuPZ6qFstL8mgruHalovQoSEr5q8RLF
 P9Hw==
X-Gm-Message-State: ACgBeo34x7mntA9sEgwN4vUUpkKlzXM8ItfqZq9iUwxpBXzNOSWYXENW
 C7BHNp6iDeTfL1Po55hgqlh3VLQ1Y5Zs9eoI
X-Google-Smtp-Source: AA6agR7sHAiBKIKmG6Ngru74ILtEd3hsDP/m2s/TJ7WWvZPu9uGptnWU5a9LaDPrDI1ISk0F8PR/BA==
X-Received: by 2002:a17:903:1248:b0:172:614b:234b with SMTP id
 u8-20020a170903124800b00172614b234bmr3503057plh.169.1660844542952; 
 Thu, 18 Aug 2022 10:42:22 -0700 (PDT)
Received: from justonli.c.googlers.com.com
 (137.22.168.34.bc.googleusercontent.com. [34.168.22.137])
 by smtp.gmail.com with ESMTPSA id
 b2-20020a170902d50200b0016a0bf0ce32sm1699409plg.70.2022.08.18.10.42.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Aug 2022 10:42:22 -0700 (PDT)
From: Juston Li <justonli@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 17:42:05 +0000
Message-Id: <20220818174205.2412730-1-justonli@chromium.org>
X-Mailer: git-send-email 2.37.1.595.g718a3a8f04-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/pxp: don't start pxp without
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
Wait for the bind to complete before proceeding with startup.

This fixes a race condition during bootup where we observed a small
window for pxp commands to be sent, starting pxp before mei_pxp bind
completed.

Changes since v2:
- wait for pxp_component to bind instead of returning -EAGAIN (Daniele)

Changes since v1:
- check pxp_component instead of pxp_component_added (Daniele)
- pxp_component needs tee_mutex (Daniele)
- return -EAGAIN so caller knows to retry (Daniele)

Signed-off-by: Juston Li <justonli@chromium.org>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 15311eaed848..17109c513259 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -176,6 +176,18 @@ static void pxp_queue_termination(struct intel_pxp *pxp)
 	spin_unlock_irq(&gt->irq_lock);
 }
 
+static bool pxp_component_bound(struct intel_pxp *pxp)
+{
+	bool bound = false;
+
+	mutex_lock(&pxp->tee_mutex);
+	if (pxp->pxp_component)
+		bound = true;
+	mutex_unlock(&pxp->tee_mutex);
+
+	return bound;
+}
+
 /*
  * the arb session is restarted from the irq work when we receive the
  * termination completion interrupt
@@ -187,6 +199,9 @@ int intel_pxp_start(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return -ENODEV;
 
+	if (wait_for(pxp_component_bound(pxp), 250))
+		return -ENXIO;
+
 	mutex_lock(&pxp->arb_mutex);
 
 	if (pxp->arb_is_valid)
-- 
2.37.1.595.g718a3a8f04-goog

