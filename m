Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B651A94E7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34016E8E1;
	Wed, 15 Apr 2020 07:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B5B86E8CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:42 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id u13so17383786wrp.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6PYhK9PeyHN9Se7zWckWuH+CKUAQb8wgDIX1vJ8dbfI=;
 b=EMxn3uLWNiLBg9QPG3GAvetV8BTE4dERLT4lGe7A7UC7Kx+Nl6vYMYBupbOr26MzGj
 JJ5quQtUSVT6O5DaaTplhEbnRFOzQrh1QBYYKHPORAjTpmUAIJ8D5Q8iyJWZT/fcpM6q
 fPxQ2hQIKOBsCZtKJ0aRG75irqgiLY9807UR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6PYhK9PeyHN9Se7zWckWuH+CKUAQb8wgDIX1vJ8dbfI=;
 b=YqgIE9Aq3lsi/V5yD77JLxmrkSgLljWegCWn1vszBGV86Exh2+g+xVamCfzvuf4vf9
 Eusd2qSyFZyA9Tq9n03Coam3ieZYkze18Oy4S+gNYtF5WS2+1eIhmY7vSbTs6ohobBu3
 Ya/N9OCThJON3+L91vZvOe2k+LSQV1PZCnE3wsjqPZMfWYENY0GIX5bp+Wh8g+A9puyl
 Ztmh0q2a9zKKFSlGXq4/y1FCPfw6kvyY5FJaVeJSzoMh2tZj9FU0XIKyGcvFGvIqLrN5
 gjeAcOMEf14PIIap2k6EVpBaA2Zsz+JehZW2QsGRFp2H3/rLD3fh9BKyydBdkjt87XpZ
 PiAg==
X-Gm-Message-State: AGi0PuZf0GhOKHdRCN9iU4fVPFPIaDcTlC9sxHLFlUuFvRpsgt1h8xDt
 w5TawSmfPpMNf45cHq8MVHQSND6dndo=
X-Google-Smtp-Source: APiQypLV8WXAklnMnfy9GuM7TFNlpDXlkMzsNe1juREetHB5Fq/+q5s/1uJxKuGWuPYrSXbMvAJSIA==
X-Received: by 2002:a5d:45cf:: with SMTP id b15mr41966wrs.78.1586936500685;
 Wed, 15 Apr 2020 00:41:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:40 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:34 +0200
Message-Id: <20200415074034.175360-60-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 59/59] drm/bochs: Remove explicit
 drm_connector_register
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
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is leftovers from the old drm_driver->load callback
upside-down issues. It doesn't do anything for not-hotplugged
connectors since drm_dev_register takes care of that.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
---
 drivers/gpu/drm/bochs/bochs_kms.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/bochs/bochs_kms.c b/drivers/gpu/drm/bochs/bochs_kms.c
index 7f4bcfad87e9..05d8373888e8 100644
--- a/drivers/gpu/drm/bochs/bochs_kms.c
+++ b/drivers/gpu/drm/bochs/bochs_kms.c
@@ -104,7 +104,6 @@ static void bochs_connector_init(struct drm_device *dev)
 			   DRM_MODE_CONNECTOR_VIRTUAL);
 	drm_connector_helper_add(connector,
 				 &bochs_connector_connector_helper_funcs);
-	drm_connector_register(connector);
 
 	bochs_hw_load_edid(bochs);
 	if (bochs->edid) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
