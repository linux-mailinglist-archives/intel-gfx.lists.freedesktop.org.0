Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505B4150AE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 21:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9726E043;
	Wed, 22 Sep 2021 19:48:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D5B6E043;
 Wed, 22 Sep 2021 19:48:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="203182199"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="203182199"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 12:48:31 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="613664222"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 12:48:31 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <dri-devel@lists.freedesktop.org>,
	<intel-gfx@lists.freedesktop.org>
Cc: <jason@jlekstrand.net>
Date: Wed, 22 Sep 2021 12:43:33 -0700
Message-Id: <20210922194333.8956-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix bug in user proto-context
 creation that leaked contexts
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

Set number of engines before attempting to create contexts so the
function free_engines can clean up properly. Also check return of
alloc_engines for NULL.

v2:
 (Tvrtko)
  - Send as stand alone patch
 (John Harrison)
  - Check for alloc_engines returning NULL

Cc: Jason Ekstrand <jason@jlekstrand.net>
Fixes: d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle create parameters (v5)")
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Cc: <stable@vger.kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c2ab0e22db0a..9627c7aac6a3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -898,6 +898,11 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
 	unsigned int n;
 
 	e = alloc_engines(num_engines);
+	if (!e) {
+		return ERR_PTR(-ENOMEM);
+	}
+	e->num_engines = num_engines;
+
 	for (n = 0; n < num_engines; n++) {
 		struct intel_context *ce;
 		int ret;
@@ -931,7 +936,6 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
 			goto free_engines;
 		}
 	}
-	e->num_engines = num_engines;
 
 	return e;
 
-- 
2.32.0

