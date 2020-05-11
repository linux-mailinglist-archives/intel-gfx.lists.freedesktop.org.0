Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD22B1CD48B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71CC6E3FB;
	Mon, 11 May 2020 09:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E00F89DA9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:11:54 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id g12so18273159wmh.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kypGotJsMo32YHf8OUx+eQZgE4BXycYY0Yyrzee1xg4=;
 b=BFrWfiefay0G3axbOIvAU7cL37XL0viEFlie/9f9z/E/mFIyz7gZQoFRa+kNZK4LQx
 XBOAAjgo9eXYRtibV6b8JVgQXHu/raQFY9l+V/l90+qLnl7fWQMjeziBAPOHwuPSFxCx
 NRDFbLWUul18dgcd2jgUu1QFdBk9GP0ZhMwg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kypGotJsMo32YHf8OUx+eQZgE4BXycYY0Yyrzee1xg4=;
 b=ZUFCSzqIuigs7fWSgINGzfTTbmsf8HJ9vQz/oceVWjYVrPmhkGGk0/2I98XDBY/wts
 /d7sN33Rs237wuLKRlrLNiqTNI3H5UKOK0yTmnGseexpvVwJsp4jA6stFk1ZCK66Y98E
 gzCVnHzJUcBRjGfdWS6xpFVoXyyuteghYwhwpk0pseCQDrrMS0u4BMydSU4oaV1qQnWS
 LlRrrnoeFqd3y6MpjvFEa+e/BpC7yqRqa0CwDUqW2NBRV1Ytht/gsN19N5oEpAKVU19c
 sFPYs+Km7Ij5KBBThaw+b0SCSz+dLZzbOZy98rzwGIjR3aShIMTa9DrXO2rB91BxXYGz
 N71g==
X-Gm-Message-State: AGi0PuboVAtS/7Uo0sGXtDplhvF+g8mdAnaJy2bGty+ZVcOAl5UgXETW
 cAPVS9t9MglXFi8IA9GJ1Q3UGQ==
X-Google-Smtp-Source: APiQypJu6MhVzS21pUOPY5hvSgBf8+CIjEHG8jg44vuH9LazUaM1m9dy/ExDV8ceiF+NtEDozOxG/w==
X-Received: by 2002:a1c:acc8:: with SMTP id
 v191mr24673393wme.128.1589188313116; 
 Mon, 11 May 2020 02:11:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t4sm17506299wri.54.2020.05.11.02.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:11:52 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon, 11 May 2020 11:11:40 +0200
Message-Id: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/writeback: don't set fence->ops to
 default
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's the default.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_writeback.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index 43d9e3bb3a94..dccf4504f1bb 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -108,7 +108,6 @@ static const struct dma_fence_ops drm_writeback_fence_ops = {
 	.get_driver_name = drm_writeback_fence_get_driver_name,
 	.get_timeline_name = drm_writeback_fence_get_timeline_name,
 	.enable_signaling = drm_writeback_fence_enable_signaling,
-	.wait = dma_fence_default_wait,
 };
 
 static int create_writeback_properties(struct drm_device *dev)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
