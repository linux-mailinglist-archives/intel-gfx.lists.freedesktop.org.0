Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED393E1328
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83F496E972;
	Thu,  5 Aug 2021 10:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE966E9B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:25 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id x90so7685314ede.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SrBx4CBwHL4LCxd/L17wD9kVL8jLKB/ia22GTxIDDNY=;
 b=Hy0KTKLZNoa/0p5YbWam97oduG3xEHgFvf3KJ7OW6urEcjBQEmnW47jE26EYT9tONi
 AOjmbGVjns3OczDXzOYeQAUtqcx6LrSb7skgBK/gRmxAsI+YfQ82w9eojV/S6zR13zhT
 d5sUZXwRYVbAA0ax9g/Pl0ocECKvmfP++9Eis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SrBx4CBwHL4LCxd/L17wD9kVL8jLKB/ia22GTxIDDNY=;
 b=GmRp7RzJtp1wZJBfcaYzajB7VbIZjNVyA0OiDNtMByLb4StZGpo3d/P1CdhQb7Sijb
 W/w9fpWw7c0ricCVPoHaEkoWDeGXRTLoSTkktVxonX4D5r4gryj8S1vkL7+OmUSm8E9y
 dEFmPuG71qIApLpMpud5qPFxclHkQwYmmb/QIqCQyzKO4PumZB3mEvgq4We85vw7axcV
 cWLLkfN6YEpx3thgXfwA/0boeoEAYtcWPdneP27o4wGU06roJq/ORh5Puq+QeKJTbdpx
 IkmEkQmTmVMKN8HQ497ovvsApF8ZbxWFhckrPKgOruMUuQmNO6inxmdrCcY/ISb8Z/LJ
 KqqQ==
X-Gm-Message-State: AOAM533vaqbGC6L8g/CvTZENKidbMOvwHCkmET/gMtkPRdj7ZXtcEZgW
 asxwpwoOVo93+0kG8/15J91gRA==
X-Google-Smtp-Source: ABdhPJxcatNB3uMDIlS/IvkYf0eyNei/2iL2TzILdhJkT0UazEGiJemXJK1mqin9u7Tajl5QAxeK/Q==
X-Received: by 2002:a05:6402:124e:: with SMTP id
 l14mr5899834edw.356.1628160444153; 
 Thu, 05 Aug 2021 03:47:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:23 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Lucas Stach <l.stach@pengutronix.de>, Melissa Wen <mwen@igalia.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>
Date: Thu,  5 Aug 2021 12:46:59 +0200
Message-Id: <20210805104705.862416-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 14/20] drm/sched: Don't store
 self-dependencies
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is essentially part of drm_sched_dependency_optimized(), which
only amdgpu seems to make use of. Use it a bit more.

This would mean that as-is amdgpu can't use the dependency helpers, at
least not with the current approach amdgpu has for deciding whether a
vm_flush is needed. Since amdgpu also has very special rules around
implicit fencing it can't use those helpers either, and adding a
drm_sched_job_await_fence_always or similar for amdgpu wouldn't be too
onerous. That way the special case handling for amdgpu sticks even
more out and we have higher chances that reviewers that go across all
drivers wont miss it.

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
Acked-by: Melissa Wen <mwen@igalia.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Luben Tuikov <luben.tuikov@amd.com>
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
---
 drivers/gpu/drm/scheduler/sched_main.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index f77456929139..49e507f91ec0 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -660,6 +660,13 @@ int drm_sched_job_add_dependency(struct drm_sched_job *job,
 	if (!fence)
 		return 0;
 
+	/* if it's a fence from us it's guaranteed to be earlier */
+	if (fence->context == job->entity->fence_context ||
+	    fence->context == job->entity->fence_context + 1) {
+		dma_fence_put(fence);
+		return 0;
+	}
+
 	/* Deduplicate if we already depend on a fence from the same context.
 	 * This lets the size of the array of deps scale with the number of
 	 * engines involved, rather than the number of BOs.
-- 
2.32.0

