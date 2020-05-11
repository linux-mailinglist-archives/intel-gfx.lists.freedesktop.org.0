Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3B31CD48C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7254589E0C;
	Mon, 11 May 2020 09:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BFD89EAE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:11:55 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id k1so9944619wrx.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q7OJr2fNjgGIcJIqqF9ej5dw8+vyB2iSNpGREcUJdJ8=;
 b=XSlecak9WF0+12diZ+csclqCd6URlr2zAoK8NqOOevNyeI615JACkJ6RVjZvHhQMm/
 cZGgYTHh6V8wa/pbt1dwPjKLdID/v2MfGPl4KhtWRCcVKYJfw4ylih3zuyirqJGbi73q
 mJOsRI5Mf796KuLVu06LlUNBFr7NHZpM8jVno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q7OJr2fNjgGIcJIqqF9ej5dw8+vyB2iSNpGREcUJdJ8=;
 b=HB2gZ4IDWa27gMstXBF4okZcowLawQHxsMVlelFe4Wmly0WrKgt3NZg5071F540jTi
 Jv/IKUjvcWnFV4S2erVed6n0Qx36TZrYO4zLknIKyHV+iMJ1d8r7uj3tFm+VJAhLlI0v
 Pe8RzKfvg5hODHkcV7qrGv8W6PhwPbx7YbdVQW1ssiRK/uZyCcjcIcAyNjQ11+Qay2mu
 qyibGpPPx5YhfEkPht3YHQIBLOQMRK9/fW8zhko4YCX4LHnUb6PiCVKsrsfkuAVZtOR/
 xcOlIIIFLCP0ZI+9gtryfWdTcBua35PWcD8cZD94BS2XcDno9IkZFF9PX2DpeNBm35Dh
 r8uA==
X-Gm-Message-State: AGi0PubgHdmjFvQa0lSMuFkv6DzGpPytt+ZUvDPqn13bvu4zlKgI/VCk
 k3cHuXgIY6u3sv1aPBgGoIljpQ==
X-Google-Smtp-Source: APiQypKTOisFnohd+WRO0Z88W2Yg66YiWX7rj46BoIw2L57BnjAgP/PH17CP0/qQS37ikw0XH2izsw==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr6637314wrp.427.1589188314245; 
 Mon, 11 May 2020 02:11:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t4sm17506299wri.54.2020.05.11.02.11.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:11:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon, 11 May 2020 11:11:41 +0200
Message-Id: <20200511091142.208787-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] dma-fence: use default wait function for
 mock fences
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No need to micro-optmize when we're waiting in a mocked object ...

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
---
 drivers/dma-buf/st-dma-fence.c | 41 ----------------------------------
 1 file changed, 41 deletions(-)

diff --git a/drivers/dma-buf/st-dma-fence.c b/drivers/dma-buf/st-dma-fence.c
index e593064341c8..8166d2984702 100644
--- a/drivers/dma-buf/st-dma-fence.c
+++ b/drivers/dma-buf/st-dma-fence.c
@@ -33,50 +33,9 @@ static void mock_fence_release(struct dma_fence *f)
 	kmem_cache_free(slab_fences, to_mock_fence(f));
 }
 
-struct wait_cb {
-	struct dma_fence_cb cb;
-	struct task_struct *task;
-};
-
-static void mock_wakeup(struct dma_fence *f, struct dma_fence_cb *cb)
-{
-	wake_up_process(container_of(cb, struct wait_cb, cb)->task);
-}
-
-static long mock_wait(struct dma_fence *f, bool intr, long timeout)
-{
-	const int state = intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE;
-	struct wait_cb cb = { .task = current };
-
-	if (dma_fence_add_callback(f, &cb.cb, mock_wakeup))
-		return timeout;
-
-	while (timeout) {
-		set_current_state(state);
-
-		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &f->flags))
-			break;
-
-		if (signal_pending_state(state, current))
-			break;
-
-		timeout = schedule_timeout(timeout);
-	}
-	__set_current_state(TASK_RUNNING);
-
-	if (!dma_fence_remove_callback(f, &cb.cb))
-		return timeout;
-
-	if (signal_pending_state(state, current))
-		return -ERESTARTSYS;
-
-	return -ETIME;
-}
-
 static const struct dma_fence_ops mock_ops = {
 	.get_driver_name = mock_name,
 	.get_timeline_name = mock_name,
-	.wait = mock_wait,
 	.release = mock_fence_release,
 };
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
