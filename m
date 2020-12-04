Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DADB2CF20E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 17:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BF16E199;
	Fri,  4 Dec 2020 16:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC716E199
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 16:41:32 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id 3so7571769wmg.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Dec 2020 08:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eC1vWxhQ44MAiz8C5eJYiwX4+qG0LcRWw3zAHbPPJY8=;
 b=TL9treBcJY92jXPHridQhQjoOUDLrdhUlDTxd/gOLVKRNx6HZOrKI+VtfzMppxouFq
 7etXFrlzHdpVDmofv+CHvfSjOpvdJcIA5p6kczCGmPulzU314kWUqJdRPH6nePoNI/2y
 bxjkWh9CBDd1VgFcU0l6ZFBiyLDuN9sQi/u98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eC1vWxhQ44MAiz8C5eJYiwX4+qG0LcRWw3zAHbPPJY8=;
 b=kpbV8G0bP7uFL0T7MFBJeUtO7YreLmyGbv3JP+5U2c+jmXX/MTzO36T+VA+KVNwuxp
 Nh3FJOV+0SOHk6rxMKLw3z0Tyqqgw92KA3lr6TqNmjBekhFJl2ojYFSoUVvgImCrOjVN
 JoV0oU9hBivMhI1fbhwQKd344eEutHLNmv/sjL/9WTrZ+3pbQDuZmiB1sfDTcKUbrOPs
 1rOH7B/5ariBq/G/W+yPppWDowRe7dbkp6kd0WVWgGtZ91TSTIH/+ukRgL8/Y2NE3+yW
 ANbc5dcz9KEP0IdG3RNH0T3I+Y9E2+87kKR63A4KAmf/3xWfrWGNcraMYU1xiWwFm6Xi
 k0bw==
X-Gm-Message-State: AOAM533ASAtfkGsQSDgMMzNj+OdfP93W2kr+79wUMDMTnL+BbCcyyrQ0
 ZGZ5D3a7qOhwUfXR3jGB0p4RIaAMTOevJA==
X-Google-Smtp-Source: ABdhPJxvxrDvEXy9dWn0CVcyNyljEgaU4MFMrWCRDhtNB+tNH0WFatmbkJuT0eO3ArYpMM1rQR5VQg==
X-Received: by 2002:a7b:cc90:: with SMTP id p16mr4964631wma.105.1607100090780; 
 Fri, 04 Dec 2020 08:41:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r2sm2717603wrn.83.2020.12.04.08.41.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 08:41:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Fri,  4 Dec 2020 17:41:25 +0100
Message-Id: <20201204164125.2667107-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-buf: Fix kerneldoc formatting
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I wanted to look up something and noticed the hyperlink doesn't work.
While fixing that also noticed a trivial kerneldoc comment typo in the
same section, fix that too.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/driver-api/dma-buf.rst | 2 +-
 include/linux/dma-buf-map.h          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/driver-api/dma-buf.rst
index d6b2a195dbed..a2133d69872c 100644
--- a/Documentation/driver-api/dma-buf.rst
+++ b/Documentation/driver-api/dma-buf.rst
@@ -190,7 +190,7 @@ DMA Fence uABI/Sync File
 Indefinite DMA Fences
 ~~~~~~~~~~~~~~~~~~~~~
 
-At various times &dma_fence with an indefinite time until dma_fence_wait()
+At various times struct dma_fence with an indefinite time until dma_fence_wait()
 finishes have been proposed. Examples include:
 
 * Future fences, used in HWC1 to signal when a buffer isn't used by the display
diff --git a/include/linux/dma-buf-map.h b/include/linux/dma-buf-map.h
index 583a3a1f9447..278d489e4bdd 100644
--- a/include/linux/dma-buf-map.h
+++ b/include/linux/dma-buf-map.h
@@ -122,7 +122,7 @@ struct dma_buf_map {
 
 /**
  * DMA_BUF_MAP_INIT_VADDR - Initializes struct dma_buf_map to an address in system memory
- * @vaddr:	A system-memory address
+ * @vaddr_:	A system-memory address
  */
 #define DMA_BUF_MAP_INIT_VADDR(vaddr_) \
 	{ \
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
