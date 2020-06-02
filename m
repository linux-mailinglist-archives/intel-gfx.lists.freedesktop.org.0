Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A751EB8D9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 11:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01736E0F8;
	Tue,  2 Jun 2020 09:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793316E0F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 09:51:54 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id l10so2691526wrr.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jun 2020 02:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oZCX7aP5skMs1QZGNYbvejJPa9/Eiu5Qr/CWi7xzV1k=;
 b=J2O3xlXAth+t+Ol4fW8PEM7q3aJ8QTEw8dgcvfmG1GVybtkn8/J2J6dD00DuasRXkG
 m+fSfZaqFjxj0UwZwq4nHCwbAmvlNhKCSyfgUS0pw6Ipz6CIpiM9m0/OfgSy0uJMMpO3
 wLbKzWPni9dX40KaCABPPhoGr3nG5r6CsHhE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oZCX7aP5skMs1QZGNYbvejJPa9/Eiu5Qr/CWi7xzV1k=;
 b=MLqjMTn78FBY1IKHNtvsEf8uQUcIECDIwSx6rX9TMA0Mj22pd2Wu22Liimdxuv5bk+
 03+sytfMx72gixgdc8n/4iwoGpUW4EiNu2RFFEeK9f/40IOZu3udX/vdW4sjhZWGKVsW
 AxcVlebscedMnt/oLmTj4biPsu5AT0HPo5RDnHOpFv7fdjnoEhJwp64CKiAilxC5twzV
 q/sQzEqTWTFVZhE1etG6TURVRWdJKjGErjx12RV0uxGWW6wgEToDoZMZ+TN9Pg+2WHyR
 8tba28+iM0+4tsBCEFAHHXelk8911O9c/DGNdCBqEPmW4alv/WuuSbOilOAgdL2itFyF
 glkg==
X-Gm-Message-State: AOAM531AjgkFTUz+0GAiIAjJGshvJPLqGWAwkOt+yJTsW5BQ9vW0HBBE
 cnXwcEe2R/6O08UhdszwbafsDw==
X-Google-Smtp-Source: ABdhPJxOTxGK5LwxDbdhktUyYdeYEYORTX/UTTXjl3/yDTUBMXajiDd+bs8jE6TX+IqPXNBuou2sdw==
X-Received: by 2002:a05:6000:47:: with SMTP id
 k7mr24437210wrx.233.1591091513116; 
 Tue, 02 Jun 2020 02:51:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a6sm2996443wrn.38.2020.06.02.02.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 02:51:52 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  2 Jun 2020 11:51:39 +0200
Message-Id: <20200602095140.36678-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602095140.36678-1-daniel.vetter@ffwll.ch>
References: <20200602095140.36678-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/malidp: Don't call drm_crtc_vblank_off
 on unbind
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is already done as part of the drm_atomic_helper_shutdown(),
and in that case only for the crtc which are actually on.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Brian Starkey <brian.starkey@arm.com>
Cc:
---
 drivers/gpu/drm/arm/malidp_drv.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
index 02904392e370..db6ba5c78042 100644
--- a/drivers/gpu/drm/arm/malidp_drv.c
+++ b/drivers/gpu/drm/arm/malidp_drv.c
@@ -928,7 +928,6 @@ static void malidp_unbind(struct device *dev)
 	drm_dev_unregister(drm);
 	drm_kms_helper_poll_fini(drm);
 	pm_runtime_get_sync(dev);
-	drm_crtc_vblank_off(&malidp->crtc);
 	malidp_se_irq_fini(hwdev);
 	malidp_de_irq_fini(hwdev);
 	drm->irq_enabled = false;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
