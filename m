Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FA04F3FA1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 23:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B211C10EECB;
	Tue,  5 Apr 2022 21:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7335E10EECB
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 21:03:55 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 123-20020a1c1981000000b0038b3616a71aso394909wmz.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 14:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ox4yXC0LP8o2wCPaioNRgnQjoBr7m6vhS+hT+ChhFWw=;
 b=Sgh3CF5Ckw42AeEhX78SI/d/+ee0k632GIyAmfCQa6GpzvQ/S3HANfSm4C0XKuP4+X
 v3lbVepEiDelzTwS2GE3w74y7BsywOzQ1iZjEgv3QRTaOEVvd8yMx+CnFdb/BXKoDsba
 TYH+msiuIzP7Pah2Gb87+iwP1V8fnkwyIy/jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ox4yXC0LP8o2wCPaioNRgnQjoBr7m6vhS+hT+ChhFWw=;
 b=MKbBALrzD/HWYe1EInlwR82vmc5TosWlguJ8CM56OXBLhF3PHwAkS/u/J+peHPol14
 ILXQd/zeCN85pQYsBjCohrdhWErlLOVKkkodIu+RQpYqqSKXcHmSykKKz9HFmmD/TmjI
 Lh/ICnA7jKS4rG+sdhjXrQsIfylAwDRYid9sTmSV0IsNWKWUoOGTS1N6sI/t3bDj+2Uz
 IYzvKnCpJZWoMNR17+XAjwygMZI3fk+G/Z4MSVJt6fxd18IhUgQarIlFAXSwR//AFHsx
 ObCjYILIv9EMBLDhANBBXY6nIvTAA1BjejdYwzY/xC+hNCE1dO6H1uAnt/317xwsGF41
 nkFA==
X-Gm-Message-State: AOAM530yO5Ni5G/I74WQnyvEwVaniIvOZ8NWtR0VB3/sgEv/LK1L7Hv9
 PdmzNlm/nyU3kWJH093bBBglog==
X-Google-Smtp-Source: ABdhPJx9UpHyqbLoK0CaZyafLEEes2Y+/xKuaKuYEnp6xN7y7BE/+nbUdlvugVR72TTVLP4cXaHVHA==
X-Received: by 2002:a7b:c844:0:b0:37b:b986:7726 with SMTP id
 c4-20020a7bc844000000b0037bb9867726mr4869296wml.160.1649192634031; 
 Tue, 05 Apr 2022 14:03:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 az19-20020a05600c601300b0038cadf3aa69sm4858569wmb.36.2022.04.05.14.03.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 14:03:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  5 Apr 2022 23:03:31 +0200
Message-Id: <20220405210335.3434130-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/17] fbcon: Consistently protect
 deferred_takeover with console_lock()
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This shouldn't be a problem in practice since until we've actually
taken over the console there's nothing we've registered with the
console/vt subsystem, so the exit/unbind path that check this can't
do the wrong thing. But it's confusing, so fix it by moving it a tad
later.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/video/fbdev/core/fbcon.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index cc960bf49991..4f9752ee9189 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -3227,6 +3227,9 @@ static void fbcon_register_existing_fbs(struct work_struct *work)
 
 	console_lock();
 
+	deferred_takeover = false;
+	logo_shown = FBCON_LOGO_DONTSHOW;
+
 	for_each_registered_fb(i)
 		fbcon_fb_registered(registered_fb[i]);
 
@@ -3244,8 +3247,6 @@ static int fbcon_output_notifier(struct notifier_block *nb,
 	pr_info("fbcon: Taking over console\n");
 
 	dummycon_unregister_output_notifier(&fbcon_output_nb);
-	deferred_takeover = false;
-	logo_shown = FBCON_LOGO_DONTSHOW;
 
 	/* We may get called in atomic context */
 	schedule_work(&fbcon_deferred_takeover_work);
-- 
2.34.1

