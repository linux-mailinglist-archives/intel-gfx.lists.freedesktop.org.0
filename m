Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9693E12C6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708776E573;
	Thu,  5 Aug 2021 10:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8EC6E5CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:39:29 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id y12so7674125edo.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tf+mOzcQNKHHz6LJhS8LPXuBWTq0ViZJrfxmoddi+oY=;
 b=FMGRy0gqxzQXer+kg1ZCDZnmCe+8/36e9XYC+Vc1GRLmNE8gBeh4BgnkZZVqvF+Pzo
 tAfpFMaJIiuJsURNgYj8ut15zxds1lauWmzeI9RN6vpoic05q9vahbyTdU+TdVm3MAnD
 QfY52BxhgVqi6KIdmmGqoTgCEoUHRhrN36deQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tf+mOzcQNKHHz6LJhS8LPXuBWTq0ViZJrfxmoddi+oY=;
 b=S6HjH8QvUPeoYRwxtXI50/YuKXI6GeRlu+zKRS76vPnvfFUFYPpl/Kn+lxDNQVr+Jk
 Rpv8Ak5jaE84O08riB2hA3J+fRXGwl24/yXB+LTW/8I6dRKzMY6eeEe+3gMEnxDfMt/S
 YLDLI3x/mJf0s91KbxAeTED1+OiamZNT/YF7jzF2Jo50PvV4WeBdFywCJd0yDtzxX3Hp
 JAJIWT1A4BACs6aFT7qu5hJcMUFZ7Vn+BqjP++7OqSMGvMmS/vnfJdEDElbVM6N9a1X4
 SYete+sCE2OGuw1YJtf0NDF7NyQ3U8yyvvTVFSOSQF6gt2PzAoZsWDUX7O6T0/GRX1jV
 UTog==
X-Gm-Message-State: AOAM5308Mf6CqFhMEKE0LyVe3MCNDZ011ZGiQgcd9kb0lkjngCn3r1uF
 z9B4wjOSb0L93W26R6M1wXRGwmmD73CxPg==
X-Google-Smtp-Source: ABdhPJzx4M9xpihXmYSke9m1YrtqheUnQqr4oXCBI2QnFVd14HCwm8hLrWRltGuUICsNwUpL8iIiPA==
X-Received: by 2002:aa7:cd92:: with SMTP id x18mr5468678edv.325.1628159967668; 
 Thu, 05 Aug 2021 03:39:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j22sm1593727ejt.11.2021.08.05.03.39.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:39:27 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Thu,  5 Aug 2021 12:39:15 +0200
Message-Id: <20210805103916.860853-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
References: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915: use xa_lock/unlock for
 fpriv->vm_xa lookups
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

We don't need the absolute speed of rcu for this. And
i915_address_space in general dont need rcu protection anywhere else,
after we've made gem contexts and engines a lot more immutable.

Note that this semantically reverts

commit aabbe344dc3ca5f7d8263a02608ba6179e8a4499
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Fri Aug 30 19:03:25 2019 +0100

    drm/i915: Use RCU for unlocked vm_idr lookup

except we have the conversion from idr to xarray in between.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/i915_drv.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1488d166d91c..df2d723c894a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1880,11 +1880,11 @@ i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
 	struct i915_address_space *vm;
 
-	rcu_read_lock();
+	xa_lock(&file_priv->vm_xa);
 	vm = xa_load(&file_priv->vm_xa, id);
 	if (vm && !kref_get_unless_zero(&vm->ref))
 		vm = NULL;
-	rcu_read_unlock();
+	xa_unlock(&file_priv->vm_xa);
 
 	return vm;
 }
-- 
2.32.0

