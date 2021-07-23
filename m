Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 380063D3E7B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2782E6FA73;
	Fri, 23 Jul 2021 17:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEBA6F958
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:21:54 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id t21so3719473plr.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 10:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n2HxIqSkp4uJAxuGSaBmjtJvwwx/cD/kDSZhcuKq8VA=;
 b=MKxS00EEOL53zU+LZV53691lHiqKtlIOxtx3dA6XygCvBGi4OjR+FkQpwUxqvbaj8K
 ZzVKNT8WLawCtHuurOGeNKNGS6i3BSdBOtBkVmEnF3y+0/DIi9nT75D9ubDu3RfabGHU
 uefHBN0qdTOoxZeMCVlPZYAeIiOMB3sXk572NoMplL2AkP/JBLXt6k77AdRxcXoopIz1
 pLjnSXECAYeP8Vjz39e5DTLLQTWAFEs1SvqUN80WZfpg93WIXYDlORrTA1PdLZWBxL5V
 syslX0xf9eji22VygEeYQLpuF+LFU4AyPlJUcWO5X1oWoKjWQgCONhBKtE6sncFb9nyU
 Q0Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n2HxIqSkp4uJAxuGSaBmjtJvwwx/cD/kDSZhcuKq8VA=;
 b=C9Jn2j9DJWz68wj/S/ydCTjzePTk7jCiMKGKlOuwKuhBAqmbitNITNYn+wpiUPLGyp
 JfYs+7evynRF76OZQu8bH0JcMCXr0KLt9YWdPk1gr0CdCYpWml+mcV+6LXamud0g06tr
 lsI3w5rhOenqetVGGuI57bE1v83XEKUYER4GMX7tJ40CD49hg1wA7iPCrKMmYnIxF96x
 gxS4z/mksXCAMQjd+kWps8EJtI1rPFvuT8CW/NsaJtyQ3xKHA7FkesVjnsE6RAsTTdcE
 taRCHdwMfEF4koOM6KsOBvJBUvEHXV0SDL5aq27sRCsJMnhAhppBkHM+6zFKPz0vkhxC
 Dkvg==
X-Gm-Message-State: AOAM533HUfSNvSlUAak0FnOV2K6jXQVXoUrlaxqGIYYSPTSjN4+usQ7A
 z3ePGEs4PhHnwZ00NTRquEmP8bGbkiV4yQ==
X-Google-Smtp-Source: ABdhPJxO/8yNe88UV5T1gUUngjPxF35l7mIp0VGQ+GxbFD8mWUS+UpdPBo1BnEmfRiDW49PX1T7xsA==
X-Received: by 2002:a17:90a:d3ca:: with SMTP id
 d10mr14555958pjw.35.1627060913736; 
 Fri, 23 Jul 2021 10:21:53 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id s36sm24288648pgl.8.2021.07.23.10.21.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 10:21:53 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Jul 2021 12:21:40 -0500
Message-Id: <20210723172142.3273510-7-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210723172142.3273510-1-jason@jlekstrand.net>
References: <20210723172142.3273510-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/gem: Always call obj->ops->migrate
 unless can_migrate fails
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Without TTM, we have no such hook so we exit early but this is fine
because we use TTM on all LMEM platforms and, on integrated platforms,
there is no real migration.  If we do have the hook, it's better to just
let TTM handle the migration because it knows where things are actually
placed.

This fixes a bug where i915_gem_object_migrate fails to migrate newly
created LMEM objects.  In that scenario, the object has obj->mm.region
set to LMEM but TTM has it in SMEM because that's where all new objects
are placed there prior to getting actual pages.  When we invoke
i915_gem_object_migrate, it exits early because, from the point of view
of the GEM object, it's already in LMEM and no migration is needed.
Then, when we try to pin the pages, __i915_ttm_get_pages is called
which, unaware of our failed attempt at a migration, places the object
in SMEM.  This only happens on newly created objects because they have
this weird state where TTM thinks they're in SMEM, GEM thinks they're in
LMEM, and the reality is that they don't exist at all.

It's better if GEM just always calls into TTM and let's TTM handle
things.  That way the lies stay better contained.  Once the migration is
complete, the object will have pages, obj->mm.region will be correct,
and we're done lying.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index d09bd9bdb38ac..9d3497e1235a0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -607,12 +607,15 @@ int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
 	mr = i915->mm.regions[id];
 	GEM_BUG_ON(!mr);
 
-	if (obj->mm.region == mr)
-		return 0;
-
 	if (!i915_gem_object_can_migrate(obj, id))
 		return -EINVAL;
 
+	if (!obj->ops->migrate) {
+		if (GEM_WARN_ON(obj->mm.region != mr))
+			return -EINVAL;
+		return 0;
+	}
+
 	return obj->ops->migrate(obj, mr);
 }
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
