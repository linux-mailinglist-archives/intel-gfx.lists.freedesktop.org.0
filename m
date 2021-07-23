Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7353D3E77
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30CE6F965;
	Fri, 23 Jul 2021 17:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D036F958
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:21:53 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 j8-20020a17090aeb08b0290173bac8b9c9so9891370pjz.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 10:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vnyXfJPaqObrTjcEXN3XMXwAr7gDjoT2KPwNtmx5Ul0=;
 b=tfEI32cTF7kZ7PCuha3UjHM+ffnmVfTePRNQgxgBmb3zzwl9XFOTJIIOBDYU6tc4Tn
 WDhBm8iWvkMvwLlIIpez9lT6X/okKtuH4HxJepG8Mq+veLlMe0WWhZZ0ihBOHbl8T5hl
 OHH+dzeh7vO/Y+4eRel1qlVQgfs4mtFdr2HgzZpNObO3RMnEsfePXhG4sxHD8EXYrbai
 fYEviJXyg6eUwb308PQ2SvUUSg5tujt2B728EmkhaVXkVbi7VH0Kht7nhz7NmeXwY/Dc
 nSomfIzYK7KgmtYAaWEybnWP6GtWOy7vjMrG29mTe08WIdLe2BTzDYP3Evd7+U/o71Z7
 w9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vnyXfJPaqObrTjcEXN3XMXwAr7gDjoT2KPwNtmx5Ul0=;
 b=ZGxtXskTP6L3lsq1jnSEuAjfpxiJADrROluu7P3CbIwSh+1dSw037HdHMzjZSSNxtO
 +v7iZljDFC9I7gk0o8MzrOLcInBRjizDlvi8UyGo2oHXAIBuDbWuIa1Zty2CNncYYSQ7
 pJxuDFpswDF6Tu45V6pybvHxZdFu2qEmsyeG3tGA84iWTeyCt+aNZ2eDQ9K7hxZ/2qde
 pMRwbRKV9V6P7I4eDN6NU+v/057UpoXd1efo2pjrUvg48CywrVuBmi/UXqxhQyl7p26Y
 dVplKq4RN42n4d36laNFP3oG5ciO/cblvD857JFsf3gLDMozMnXJU+BX0I6uehPEnywx
 JXYw==
X-Gm-Message-State: AOAM530JPy1UEjszEYrJoIC/gm01HatfC2xCKye03NLKnUe9p0uu5l8V
 ghDVfqif6xePVzvnmMXGc8beco9YUVotvw==
X-Google-Smtp-Source: ABdhPJyx6zNH4bca/r8Cj8ZnV4iZ2FsLSS+Z3k69IujAXPjzU+7r+5iB9Up5psTk0dIbUQHS3kKaWA==
X-Received: by 2002:a17:90a:7d02:: with SMTP id
 g2mr5372871pjl.168.1627060912634; 
 Fri, 23 Jul 2021 10:21:52 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id s36sm24288648pgl.8.2021.07.23.10.21.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 10:21:52 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Jul 2021 12:21:39 -0500
Message-Id: <20210723172142.3273510-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210723172142.3273510-1-jason@jlekstrand.net>
References: <20210723172142.3273510-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/gem/ttm: Only call
 __i915_gem_object_set_pages if needed
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

__i915_ttm_get_pages does two things.  First, it calls ttm_bo_validate()
to check the given placement and migrate the BO if needed.  Then, it
updates the GEM object to match, in case the object was migrated.  If
no migration occured, however, we might still have pages on the GEM
object in which case we don't need to fetch them from TTM and call
__i915_gem_object_set_pages.  This hasn't been a problem before because
the primary user of __i915_ttm_get_pages is __i915_gem_object_get_pages
which only calls it if the GEM object doesn't have pages.

However, i915_ttm_migrate also uses __i915_ttm_get_pages to do the
migration so this meant it was unsafe to call on an already populated
object.  This patch checks i915_gem_object_has_pages() before trying to
__i915_gem_object_set_pages so i915_ttm_migrate is safe to call, even on
populated objects.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index f253b11e9e367..771eb2963123f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -662,13 +662,14 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 		i915_ttm_adjust_gem_after_move(obj);
 	}
 
-	GEM_WARN_ON(obj->mm.pages);
-	/* Object either has a page vector or is an iomem object */
-	st = bo->ttm ? i915_ttm_tt_get_st(bo->ttm) : obj->ttm.cached_io_st;
-	if (IS_ERR(st))
-		return PTR_ERR(st);
+	if (!i915_gem_object_has_pages(obj)) {
+		/* Object either has a page vector or is an iomem object */
+		st = bo->ttm ? i915_ttm_tt_get_st(bo->ttm) : obj->ttm.cached_io_st;
+		if (IS_ERR(st))
+			return PTR_ERR(st);
 
-	__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
+		__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
+	}
 
 	return ret;
 }
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
