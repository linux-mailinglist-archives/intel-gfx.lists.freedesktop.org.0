Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AB4164166
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB4C6E9D5;
	Wed, 19 Feb 2020 10:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6316E9D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:34 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id q9so5839700wmj.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K6aOT+sbC9DZkRChDIl2noB6bauE+8omFJe+Kq00qYM=;
 b=JF62FFIAryWtPf148i9ciEp9/HBlyh9O1YZdZsAG+j88VdqVoxM1cCppdqahV8Y3N0
 kLCnM7dr2T1sMqrZz6+F38qw9t7eXg3Yt+qMBAhMLO1YVEecdmrNEKviKdBUrb46yagA
 PnfdfeMLJJA+qkZQt0B6V/iYa+GM/DYM9s+E8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K6aOT+sbC9DZkRChDIl2noB6bauE+8omFJe+Kq00qYM=;
 b=GzLD++GE/LjioveyRTeb1DURFkNwuNN98UmKfan+iKGQKevB2Pc68xkM1be5hp7ADR
 cxlTqTyAqCI/AhFnKXSViGjACvKnuF5GIX7tcKXH/V0zKx8dSo4rR42tkUD4wLZ6rAo3
 7Okuut5iKLv3faOOCkt3FQSi6j/8utjHSib6TxmPyTMtnQ3ctL+7gokv99EDEsiW3YnM
 IfBMkaMXP0cjqlZEfasrzf3i7a6ZnaJsOnV2Fk0jPX62V/CBBkyAs6pJQc3Gz5z7jIaS
 MQ/YxWzeE8Usf12OE0N54qJekmDsgpuGKwmnf+0XXQbFWLuS86o7Yx0sf4Obipx3IR4+
 a2KQ==
X-Gm-Message-State: APjAAAVH5PVjEVwhDqC6LEBg7ByIQDi8zQzGTod0m1QZxP/XOZv2C+Q4
 ldsBIu0dUjPiFuTEQ08NTCDTow==
X-Google-Smtp-Source: APXvYqzKloE5ECBWtNOeC8OQUuQuE8lAE26FmjwV0odki1tPx4Kg0TkZad5+KQmHhVnsRWjzYgo1QQ==
X-Received: by 2002:a1c:41c4:: with SMTP id o187mr9026840wma.24.1582107693331; 
 Wed, 19 Feb 2020 02:21:33 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:32 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:32 +0100
Message-Id: <20200219102122.1607365-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/52] drm/i915: Don't clear drvdata in ->release
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index f7a1c33697b7..050e4d7c6723 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1383,9 +1383,6 @@ static void i915_driver_destroy(struct drm_i915_private *i915)
 
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
