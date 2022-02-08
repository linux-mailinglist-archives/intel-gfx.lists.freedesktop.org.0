Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFC14AE2EE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D46510E5F6;
	Tue,  8 Feb 2022 21:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A788930B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:08:55 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id k18so529333wrg.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 13:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NR3Vdl26ogLJ+NN6vOMjLgqKjNNnH/ILBJ7SwyK58u4=;
 b=NngozCg3J7yEp5L8pu/P/IyZeg/re7bovaBC5F+6eL8Vv+gBM4lELsCPvoIG1krc8x
 fn3vBTkvV/mGVP7Iviya7yAY4SMFa6v06yL2bpIDEOR57CQmP1GIorMKxvW2TfxkB9Fh
 5nRE/JTAEFZejtofuDVVxS2+4o5bnY8TkR/2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NR3Vdl26ogLJ+NN6vOMjLgqKjNNnH/ILBJ7SwyK58u4=;
 b=SuZo4Y1MeX75pNw6SC/eterdMCsrSiBYhApdJ1I5Wh2OQ5R3J8rhH5BXEGDKipY35l
 A6GRD7JlnA2J9bD8F9bI6D/SMMU+ms9jT6r8AkgFCy4lH7T3Qef3ikn2SJdGIt07NAEi
 w41f/HqIqi+wTRoFmMGnjtQ/8nOStY89h3PTD8QNWyB8X9uk30lOuZetMhESHX4RCq2Y
 OP7LdFjqtsPxvFS1Voovwlfi0eVrcSVbcXSD3EV/OHQdhyH+z6QQbslJGDz2NloWKo4a
 vhOH0TCS41ZAZBagmZ94wAxJyDuw6ixXoL1Cn9qWc0LHxwmazD0ELGSp28drSQs9ZJap
 rQrw==
X-Gm-Message-State: AOAM532yKelBnX7UNizieHEoUfpL8FlpGhkE0bJwYO7WcwvZ0QMGST4P
 ux3VSfn+aIi/qAqIO1ZzLEtRwQ==
X-Google-Smtp-Source: ABdhPJyow1dh1qcgGqJFdixNGVvExdy2/GOvui0v1qlnbPgy6uaK5cpmHHHwHze64OPlU3pcDhqIUA==
X-Received: by 2002:adf:a4c8:: with SMTP id h8mr324157wrb.169.1644354534298;
 Tue, 08 Feb 2022 13:08:54 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm3033561wmr.3.2022.02.08.13.08.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 13:08:53 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 22:08:20 +0100
Message-Id: <20220208210824.2238981-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/19] fbcon: Move more code into
 fbcon_release
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
Cc: linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

con2fb_release_oldinfo() has a bunch more kfree() calls than
fbcon_exit(), but since kfree() on NULL is harmless doing that in both
places should be ok. This is also a bit more symmetric now again with
fbcon_open also allocating the fbcon_ops structure.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Claudio Suarez <cssk@net-c.es>
---
 drivers/video/fbdev/core/fbcon.c | 33 +++++++++++++-------------------
 1 file changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index abb419a091c6..685b4a9e5546 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -690,6 +690,18 @@ static void fbcon_release(struct fb_info *info)
 	unlock_fb_info(info);
 
 	module_put(info->fbops->owner);
+
+	if (info->fbcon_par) {
+		struct fbcon_ops *ops = info->fbcon_par;
+
+		fbcon_del_cursor_work(info);
+		kfree(ops->cursor_state.mask);
+		kfree(ops->cursor_data);
+		kfree(ops->cursor_src);
+		kfree(ops->fontbuffer);
+		kfree(info->fbcon_par);
+		info->fbcon_par = NULL;
+	}
 }
 
 static int fbcon_open(struct fb_info *info)
@@ -740,18 +752,10 @@ static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
 static void con2fb_release_oldinfo(struct vc_data *vc, struct fb_info *oldinfo,
 				   struct fb_info *newinfo)
 {
-	struct fbcon_ops *ops = oldinfo->fbcon_par;
 	int ret;
 
 	fbcon_release(oldinfo);
 
-	fbcon_del_cursor_work(oldinfo);
-	kfree(ops->cursor_state.mask);
-	kfree(ops->cursor_data);
-	kfree(ops->cursor_src);
-	kfree(ops->fontbuffer);
-	kfree(oldinfo->fbcon_par);
-	oldinfo->fbcon_par = NULL;
 	/*
 	  If oldinfo and newinfo are driving the same hardware,
 	  the fb_release() method of oldinfo may attempt to
@@ -3315,19 +3319,8 @@ static void fbcon_exit(void)
 			}
 		}
 
-		if (mapped) {
-			if (info->fbcon_par) {
-				struct fbcon_ops *ops = info->fbcon_par;
-
-				fbcon_del_cursor_work(info);
-				kfree(ops->cursor_src);
-				kfree(ops->cursor_state.mask);
-				kfree(info->fbcon_par);
-				info->fbcon_par = NULL;
-			}
-
+		if (mapped)
 			fbcon_release(info);
-		}
 	}
 }
 
-- 
2.34.1

