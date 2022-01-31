Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2742A4A5103
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41F1E10E579;
	Mon, 31 Jan 2022 21:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 234F710E537
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:50 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 l12-20020a7bc34c000000b003467c58cbdfso300108wmj.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zvAncPlENd1mkArHeBkA576DDmIGdQX94f0ukCjnIXQ=;
 b=U2t8kjkQ/Vt2HJQRdamapjasWFD4c3zJbcxURpYTYrPL2cbDmMJxvxEJJMlW99DO/4
 HUhOQG+NtbaKJIqcJQ1bk77wmHdiXo6RDrFZUBjDjoYa1m3+m13Io4vvAUPU/RdXN4pI
 fBNkESnc3jQO0p8GldNWuLNg+S4Y098h1Fh7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zvAncPlENd1mkArHeBkA576DDmIGdQX94f0ukCjnIXQ=;
 b=bl154qJRbEokknvZRrppqXSbc39AQQCVAKYrRxInCzGMLO/8m5w6YXaVLxSbkPULcs
 81ysjIec0s5+RE8tyIBIKfptyV4YP2eiCPwJ8nYCRaPHYSxz4alX+/6fCc6QUYr7Lm7L
 FholRe+kpToyJppPdTGceKHCr6EjZvydG7N+Rk1bpwXouV5RFyoXSye7PTDVTPCY7M7I
 PHId9BVDEu1OilR4PBQFt3/fg1Bb+ksQ5ecgJ/KAhhOUur4Vdk0Qh6BsXnj6vGPOB3q6
 haCtb3N6yXkLsdFhB1ogPLfQ63xLcdrCvAOwnqJ3aXP0hjfLlWUETBI/sUqFHlAGATF1
 Yw4Q==
X-Gm-Message-State: AOAM532eOAcCGcr9lMiJCIjqrr3H86ZzMdtdnRHyKgKMqT0E1BtPx4Md
 P++np5kGIWWlfrMmjK8ncs3Svw==
X-Google-Smtp-Source: ABdhPJw4OlP2ZiGsyZ53C2rKU+S/VlUSh/yp+iwZxn0Bz//sDKkThBEktGnYMjV7P/SFzkmcbMEHWA==
X-Received: by 2002:a05:600c:19d0:: with SMTP id
 u16mr28683628wmq.35.1643663208709; 
 Mon, 31 Jan 2022 13:06:48 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:48 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:46 +0100
Message-Id: <20220131210552.482606-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/21] fbcon: Consistently protect
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This shouldn't be a problem in practice since until we've actually
taken over the console there's nothing we've registered with the
console/vt subsystem, so the exit/unbind path that check this can't
do the wrong thing. But it's confusing, so fix it by moving it a tad
later.

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
index 496bc5f2133e..11b9f962af6f 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -3247,6 +3247,9 @@ static void fbcon_register_existing_fbs(struct work_struct *work)
 
 	console_lock();
 
+	deferred_takeover = false;
+	logo_shown = FBCON_LOGO_DONTSHOW;
+
 	for_each_registered_fb(i)
 		fbcon_fb_registered(registered_fb[i]);
 
@@ -3264,8 +3267,6 @@ static int fbcon_output_notifier(struct notifier_block *nb,
 	pr_info("fbcon: Taking over console\n");
 
 	dummycon_unregister_output_notifier(&fbcon_output_nb);
-	deferred_takeover = false;
-	logo_shown = FBCON_LOGO_DONTSHOW;
 
 	/* We may get called in atomic context */
 	schedule_work(&fbcon_deferred_takeover_work);
-- 
2.33.0

