Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A834A50D3
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA60010E490;
	Mon, 31 Jan 2022 21:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189F710E47E
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:42 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id n8so11190216wmk.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SwGrwfETCM+M9+P3a4Nrp7y6QdxVSyzi92rKf4e0uVo=;
 b=J6qMgc5fOJUK3XPhn1qGhcwH2ALMYUIfKhMWansn7faeg7GJBdjaxgar/VwywGvql4
 93rIl4vZzDgIr6h21wtvZK2gzoTF2HpHw5kK2rnmsRT15RHohQ2exKndfEkXHIEFSvJi
 RDIJiadd0mNQP9LnViwYbhh+P80BASVMK1SKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SwGrwfETCM+M9+P3a4Nrp7y6QdxVSyzi92rKf4e0uVo=;
 b=K2BL+2FQOG1OWBvC6AcKBPvRACpTUQd+Ic2uzsz1VNhoNkhnI04/L8kNpbhHeNeYOF
 FXXXP/rf3P19uVlDkMlzdupmIVpuUdoxtTpPWe6cli+i+dy5k4JRmFkvTy7CvID3djl8
 HjbKvGnyDSzJfQonN38XCxJsinL3iQVRzOqoUkg5KgHPJjQhdIFjUgvRvQum54pMI9hX
 80ISpx2HWL7pIvHmwIZOgy8Pcey9ivlXRKAIZIAFwdX+rrCNfcF/Gcer4zSjq9L+qjRB
 UmOcOGPNncj6pPp95DgwC9RVcvD105y2YdbR7RsFMbsjCvXyeJ/l7g1J288WOJUR1AYw
 w/ZA==
X-Gm-Message-State: AOAM53383xiTcGVWy9iEGSMTtOcc3JiTy44COfwjrHsPg8sM52okAbum
 EomnJyPntYTryYXk4nicjsxu0g==
X-Google-Smtp-Source: ABdhPJxlmDJLYtqZduMCaW0cxX2UeObaGw0dY/yqKl+E3ubVsocJ1ZEGqF+GaPai8YvkFp0Tm9EM5w==
X-Received: by 2002:a7b:c84f:: with SMTP id c15mr28407018wml.181.1643663200650; 
 Mon, 31 Jan 2022 13:06:40 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:40 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:37 +0100
Message-Id: <20220131210552.482606-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/21] fbcon: delete delayed loading code
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
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
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
index 8f971de35885..814b648e8f09 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -942,7 +942,7 @@ static const char *fbcon_startup(void)
 		return display_desc;
 	/*
 	 * Instead of blindly using registered_fb[0], we use info_idx, set by
-	 * fb_console_init();
+	 * fbcon_fb_registered();
 	 */
 	info = registered_fb[info_idx];
 	if (!info)
@@ -3316,17 +3316,6 @@ static void fbcon_start(void)
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
2.33.0

