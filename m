Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199221F7450
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 09:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2206E503;
	Fri, 12 Jun 2020 07:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B34E6E260
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 07:05:43 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t18so8594803wru.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 00:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L7qKFqOkT29yYQVebbM9QoBNowxMHJMDPuXRMfTBy5U=;
 b=OBBnArwvOYmnNL869EE4w+YfXLew6ySZXPzXgjq6bJoSAOdo/hX+BK31qoBHR6pOfP
 20QRsaXgECX9JwIuMxYirjtDunKQ//HvqKCjZ++mEDYPyf7tHsaeNDEOJRhFH3H7kHyo
 wGP3Q5lJnscyJDtjyTqUcPgTCWA1IsPQDO7Ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L7qKFqOkT29yYQVebbM9QoBNowxMHJMDPuXRMfTBy5U=;
 b=VDndHHoIgLvnljcFkDALFwKcOL6QwrBJ9clp3GMK6/pZkNJBRN6HeJda4sd0kv4amr
 u7FFT2J0ksZ6qTC0G7vJeilS/dvIVb/EVb0mvrQG4+YQkhORvC2TDaILfW06u0GujuFm
 81dqEGZJsE0sCYdNZWVKc40Cc1Q9HuaKYEi0tLNGWjRZH15ViAlGqBNPSDlYgn81Oh9t
 zsdictbQTULKbgrpRh1bNIyQal6q/1S8bCB1pfn4lfxoUscXGDa+1Llq6mzRi37/oZIb
 uqYg1nQeovKd8uoxdkdyNwrp8szx2pqXQp9hpGNVoY2O3WTi3cRl4wUiBFbMgzVC+NRm
 Z6sw==
X-Gm-Message-State: AOAM5304N6GosXh6QG89wJEx2P5Zzie2C/7KZpVyl7hn6V5zGhaRlHa+
 /DygEtLvGJDedlkrtyNMnMGEOw==
X-Google-Smtp-Source: ABdhPJyIq4tyRTqW/QpTujLI8kppaJ5DbNNU3yWliTZOw06zUrHEqS6P+dkPn+sGGLJdfJxTAzdmJw==
X-Received: by 2002:a5d:6391:: with SMTP id p17mr14223256wru.118.1591945542103; 
 Fri, 12 Jun 2020 00:05:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i3sm8609087wrm.83.2020.06.12.00.05.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:05:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 09:05:35 +0200
Message-Id: <20200612070535.1778368-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-3-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-buf: minor doc touch-ups
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
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just some tiny edits:
- fix link to struct dma_fence
- give slightly more meaningful title - the polling here is about
  implicit fences, explicit fences (in sync_file or drm_syncobj) also
  have their own polling

v2: I misplaced the .rst include change corresponding to this patch.

Reviewed-by: Thomas Hellstrom <thomas.hellstrom@intel.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/driver-api/dma-buf.rst | 6 +++---
 drivers/dma-buf/dma-buf.c            | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/driver-api/dma-buf.rst
index 63dec76d1d8d..7fb7b661febd 100644
--- a/Documentation/driver-api/dma-buf.rst
+++ b/Documentation/driver-api/dma-buf.rst
@@ -100,11 +100,11 @@ CPU Access to DMA Buffer Objects
 .. kernel-doc:: drivers/dma-buf/dma-buf.c
    :doc: cpu access
 
-Fence Poll Support
-~~~~~~~~~~~~~~~~~~
+Implicit Fence Poll Support
+~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
 .. kernel-doc:: drivers/dma-buf/dma-buf.c
-   :doc: fence polling
+   :doc: implicit fence polling
 
 Kernel Functions and Structures Reference
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 01ce125f8e8d..e018ef80451e 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -161,11 +161,11 @@ static loff_t dma_buf_llseek(struct file *file, loff_t offset, int whence)
 }
 
 /**
- * DOC: fence polling
+ * DOC: implicit fence polling
  *
  * To support cross-device and cross-driver synchronization of buffer access
- * implicit fences (represented internally in the kernel with &struct fence) can
- * be attached to a &dma_buf. The glue for that and a few related things are
+ * implicit fences (represented internally in the kernel with &struct dma_fence)
+ * can be attached to a &dma_buf. The glue for that and a few related things are
  * provided in the &dma_resv structure.
  *
  * Userspace can query the state of these implicitly tracked fences using poll()
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
