Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC761688CD
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768506F557;
	Fri, 21 Feb 2020 21:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E2B6F531
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:04 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id r11so3525449wrq.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=XG5+t0J0cL+jt7GtWC/achSFgQIa4yS6tTsRYRS2CYLUeyoO2NvDTK9Io/x1KJJDgc
 Qd3kYDgcjYEz6tO2EZUkV2d87e1BfdYFwLGwPyUCyf5VQKFw+3azvO0dP7PKN9JeHWsN
 rAZTSPqvsVNs5MFBaEn6tEqn+X5bLwUDdqyMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=jpkdxDy2MgRHDpi8LorarfQgz0FLTFD0jdhBfwQOyoL4r/1PACfOkSKHUt14Vrdd/j
 7FVulnNvUm3Zn2qXoCEPEHxQ9WPluLJiOFT4dI2Q53S72HoDPRtlbETtnbw5OUsP987T
 lTD+Til1vUuDjcjB96LwKpWqSxj/EYNPw8Y7cn7Y62kp3s0k9aQExFdB0x5zYUXQwsuM
 r6R1bUeULafWcksjjCjAhNTCa19DhlQtHPHzgomAG76iKNhhD/xCCic8RzH5hisGTe2C
 NUtgKb9tlIR5hLzHKeikQ9RiL8jlEPdLOvTxBxI0LqgV6ImE+2fjMgy5DnKwQ7NXsv1f
 uDUg==
X-Gm-Message-State: APjAAAV+mj5wcftEvM55lxMyTjr0XJWgFGa10xEjtVMaC1L0yNSKSlsn
 g0cTEvOTDZ1BCRKBHQtelTjcgg+VrMs=
X-Google-Smtp-Source: APXvYqz/t4z42ikpCEiHwvOh1FbiJIkHH70PYcqVTlQ218faQuKUQziNAKN+sh5OtBkW1HMkkAEHnA==
X-Received: by 2002:a5d:4847:: with SMTP id n7mr49789832wrs.30.1582319043699; 
 Fri, 21 Feb 2020 13:04:03 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:03 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:55 +0100
Message-Id: <20200221210319.2245170-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
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
