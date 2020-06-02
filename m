Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA341EB8DD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 11:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 253A86E126;
	Tue,  2 Jun 2020 09:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879436E11C
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 09:51:55 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id r7so2744422wro.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jun 2020 02:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zBJStSFyGwXYFshx7uTxuda0k6lYRaHuTLZX4FygES0=;
 b=OMB/lHCdSerDMq5F3y0UdSeHZ1ySwvyYooKPapUvZTfZu7LNtNnovnTNxvMpuczG6U
 HnSjsqYfil3JP3XgX2Zmf7kLid3N9MrQxQ4dC6FZot6Uoy5eMCmh56mfszctvWhGsWpi
 RaZqz5ifvDVqRksaho9/inr0SJdqwLkdXgcq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zBJStSFyGwXYFshx7uTxuda0k6lYRaHuTLZX4FygES0=;
 b=cmm1R7pLhlELSqHzRjD7SMZNBoh7grumR3jbMphS4hNbF/OySLFe2BoVdOZQNb954d
 uhb/wQ2uoP3osnni9Mp+p05bAk9F8jAJHVz9c9Cg8LSwFMV+pu/His836frq77bM2H+e
 4r2OLa5Hizpvz1RGOC9Ppf0R8G535qS1kv+retBKpGjUwOk6SNm+Tq/E6nBdP1ZPZ5cj
 fNFITU0F9LkisndZ9Jn7UQtUnPJGX8TwX4v0mzjVsD9hveDgOUufehKTGxdSmmxn2IT9
 xJ176EUL3FoIe4NPU5qK4OresKsJwoTcQT0+tuKV+hfCFliO7iunCKYcFSEkmppqqucI
 7+NQ==
X-Gm-Message-State: AOAM530QGx7HjOXMTwldnZp7p16055TID/kjOb1+Khh4rqAQjhuIzI1I
 rjEXSWzi9KO0FfvBXdP3/6iHPQ==
X-Google-Smtp-Source: ABdhPJxuFjAFdXbTEEKA3QY6AgrPXluPeV2VnPbk43I0VIgYZ1wE1DPthaEbQ3kpgkImnXdTgRMjkg==
X-Received: by 2002:adf:f552:: with SMTP id j18mr24368390wrp.279.1591091514182; 
 Tue, 02 Jun 2020 02:51:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a6sm2996443wrn.38.2020.06.02.02.51.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 02:51:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  2 Jun 2020 11:51:40 +0200
Message-Id: <20200602095140.36678-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602095140.36678-1-daniel.vetter@ffwll.ch>
References: <20200602095140.36678-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/hdlcd: Don't call drm_crtc_vblank_off
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

This is already taken care of by drm_atomic_helper_shutdown(), and
in that case only for the CRTC which are actually on.

Only tricky bit here is that we kill the interrupt handling before we
shut down crtc, so need to reorder that.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Brian Starkey <brian.starkey@arm.com>
Cc:
---
 drivers/gpu/drm/arm/hdlcd_drv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/arm/hdlcd_drv.c b/drivers/gpu/drm/arm/hdlcd_drv.c
index 194419f47c5e..26bc5d7766f5 100644
--- a/drivers/gpu/drm/arm/hdlcd_drv.c
+++ b/drivers/gpu/drm/arm/hdlcd_drv.c
@@ -347,9 +347,8 @@ static void hdlcd_drm_unbind(struct device *dev)
 	of_node_put(hdlcd->crtc.port);
 	hdlcd->crtc.port = NULL;
 	pm_runtime_get_sync(dev);
-	drm_crtc_vblank_off(&hdlcd->crtc);
-	drm_irq_uninstall(drm);
 	drm_atomic_helper_shutdown(drm);
+	drm_irq_uninstall(drm);
 	pm_runtime_put(dev);
 	if (pm_runtime_enabled(dev))
 		pm_runtime_disable(dev);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
