Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16E717269E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884496ECFA;
	Thu, 27 Feb 2020 18:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D4689F01
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:05 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id v2so4587582wrp.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=F5X/nNL0/Kmj9H5AjAp5vlFtQlh4RnBEpKt20YVlVA80HqdTsf6w0ao4nldScVM2J3
 BFXl24eXc/du53gfaSKPgfLhAZHcunVMFYweoTAtjVag7+s/VshgoEamm8++ocS1S2P5
 kekD9mKb6rrgNssXDHHvbVimUIlez4nLIPTUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=kAYimA3KOqfeHNl2Mhu3u2a5U7OsecxUpEAvh01qHsDwlbTzKFt7yzmkfyhebeLmHo
 zGlt2PR+sqGof+b2Z51F2nplxLm37sipuooTI2wCpA73PUXYEQa16ertQ1GCnNQ+xaG4
 8+LpSSNo2UnNV7ZdRyZB9XWz/Wuso4KVV+iGLIstwIZFex57UYN1ObqSy6G8LM58xOSp
 Dab4THY1WlYENJgECqm63/P6HKd+dQQJWMAU86xnUE3eunhFA70Z51BF7z2VD+HwydHy
 xbulHLV9hFMxfHmVsn9f+k7rjcwVlb7rxdR4bOqE8otvJ7mL5ZfH5X0Elzae5YvPxuyw
 9H0A==
X-Gm-Message-State: APjAAAUeOAo1sp1PNLqmM/YVJdfDeqPxOLztlYukXAleTZjRmOCKcGno
 60Hf1JM1cgZPumD/dgbDW7iMTw==
X-Google-Smtp-Source: APXvYqy324uIjdLYxpEQI/WIw1GCoYSmnYGdeWRbZjWqM71K5/HjCV1g47gbdv2FYLAYu/Z4GRE/GQ==
X-Received: by 2002:adf:a746:: with SMTP id e6mr97180wrd.329.1582827363651;
 Thu, 27 Feb 2020 10:16:03 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:03 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:58 +0100
Message-Id: <20200227181522.2711142-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
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
 m.felsch@pengutronix.de, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
