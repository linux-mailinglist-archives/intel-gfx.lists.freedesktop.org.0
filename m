Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA1F18F77C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBBF46E21E;
	Mon, 23 Mar 2020 14:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05CC6E1F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:34 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id m17so8460649wrw.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lgCSanMjeZR85aOsE+zxqd8d+sWHc28rnha4GmfYU8I=;
 b=haedpj0mRWkpd2jQx7R+jdq8cvdAhgdAgr13DUOCVEJkNRX855VTA2J8UGi7YyJP0S
 a0PG8CeMtENl9QL1Ce+IDlKmqgtAzRd8SdLoIvP4zsayil0ere9uP7223HZGSGuZHN8G
 kv6TN2jCAqoNvF/ZQ/MaY9SaBCqHKZ6u/mKOM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lgCSanMjeZR85aOsE+zxqd8d+sWHc28rnha4GmfYU8I=;
 b=Q2bAKe97Vz7i1c3LLI5EY2bMvYpeIGhnJsyILeOhy2Zd185+tbFPjHmTGdS+u/kjv8
 K1NZGCLPwWY+C/UpZIWeEIo0L155A2VHZePFUPh9R/bHFxaNVFwEycvKYI0y2cWWZwU6
 fsvOa3DNkeZOEbSsTK/D3CXcqM/qZPFFwQBKmE3Hc0ajU8CAtfXucpsvLbaw+Mf5mk3k
 M3y66wIHrTWzUmbDeu7noHLu2mahBKQHX+WlHzh9t3uQAVYHieWEglggrISuVGOVobYR
 ikY0gY8IsHgNlq1f06e43vKwZlVUEwKySELDglKr91yaltpb1pdwg47CSmNZFEzEPvCn
 SLng==
X-Gm-Message-State: ANhLgQ2oU2WfpJoyXM5mKEMsAxc6x6QX95a5rJm6UZJ4wLJaesnwRRxs
 p3iLx06yXlsU5na251HP++nhoYYiYvwtcg==
X-Google-Smtp-Source: ADFU+vuvk7kFM3Kt728Hv9UYQisy5cHos3ncmT3fLGp8hMAOLGTqIwqW0/56lOblN+F735n9mj6OAw==
X-Received: by 2002:a05:6000:189:: with SMTP id
 p9mr30471542wrx.391.1584975033591; 
 Mon, 23 Mar 2020 07:50:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:32 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:26 +0100
Message-Id: <20200323144950.3018436-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/51] drm/bochs: Remove leftover
 drm_atomic_helper_shutdown
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
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Small mistake that crept into

commit 81da8c3b8d3df6f05b11300b7d17ccd1f3017fab
Author: Gerd Hoffmann <kraxel@redhat.com>
Date:   Tue Feb 11 14:52:18 2020 +0100

    drm/bochs: add drm_driver.release callback

where drm_atomic_helper_shutdown was left in both places. The
->release callback really shouldn't touch hardware.

Acked-by: Gerd Hoffmann <kraxel@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/bochs/bochs_kms.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/bochs/bochs_kms.c b/drivers/gpu/drm/bochs/bochs_kms.c
index 8066d7d370d5..e8cc8156d773 100644
--- a/drivers/gpu/drm/bochs/bochs_kms.c
+++ b/drivers/gpu/drm/bochs/bochs_kms.c
@@ -166,6 +166,5 @@ void bochs_kms_fini(struct bochs_device *bochs)
 	if (!bochs->dev->mode_config.num_connector)
 		return;
 
-	drm_atomic_helper_shutdown(bochs->dev);
 	drm_mode_config_cleanup(bochs->dev);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
