Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5223FC6F3
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 14:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD8C8979F;
	Tue, 31 Aug 2021 12:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA708979F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 12:14:35 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 c129-20020a1c35870000b02902e6b6135279so2407532wma.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 05:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YO9uC5hNM99y7yKPddUhpObplxDl4Qznr3A7+kNWTLA=;
 b=DAuciB5Ys5bKNgltPm664Y06ygcw4h9Mia6NB9bCVTJk8DpDLayosBSJTi19QSwfBD
 PJInnr4Ii2fCflksyrdSc+H1zKJm9CiULXU6dOIFJtXQNxtN9P7cJCW4pKsUFP7gF3EK
 HcjO6DfsSptrqXo1tHeoMTzuOh0RX2VCgxgRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YO9uC5hNM99y7yKPddUhpObplxDl4Qznr3A7+kNWTLA=;
 b=jQ3GqStuJ1HFOEeUdWhtoU9VdO5uyXC2p46QmdgjbgTx3RcFeZPJ1BQUEYId9EQesw
 TLjvAckkcE1IWG9FjfAnV6HZOk/0JCzto57Ym9GInXq+TkTIJX6gAWGuVPt9XNZioyC+
 3T73v4SUJBmsOpwsbxpkd1Uz8+qYJ/ysOPE7YQrYT6IShqoS9KwbTaKgaMHVW+I0XzwB
 a6/yMcSwN2CGylLiDM0xMqqEMWLvuC0bM0WMMndygrlzJF9RUj8KPT7KgoQbgfX7YyHL
 +0dxfG8vBzZRmwRJuxbOHmXNSqf5j7YZ9rtdGmMZSgw4UAJWLBsMdMIbi6BdaqIrLQdP
 0qMQ==
X-Gm-Message-State: AOAM530MSJql3Van199Ikz8rVzDEle1CrVtVI/0am1juGUVeorT4gMUi
 etRGOlNDbwdas+IvGjw5KX0ctjv9GXz45Q==
X-Google-Smtp-Source: ABdhPJyZO8Dxk//4ns9/TlFKg5I4yLK+WS2cXfD0fmIx+i53ilX6GkBBBAMiChk68tiSC32mQqn7eg==
X-Received: by 2002:a1c:9a91:: with SMTP id c139mr3923817wme.106.1630412074466; 
 Tue, 31 Aug 2021 05:14:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 19sm2327961wmo.39.2021.08.31.05.14.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 05:14:33 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 31 Aug 2021 14:14:26 +0200
Message-Id: <20210831121426.689019-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210813203033.3179400-10-daniel.vetter@ffwll.ch>
References: <20210813203033.3179400-10-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: use xa_lock/unlock for fpriv->vm_xa
 lookups
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

v2: kref_get_unless_zero is no longer required (Maarten)

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
 drivers/gpu/drm/i915/i915_drv.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index be2392bbcecc..d89ff55d8fc8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1874,11 +1874,11 @@ i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
 	struct i915_address_space *vm;
 
-	rcu_read_lock();
+	xa_lock(&file_priv->vm_xa);
 	vm = xa_load(&file_priv->vm_xa, id);
-	if (vm && !kref_get_unless_zero(&vm->ref))
-		vm = NULL;
-	rcu_read_unlock();
+	if (vm)
+		kref_get(&vm->ref);
+	xa_unlock(&file_priv->vm_xa);
 
 	return vm;
 }
-- 
2.33.0

