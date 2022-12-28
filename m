Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E672F6577C2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 15:26:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2655F10E3AF;
	Wed, 28 Dec 2022 14:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3082A10E3AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 14:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672237609; x=1703773609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gqogxgS1pxrKSLf2omy8gxCPjjywlxxtRfQHhOVBS2I=;
 b=liXPxV63EIx54kRONmRWbTEVOJENDOQfc4Alsa0xg1fDVSTsrL0JdkyL
 aay4JAbOiayqMefoqnQa2PbF8yupvcFv61vXclK9yMzEio5DQ2HaRbVhT
 Vc0DSXm/fBQky4FfCiNSApFHv/2N6OoOe0bwILa80BfaW2fCoK4ynIO+2
 TT1MsVk1qLktDmvBgRHkB7+C6o616SKY8TARGdZhR4sqjFs+ncrpNrta/
 NyFTPZ2xWIVw9tI6vSMTJHprzzRxgMUv/FNYcJfgs65aJ3BpUAqOHYbPd
 h+WDDqQIgSLVoMKP+mHXeuq1RmfEflRFIIChvIz/+JnomzB1ghvzNiODK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="322113518"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="322113518"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="982101476"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="982101476"
Received: from rsznejde-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.251])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:44 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Dec 2022 16:25:33 +0200
Message-Id: <20221228142533.880703-7-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
References: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 6/6] drm/i915: Remove truncation warning for
 large objects
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
Cc: thomas.hellstrom@linux.intel.com, andrzej.hajda@intel.com,
 jani.nikula@intel.com, chris@chris-wilson.co.uk, matthew.auld@intel.com,
 mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Having addressed the issues surrounding incorrect types for local
variables and potential integer truncation in using the scatterlist API,
we have closed all the loop holes we had previously identified with
dangerously large object creation. As such, we can eliminate the warning
put in place to remind us to complete the review.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Brian Welty <brian.welty@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Testcase: igt@gem_create@create-massive
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4991
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index d7efcfc600e5..ed5d5d8da417 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -20,25 +20,10 @@
 
 enum intel_region_id;
 
-/*
- * XXX: There is a prevalence of the assumption that we fit the
- * object's page count inside a 32bit _signed_ variable. Let's document
- * this and catch if we ever need to fix it. In the meantime, if you do
- * spot such a local variable, please consider fixing!
- *
- * We can check for invalidly typed locals with typecheck(), see for example
- * i915_gem_object_get_sg().
- */
-#define GEM_CHECK_SIZE_OVERFLOW(sz) \
-	GEM_WARN_ON((sz) >> PAGE_SHIFT > INT_MAX)
-
 static inline bool i915_gem_object_size_2big(u64 size)
 {
 	struct drm_i915_gem_object *obj;
 
-	if (GEM_CHECK_SIZE_OVERFLOW(size))
-		return true;
-
 	if (overflows_type(size, obj->base.size))
 		return true;
 
-- 
2.37.1

