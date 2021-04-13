Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2323D35DBAB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6946E3D6;
	Tue, 13 Apr 2021 09:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D526E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:19 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id e7so6808778wrs.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5/VCtoETMmUzL0vMPqbtcoUDD2y2ltfbzTlgLqC6ZdU=;
 b=BRRd8qbtTFGYEMdRV5HexTZXmoRkVYk8JiyfN7BdyhztQs/RDa754NvDDd2qaxbN8U
 DUWmf96W1+eX9ioCfQNqH//U3DZEaHBT4N/+sGgxpgWhazVlP6RJBuaqEj6TztkURr04
 NJXk2wKPT930X8RRnXr25PPTXiO/eMJ+BuGck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5/VCtoETMmUzL0vMPqbtcoUDD2y2ltfbzTlgLqC6ZdU=;
 b=XUWLMxRs0Ql6XkQYOyqxOZ808NI9IacCfcBA5PVZcXR7665GL+ApMcFAnOHS5rGoP+
 fk/2o1c8x5tnjr3cg/tOkUeBkIGBF2TKXF+iaXp07SObynCJkmrs2Mg2BesN9QKut+Fs
 DjtAQk9EKPRvTW2yBkJRQhvejMA8AHr6wNkUb4q8BWs0iVDR0NFhPJY2RXKDggKd/dtj
 eb0pK/CFq+gSukGUFc+1Tb742g+K01uPgL0ecw5zmRhnIvbqEdtlgLIxi5DSwtl7JJCZ
 Aj77pb8u1QitnIIuWT+VlaGaEH0iJBnZ7pb0NGLgfKbpu4XBP/aEhpSZRUWutLHPl231
 pWBg==
X-Gm-Message-State: AOAM531ti4qFcydhHtFeP87hcvGDqaZjBsW/mk9wybzTaSRBILon7C1k
 42MO/decm9ZX7tcTEo3bLeoqoQ==
X-Google-Smtp-Source: ABdhPJw1GFAzXcytfZXNu9CcACpZoWl3EZWaSegc/mUkmbt0A5hEw3xdPxj85E3UJSo3NsC8wcDNLA==
X-Received: by 2002:a05:6000:83:: with SMTP id
 m3mr34903882wrx.321.1618307358507; 
 Tue, 13 Apr 2021 02:49:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:18 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:49:00 +0200
Message-Id: <20210413094904.3736372-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/stm: Don't set allow_fb_modifiers
 explicitly
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Philippe Cornu <philippe.cornu@foss.st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Yannick Fertre <yannick.fertre@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since

commit 890880ddfdbe256083170866e49c87618b706ac7
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date:   Fri Jan 4 09:56:10 2019 +0100

    drm: Auto-set allow_fb_modifiers when given modifiers at plane init

this is done automatically as part of plane init, if drivers set the
modifier list correctly. Which is the case here.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Yannick Fertre <yannick.fertre@foss.st.com>
Cc: Philippe Cornu <philippe.cornu@foss.st.com>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/stm/ltdc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index 65c3c79ad1d5..e99771b947b6 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -1326,8 +1326,6 @@ int ltdc_load(struct drm_device *ddev)
 		goto err;
 	}
 
-	ddev->mode_config.allow_fb_modifiers = true;
-
 	ret = ltdc_crtc_init(ddev, crtc);
 	if (ret) {
 		DRM_ERROR("Failed to init crtc\n");
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
