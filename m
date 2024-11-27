Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA6A9DA205
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 07:11:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D459610E2F0;
	Wed, 27 Nov 2024 06:11:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5SWXKwc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3604210E2F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 06:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732687905; x=1764223905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GTmywVm8wGK+3xi7gMx1LDBRRoQKj1XPTRE7cjrVGZ4=;
 b=X5SWXKwcAdh1uT7fNW2khb+iCRRxIqdkbNSF9N8X/5mqc3edHMf95awC
 jobymCaX6DAtFnsryeJc5i9vtmSV+fIcpxN2GoodctoUy9Fhim39D+fLR
 /zCVyOTrmdby5Aw7h2Q1DTxyrvZr0Kunc+p7ghfjKBWbw04xVoJ4afTuH
 1gqFdc2Y9fIsJZPyvc1AqqM0KN0RKJAfWGvivi6xP7k6VcaEfzlgT9dr3
 nNr0DD11mceKSZVveOMivj+mI2Pbp37y4DgxEy0B80NbqxAMNfp4kWvF7
 5SbD+pPPALfoEDmusWRwG6rR3qzQxXRt3j2qzh7FnomQFwHERKAKgVRcu Q==;
X-CSE-ConnectionGUID: O1qKv0zZSsGiuzsIkHApuQ==
X-CSE-MsgGUID: aGAM+AjZRkeLnnYhXx8Nww==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="33125427"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="33125427"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 22:11:45 -0800
X-CSE-ConnectionGUID: gR5tiDrpTZyDkElxk5epIg==
X-CSE-MsgGUID: SFJl/pq0TcCxV1dzKrsslQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="91982088"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Nov 2024 22:11:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2024 08:11:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Brian Geffon <bgeffon@google.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 4/4] Revert "drm/i915/dpt: Make DPT object unshrinkable"
Date: Wed, 27 Nov 2024 08:11:17 +0200
Message-ID: <20241127061117.25622-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This reverts commit 51064d471c53dcc8eddd2333c3f1c1d9131ba36c.

Now that we forcefully evict all DPT VMAs during suspend
there should be no problem allowing the shrinker to eat
the DPT objects.

Cc: Brian Geffon <bgeffon@google.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12965
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3dc61cbd2e11..bb713e096db2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -283,9 +283,7 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
 static inline bool
 i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
 {
-	/* TODO: make DPT shrinkable when it has no bound vmas */
-	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
-		!obj->is_dpt;
+	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
 }
 
 static inline bool
-- 
2.45.2

