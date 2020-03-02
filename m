Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F292117672D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948136E8AB;
	Mon,  2 Mar 2020 22:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2506E8AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:16 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id e26so786458wme.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=YY09g2rwQrpyWjstMLqiQ1vd6DM7AUFxvjT8JCrGWaYVTMFZyKDPsdSrptqDKNNJPT
 B4K08rHSUn119rapPucnYNmuw0cRFemSm7p841zL8U0mNz5QtCSk3QTD0PU5P4fD0QlV
 NUHSrLA++58Fbxono3uSjT0BNxkU3XxMvc+1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=Mi2pEJDEBh5gspubOHAHChDhLQ7icWqwcPMvLcgfNu4DqgHHZ/bJXkgOXa2f28gbHw
 6f4Orve3Htyr1KTR9xzwAtFdlnCI8LjvUpOmAGQMycPneHCPoLuqpYzKLYPnFU5biq3X
 46IF1uLiKRZ8dyjKk9FDXuoGSFG5HzStw/RpHKpcEiQD4qUOt/IurLfvZVR0S2R0C2gl
 H4RfnZrKxDcS6l5JxYO5f6nPfNdsq9AReZtLWo1aIhKRT38gzEIrpcnyZr4DXIlhVyff
 IQyhK8sWdtRdn6XjnmH7aD6e9RrcI2PgEONgjLw06mX56FigP0NRuhi+G1fTRDSUf77X
 GTCw==
X-Gm-Message-State: ANhLgQ23YKetKNKX8QL2YZamMdGfeiJlxnId+4s96KovqnlXu9EGPVr8
 h32tolfhYbhBErmR2Ja0b1CRgA==
X-Google-Smtp-Source: ADFU+vs3BZQv8sRCC35GXo63fyOprwtIBa95tzMsmYP0yvI8v2v+WoUZk8V//a9ojD/eHCIxRwW3tw==
X-Received: by 2002:a1c:f009:: with SMTP id a9mr501338wmb.73.1583188034267;
 Mon, 02 Mar 2020 14:27:14 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:13 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:26:07 +0100
Message-Id: <20200302222631.3861340-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
