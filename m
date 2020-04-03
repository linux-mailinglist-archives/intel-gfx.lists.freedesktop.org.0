Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8272119D858
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2F26EBC3;
	Fri,  3 Apr 2020 13:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302EA6EBD4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:09 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id s8so6519767wrt.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VV2KOwodESY/1UVQxc6ZzbffzPP3mMSZkJL0n+TSLrM=;
 b=BUMdyW1ZQuhOxV7FvmX1rubxsEZY1cqGjdNDzbdg/9vpKAeR/Ogr0BU7aXbVQ7a6tL
 N3q8Eqg9+puu6Rccei6coTSDaa3PfXL5cJscNoQzmsFSe9iDnZPWouK4050cKmjlNmD2
 1cJfusgfnrFai1Sw6LgnDwcQ9X9Vp+DLYHQDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VV2KOwodESY/1UVQxc6ZzbffzPP3mMSZkJL0n+TSLrM=;
 b=rgDRn5wGvAc4SIgG06toL04yk6FheFwy0TYtVr1+r3E7I7CI5M27mYjcOuFVzUXnVE
 KYb9BQxpOmNw91YLT3k61rDgssiRp42195O5rR6mffzh6IKUEoZp/cpGFDmjgZKVcS7V
 qtubwfMWKTCCkYu650Ytb3lDXRqgJ8/n21TfHDFq0Vtg9KN3KyCCsDXKgINwiT6WP6jm
 NsC+4ShGliTrB9x0w4T0fYDrZ5O+4jUVwn5OKBp7EMWG6t631uaXagJ9Xj4/ilOT4NWD
 7YLCozw7qu455qjN9ulolYuDdYbLG6759rrI2Q4oV2CMHRAW3IHVIroGjFcAyR/c66BU
 8ejA==
X-Gm-Message-State: AGi0PuZXgRJOZvPHAiindOKCQ+2YX2JZxZuklWY7ytqXfHoGDF8xwA/G
 kwbCyBQqE+la3WuB1ZbjEo1lRQ==
X-Google-Smtp-Source: APiQypKnHoLxGyr6cJqpQVvt3QTY3ZlEt5mfrV8jc+o+j1TagPM9n6GM+qWBe+0cpeLRNqqIoDmVBw==
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr9773800wro.342.1585922347874; 
 Fri, 03 Apr 2020 06:59:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:13 +0200
Message-Id: <20200403135828.2542770-30-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/44] drm/tidss: Delete tidss->saved_state
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
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not used anymore since the switch to suspend/resume helpers.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/tidss/tidss_drv.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.h b/drivers/gpu/drm/tidss/tidss_drv.h
index b23cd95c8d78..3b0a3d87b7c4 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.h
+++ b/drivers/gpu/drm/tidss/tidss_drv.h
@@ -29,8 +29,6 @@ struct tidss_device {
 
 	spinlock_t wait_lock;	/* protects the irq masks */
 	dispc_irq_t irq_mask;	/* enabled irqs in addition to wait_list */
-
-	struct drm_atomic_state *saved_state;
 };
 
 #define to_tidss(__dev) container_of(__dev, struct tidss_device, ddev)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
