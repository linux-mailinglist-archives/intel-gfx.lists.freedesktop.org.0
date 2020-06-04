Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D30601EDF2B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6996E2CC;
	Thu,  4 Jun 2020 08:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C50BD6E2B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 08:12:35 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id x13so5042298wrv.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 01:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ys1lEmo1OrglME8cWbIXSVFR7KWfyvCPNKiL9IEbmhc=;
 b=RUvuRoaAUx3zoTg0dekOOqbI1T8Sgso/qeY9AgIY+69YkzMVoxVd2zcJLUgcBipdk7
 bfLnFFHUCXlCtl7HOikMZEY9KbeA3ZJCmbGvpYaKPSFaizoR8g1G0iiiWixkm2fyo6ve
 uHh1ScOQIMEnMrZouE9W6fbm6RZuu2BrIaMFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ys1lEmo1OrglME8cWbIXSVFR7KWfyvCPNKiL9IEbmhc=;
 b=RNfRaHCPgPGc0PAKLWLIEfDnxrPcW2QJbqGWYy3q9NQ1oJitIaNlbajczZi/OyDnSB
 Nvk+5wvY4LK4Ifn90A+lW98EtoZK5A7TBOq2mcYiiuPeV4OLMD1wCwcxK7tjKfmhnhii
 3Wt1Pjg57Dxur6nlr+RpSyd9fXvDnqOf5E+PM9euUjFxrT1MinIvIiRNKV2ph+Tqi/rH
 tri2zGon4Y4UDBHZugh4IBc9k44TXZYEopcXuDfM8MyzDWtrXag1GElKo5ApdwjAvRz5
 CpWdfO/FJG9lKye5gjDva+uqMe1XCpd7wpzgPvVxK2AsiozqUHCVWbX8O19jCj+vRkp/
 eKcw==
X-Gm-Message-State: AOAM5304+T5cB0inNhjUy00KPKOkmEXeuaJs3+24DC2FFUX1eqPMo+15
 1OUjleKc1SJUJ2ZhWAMVki8zUA==
X-Google-Smtp-Source: ABdhPJyMtbbr4YZr5XgYcavaaABocIWgVVWO+6bIVkLH86w/gWfWScj44NFGJ8WhcZD+YmTAw14Znw==
X-Received: by 2002:a5d:518b:: with SMTP id k11mr3495849wrv.58.1591258354483; 
 Thu, 04 Jun 2020 01:12:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:33 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:08 +0200
Message-Id: <20200604081224.863494-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/18] dma-buf: minor doc touch-ups
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
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

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/dma-buf/dma-buf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

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
