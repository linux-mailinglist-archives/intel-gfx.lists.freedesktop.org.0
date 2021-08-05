Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C87D03E1338
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 051F66E9DB;
	Thu,  5 Aug 2021 10:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A71BD6E99A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:29 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id k9so7695262edr.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+O0NLMnfogG+Z9PX8PPl1SCZ+nU4Y6Ls0Qs3FnIFi80=;
 b=eOrLq/xf6IUJOL3VfN+6kXz8C6LT232hKyocEM7F9ArdUOCc9fJU0XsY8alqwz24Oc
 8WVH0Yhah/+fQ44vBEBTqPmC6p2irEINVAdF9/P0kGFx660khokDvpDvVdOTp2JFj9+R
 sDZnVha3YuhlpCkXh/+jr/X7xAB88nY0w5zRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+O0NLMnfogG+Z9PX8PPl1SCZ+nU4Y6Ls0Qs3FnIFi80=;
 b=Ev1gihGM8h9Zrt76fhZDZ9BrWiVcNzZkOAGmP3aC2cbcO73naAXTdQRq76MTYXjDQe
 8T1Q6/wEh/HotdBGaq9S1envODnR9FvkYXve+j1OVQNPKdRvuYWQtLRnx/wLUbiupkOk
 gmch+CWVIvywRp222BTon/YJ8PK0rDMjS4M3j3r+vxs3Q53RXFQf+x7bdq99oyLcTsHg
 khPA7GupymAfyu3cK/SjTU8Aiy0n8V5VFCnj5njaKWS6AYd9HXIDe5seIugZumm40h7H
 cQdMWUemuryi26Qm5qoQBw/qkXqV7ZIkVyh70OG6aeP8EB+QMyMZ65J7h6rCosg+3vMB
 yEKA==
X-Gm-Message-State: AOAM531BvR6PA91TcuAK5i53MvNZtNL83C+PH4qLJOOtn/msHRFOaFPK
 beAD8wFz5eBfCfik70UlFEkjrd9m3MrgBw==
X-Google-Smtp-Source: ABdhPJxQJ+y1h0QvQWqECXT3TK+z0aLjIcNf8i5FijOuQyg3boIa+GlW8Zu8BKGxdjSwK1CHi+Wvrg==
X-Received: by 2002:a05:6402:518c:: with SMTP id
 q12mr5547393edd.205.1628160448182; 
 Thu, 05 Aug 2021 03:47:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:27 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Lucas Stach <l.stach@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Jason Ekstrand <jason@jlekstrand.net>
Date: Thu,  5 Aug 2021 12:47:04 +0200
Message-Id: <20210805104705.862416-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 19/20] drm/i915: Don't break exclusive fence
 ordering
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

There's only one exclusive slot, and we must not break the ordering.
Adding a new exclusive fence drops all previous fences from the
dma_resv. To avoid violating the signalling order we err on the side of
over-synchronizing by waiting for the existing fences, even if
userspace asked us to ignore them.

A better fix would be to us a dma_fence_chain or _array like e.g.
amdgpu now uses, but it probably makes sense to lift this into
dma-resv.c code as a proper concept, so that drivers don't have to
hack up their own solution each on their own. Hence go with the simple
fix for now.

Another option is the fence import ioctl from Jason:

https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

v2: Improve commit message per Lucas' suggestion.

Cc: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1ed7475de454..25ba2765d27d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2240,6 +2240,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		struct i915_vma *vma = ev->vma;
 		unsigned int flags = ev->flags;
 		struct drm_i915_gem_object *obj = vma->obj;
+		bool async, write;
 
 		assert_vma_held(vma);
 
@@ -2271,7 +2272,10 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 				flags &= ~EXEC_OBJECT_ASYNC;
 		}
 
-		if (err == 0 && !(flags & EXEC_OBJECT_ASYNC)) {
+		async = flags & EXEC_OBJECT_ASYNC;
+		write = flags & EXEC_OBJECT_WRITE;
+
+		if (err == 0 && (!async || write)) {
 			err = i915_request_await_object
 				(eb->request, obj, flags & EXEC_OBJECT_WRITE);
 		}
-- 
2.32.0

