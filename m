Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E95C3E031A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 16:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608766EA9A;
	Wed,  4 Aug 2021 14:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1F46EA92
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 14:25:40 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id d8so2485583wrm.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Aug 2021 07:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tf+mOzcQNKHHz6LJhS8LPXuBWTq0ViZJrfxmoddi+oY=;
 b=bnLvdu+PYARfSfh7ErwMLlrG3mqedWgi0snpQM/SHog8chW5Z+JRfsyQ7XAfFlTkRE
 gZ74DIPEpRPqtT8lb/aLI1Kyt6JSO9KnqC20mjdJX5c4NQVTIOeY0st/HG+1zGlV/DU2
 UMQqb3wMyIgxuzuzMYyHNenpzC3EjnkXy/mDY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tf+mOzcQNKHHz6LJhS8LPXuBWTq0ViZJrfxmoddi+oY=;
 b=hrYaIUPROmZA/Ceo46KxXsqDkUVgYvCEjBXd8NZypPcqS+prsPuOzYqbP9rJGqWE5n
 BU3vqvl/qUzOcQA5Erwrhncqx+cXevsMPA4/E4DJO8ojOLTm8hQRAiqaXpR4Md+D85JT
 gKeR8UToqhBWThWGXWa+yMRMzaJxErKwN79OTEPcKI/hWbSg0af25Fygfe1FrMmJErvK
 OAERy3rM7i/SjBnSdnma4fE5qPn1lHKN6Am9jDoiN6woPZfvAWQvf9RUEXWk8mKvAn++
 3Gn2z1ojoIe0TFHY+XLKp1PsBuMnC0uioMCDkioMHyC7H8JVtcqOmUa8l6RWbPOVAN3K
 4LRw==
X-Gm-Message-State: AOAM532wk56cWAckzv26ISIACPrDYd50ukENpldLDlpkSgjQ7PIbSDBl
 EdtO/ky/6/RqkF+fxMLrdj8vs6Uyihg0VA==
X-Google-Smtp-Source: ABdhPJznaAR9bPeMCyNq1rztAYlZmYDPpn9wN4TXqRrAzfj/f9xMuRLpnAwRbpa5nr7ZivB71j7voA==
X-Received: by 2002:adf:dcd1:: with SMTP id x17mr28685761wrm.59.1628087139168; 
 Wed, 04 Aug 2021 07:25:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b6sm3222682wrn.9.2021.08.04.07.25.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:25:38 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
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
Date: Wed,  4 Aug 2021 16:25:20 +0200
Message-Id: <20210804142522.4113021-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
References: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915: use xa_lock/unlock for
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

