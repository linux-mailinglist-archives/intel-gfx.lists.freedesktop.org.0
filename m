Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CD817266D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05E96ECEE;
	Thu, 27 Feb 2020 18:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85816ECD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id j16so3087533wrt.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sa4rjpnCRZG+mOP4kDfMIWoFaaDOaBg9gqo9dI0sc2U=;
 b=Q8i/thAu4sB0zOfpkVg4aeB9+8YycJKsHW9lLkFowQCoJ7Md3vUq/+1sdUpqXrjGyr
 KrsLHLRWSMmDtgt1jZuh5lETKC1Z7YrsDBV80gn0Rwrz/ACmhhOljOZPS7exSJ4EwmMH
 59z6zn5a3Zjm92gr1mjtfXTw84n/VvogZIJzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sa4rjpnCRZG+mOP4kDfMIWoFaaDOaBg9gqo9dI0sc2U=;
 b=mJZ/wAceUXfanXOfOoE+MNOwzldFuXFLoCdUW+GPFwn3UGN9QzbGWpykUwx9RUXozF
 7fl3JzWsEGf1KT+RqupeyTuObXDh3Jfx8N+B20H5hG3iS1YXEIQyr8PLFjZ4LNYLNeWL
 mWkN037GhLRuwlc9j392TpOAX8w5+GO8jrmuweZJWETmd+EoAIeOo4N5CXNTiF8ojoXz
 GObYedvMtPfiXMhEqrRgu7dtkdBwkyrhc4rCmYWrqDWVBIhymPYm3gJxt/agyLCy9O9a
 XLM+yvbe3elRYd3fqwhiaWbwSx43fv5hlUhyuwVSXcVCdtMpo6Kx4zSk2wFen0+kv5Cd
 qIIw==
X-Gm-Message-State: APjAAAXqia90h1e50yRKY3CiaBqtbQyxGoz2ClzQU6ItMt2Akiril79f
 BNpvUJZpLfMQiB8hsbFqLmfQhw==
X-Google-Smtp-Source: APXvYqz5vIACu+maqnRWpieyMqLjjQcAiwtZEPMqCalB/0zW/89pZVv+5GdLB+ZKSWWg8Jf/wq9+fg==
X-Received: by 2002:a05:6000:110b:: with SMTP id
 z11mr141367wrw.252.1582827352600; 
 Thu, 27 Feb 2020 10:15:52 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:49 +0100
Message-Id: <20200227181522.2711142-19-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/51] drm/<drivers>: Use drmm_add_final_kfree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, Russell King <linux@armlinux.org.uk>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These are the leftover drivers that didn't have a ->release hook that
needed to be updated.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Mihail Atanassov <mihail.atanassov@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/arm/display/komeda/komeda_kms.c | 2 ++
 drivers/gpu/drm/armada/armada_drv.c             | 2 ++
 drivers/gpu/drm/vboxvideo/vbox_drv.c            | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
index 442d4656150a..16dfd5cdb66c 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
@@ -14,6 +14,7 @@
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_irq.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
@@ -271,6 +272,7 @@ struct komeda_kms_dev *komeda_kms_attach(struct komeda_dev *mdev)
 	err = drm_dev_init(drm, &komeda_kms_driver, mdev->dev);
 	if (err)
 		goto free_kms;
+	drmm_add_final_kfree(drm, kms);
 
 	drm->dev_private = mdev;
 
diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index 197dca3fc84c..dd9ed71ed942 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -12,6 +12,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_prime.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_fb_helper.h>
@@ -103,6 +104,7 @@ static int armada_drm_bind(struct device *dev)
 		kfree(priv);
 		return ret;
 	}
+	drmm_add_final_kfree(&priv->drm, priv);
 
 	/* Remove early framebuffers */
 	ret = drm_fb_helper_remove_conflicting_framebuffers(NULL,
diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
index 8512d970a09f..13eaae7921f5 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
@@ -17,6 +17,7 @@
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_file.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_managed.h>
 
 #include "vbox_drv.h"
 
@@ -54,6 +55,7 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	vbox->ddev.pdev = pdev;
 	vbox->ddev.dev_private = vbox;
 	pci_set_drvdata(pdev, vbox);
+	drmm_add_final_kfree(&vbox->ddev, vbox);
 	mutex_init(&vbox->hw_mutex);
 
 	ret = pci_enable_device(pdev);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
