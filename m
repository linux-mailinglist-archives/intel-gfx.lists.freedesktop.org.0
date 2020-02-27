Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86377172644
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6A16E96B;
	Thu, 27 Feb 2020 18:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651806E96B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:32 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id x7so2144163wrr.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dD4QRwIhg8llyVXVFgN61n5mv4BUTYR+6d4aRH0iZKI=;
 b=TaxaTKzzO1LnMEEn62UcScO8NlXHxuwiBQhmj56VxfUrZzYjfiomtdFeNhS0Th88dA
 QWctHnAFiLXRNVk9WaA3spee1yT+ZFqYxW7sDgguM+xVbq5fti8mdt+b6Oetf9COkT+n
 nSx16eiriDwOKXHJIOUcFT+Vwl0UhMkYoJ7IY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dD4QRwIhg8llyVXVFgN61n5mv4BUTYR+6d4aRH0iZKI=;
 b=Vwek7AkV+JYzT/LXUIZV2G8zmbjOenmEDiqPcqK0o48mcewSvcDpHrKvStPfT9E6QK
 9xycv8CHMZ9ykFpA1Pp4FjglZgjeRalRg6htQlit86rUMCFXnmrqcnbBjtVRl121LoX4
 2NUKfkgVRoEY8HFtOqO4Y1S4rU8C6K8bBT2ARxTOFgyeAvqsSUQVb/LKn3NSZJQPxIYP
 HhLNEBqMsIin5mIe/0fQoBBO4wAutVSNCBbvlgQ2l1t8ZynRJL4TB3jkKo7truUde0T5
 VLOAMZ+uOgFRbopvmkaG2XPwRdOltfm4Ekl/iJOzL9PoVqawSNFJ0zXhz0gtx29B/zAQ
 vBAQ==
X-Gm-Message-State: APjAAAW07vqyEXNNwmia8ywvOBD7D8vRjqkrW+lu/buzA3FmYzwnI0sT
 4vaQLjmLs9fs+MLj9gM4gj0qyg==
X-Google-Smtp-Source: APXvYqw/A3B/7tNj7ltgh7PPBOuCNqWM/tVpbpVhrVYuyqkDhbpLpjCE4k74om1o/2kRlsU/15nrwA==
X-Received: by 2002:adf:82a3:: with SMTP id 32mr128987wrc.290.1582827331078;
 Thu, 27 Feb 2020 10:15:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:33 +0100
Message-Id: <20200227181522.2711142-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/51] drm/i915: Don't clear drvdata in ->release
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
 m.felsch@pengutronix.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For two reasons:

- The driver core clears this already for us after we're unloaded in
  __device_release_driver().

- It's way too late, the drm_device ->release callback might massively
  outlive the underlying physical device, since a drm_device can't be
  kept alive by open drm_file or well really anything else userspace
  is still hanging onto. So if we clear this ourselves, we should
  clear it in the pci ->remove callback, not in the drm_device
  ->relase callback.

Looking at git history this was fixed in the driver core with

commit 0998d0631001288a5974afc0b2a5f568bcdecb4d
Author: Hans de Goede <hdegoede@redhat.com>
Date:   Wed May 23 00:09:34 2012 +0200

    device-core: Ensure drvdata = NULL when no driver is bound

v2: Cite the core fix in the commit message (Chris).

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index b086132df1b7..0b59a9bd2581 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -913,9 +913,6 @@ static void i915_driver_destroy(struct drm_i915_private *i915)
 
 	drm_dev_fini(&i915->drm);
 	kfree(i915);
-
-	/* And make sure we never chase our dangling pointer from pci_dev */
-	pci_set_drvdata(pdev, NULL);
 }
 
 /**
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
