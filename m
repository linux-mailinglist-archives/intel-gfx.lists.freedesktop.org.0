Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B21282178D0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF626E542;
	Tue,  7 Jul 2020 20:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3236E516
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:12:51 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id z13so46596088wrw.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+FSVZqSJcwRWybnSndKNbUfNNvpPl3BY3d6N/f/GeKA=;
 b=iQObijhNDZgQfMrr/kbpnXa9ZxoNeRb2jWrZDoJ8+CmPgTcWOx7Oz/V39ElFnc9h0F
 /r/CH4Lk1gXB3G+CDC+rvEZ/5KcWxG1Dv4lmt8HzclLQw7g2PegkLyWqc4+xDNtWsy0q
 WUhAjilaUBigQh9yDg9wUfTrZt/8nwZttfUvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+FSVZqSJcwRWybnSndKNbUfNNvpPl3BY3d6N/f/GeKA=;
 b=qBPXS5VgrP+VCyGzIhkO0jIJ4PkTPDOLvy8MJ0eCdetBHhYOW1fbNqrM8siCFUlxxK
 gdWZBDdtgN9BskpVt4nuxeusU++sN00spll/RsCod0q6ob5AGuWyQNwxbAGeNr8SUFlm
 KDOfjGC+6mJcyN46Jqp5e7P8i/gnFdMvZX99a40ZZ50Dv59Bf73m0iOu4vzbh0HdZak9
 G7LFyxJMOSj64xvQhqpfxhCHqwH0DDtkgFbC2l9t32n9YhhyVcjWImvakLATCTDsH22h
 rDBMrbmGqcgsyFh3kIu07r8YmI/L2ijRhjdlu5Zr+zNfODSCRXAmMH9BeVboFWKYNbsj
 pymA==
X-Gm-Message-State: AOAM531a9Orhwk3b/7kQKddZBQRd9tiTHDplvgo9kkmXi0+DK0eOv7Oh
 6mgvEgxlfNiLF+0MuU5gcKsVS2GLksE=
X-Google-Smtp-Source: ABdhPJzFLolELbzMXu1omVdH3bnFD0mMnve//+cNMLXSBH/icZkkoks9YpeuTOOcWag3OhUrUnRozg==
X-Received: by 2002:adf:ce85:: with SMTP id r5mr61242906wrn.157.1594152770054; 
 Tue, 07 Jul 2020 13:12:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.12.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:12:49 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:11 +0200
Message-Id: <20200707201229.472834-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/25] drm/komdea: Annotate dma-fence critical
 section in commit path
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
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Like the helpers, nothing special. Well except not, because we the
critical section extends until after hw_done(), since that's the last
thing which could hold up a subsequent atomic commit. That means the
wait_for_flip_done is included, but that's not a problem, we're
allowed to call dma_fence_wait() from signalling critical sections.
Even on our own fence (which this does), it's just a bit confusing.
But in a way those last 2 function calls are already part of the fence
signalling critical section for the next atomic commit.

Reading this I'm wondering why komeda waits for flip_done() before
calling hw_done(), which is a bit backwards (but hey hw can be
special). Might be good to throw a comment in there that explains why,
because the original commit that added this just doesn't.

Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Mihail Atanassov <mihail.atanassov@arm.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/arm/display/komeda/komeda_kms.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
index 1f6682032ca4..cc5b5915bc5e 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
@@ -73,6 +73,7 @@ static struct drm_driver komeda_kms_driver = {
 static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
 {
 	struct drm_device *dev = old_state->dev;
+	bool fence_cookie = dma_fence_begin_signalling();
 
 	drm_atomic_helper_commit_modeset_disables(dev, old_state);
 
@@ -85,6 +86,8 @@ static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
 
 	drm_atomic_helper_commit_hw_done(old_state);
 
+	dma_fence_end_signalling(fence_cookie);
+
 	drm_atomic_helper_cleanup_planes(dev, old_state);
 }
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
