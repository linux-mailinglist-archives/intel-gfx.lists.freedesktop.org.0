Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7529D4AE2DB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:08:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E251110E4A1;
	Tue,  8 Feb 2022 21:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4657110E4A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:08:36 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id i14so535821wrc.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 13:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4crFuo44YkHTtsyu93ovw2eXFVSYs3TA5dMCqcACcfE=;
 b=jQi7DARCTOMXz5tC+EIC8+SSebNsfkWcI1vfAOcJgnkqRbrl9Gbw9DcNTrzkF5/AM4
 UoT9eQCdb6EjYX8w+Ub2a2EKqQNnkAABbTe0Xq0077w3volpOypc1EzJp4JNSjN1cszY
 SUvcPj044oQe627lpXmNgf2p1UJPbTY4Y4FlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4crFuo44YkHTtsyu93ovw2eXFVSYs3TA5dMCqcACcfE=;
 b=hgNLdNKQOmcB8V0dNmOVKdiJ3zRtFk8/xRPJxketC4GIII5EpAqmWY5t/sCvGJT2nv
 +gpRQ63qVqr/HpvoaKaMwzZRDTcNOSYFdlhI8xqDhxt1bwTrN2RIujefSLkoNF42o9ve
 K/JmoFpwDo0UKMFHHy6Rv7vCHRBqzjEYWUPe+ZCDxzvbvTKGMaAk+kYcEYuNY3Hbd9hE
 b9QoqRbm4GaXLS6rX+ibmry1NihnHrBurFIlL6Ghh0nR40+guup3wj9BQhwOkqOAv0Jw
 m5iE0kHLlp8YnqPOGGAD/LRfKLod3OI5ewwrAXyThj7fSD4mdxOB5uGr0VeGtm7eVoSm
 v0ig==
X-Gm-Message-State: AOAM533Bt89++8LB8/xsv4l+3ck0cKCPp7rIWuMIskvSrW/CNQDE9sCW
 Efv78Lsx6WxpXG9S1No5OQE+zw==
X-Google-Smtp-Source: ABdhPJxyfY2skHNX0EzH+SvK1Ftr+4E95xGCkY+AUHxfLXuaNP8ZqaFebSt7JML9HJcvQyhPEOh1kA==
X-Received: by 2002:a5d:6da8:: with SMTP id u8mr5134612wrs.362.1644354514804; 
 Tue, 08 Feb 2022 13:08:34 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm3033561wmr.3.2022.02.08.13.08.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 13:08:34 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 22:08:09 +0100
Message-Id: <20220208210824.2238981-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/19] fbcon: delete delayed loading code
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
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Before

commit 6104c37094e729f3d4ce65797002112735d49cd1
Author: Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Tue Aug 1 17:32:07 2017 +0200

    fbcon: Make fbcon a built-time depency for fbdev

it was possible to load fbcon and fbdev drivers in any order, which
means that fbcon init had to handle the case where fbdev drivers where
already registered.

This is no longer possible, hence delete that code.

Note that the exit case is a bit more complex and will be done in a
separate patch.

Since I had to audit the entire fbcon load code I also spotted a wrong
function name in a comment in fbcon_startup(), which this patch also
fixes.

v2: Explain why we also fix the comment (Sam)

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Du Cheng <ducheng2@gmail.com>
---
 drivers/video/fbdev/core/fbcon.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index b75e638cb83d..83f0223f5333 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -944,7 +944,7 @@ static const char *fbcon_startup(void)
 		return display_desc;
 	/*
 	 * Instead of blindly using registered_fb[0], we use info_idx, set by
-	 * fb_console_init();
+	 * fbcon_fb_registered();
 	 */
 	info = registered_fb[info_idx];
 	if (!info)
@@ -3299,17 +3299,6 @@ static void fbcon_start(void)
 		return;
 	}
 #endif
-
-	if (num_registered_fb) {
-		int i;
-
-		for_each_registered_fb(i) {
-			info_idx = i;
-			break;
-		}
-
-		do_fbcon_takeover(0);
-	}
 }
 
 static void fbcon_exit(void)
-- 
2.34.1

