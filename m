Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7663EC6A9
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 03:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E089589E0D;
	Sun, 15 Aug 2021 01:39:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639F189DE3
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 01:39:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10076"; a="195297115"
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="195297115"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2021 18:39:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="470446180"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2021 18:39:02 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Sat, 14 Aug 2021 18:43:46 -0700
Message-Id: <20210815014346.373945-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815014346.373945-1-jose.souza@intel.com>
References: <20210815014346.373945-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 2/2] drm/i915: Nuke ORIGIN_GTT
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

There is no users of it, so no need to keep handling for it.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c         | 10 +---------
 drivers/gpu/drm/i915/display/intel_frontbuffer.h |  3 +--
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ddfc17e21668a..e4d412d395c34 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1129,7 +1129,7 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
 	if (!HAS_FBC(dev_priv))
 		return;
 
-	if (origin == ORIGIN_GTT || origin == ORIGIN_FLIP)
+	if (origin == ORIGIN_FLIP)
 		return;
 
 	mutex_lock(&fbc->lock);
@@ -1150,14 +1150,6 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 	if (!HAS_FBC(dev_priv))
 		return;
 
-	/*
-	 * GTT tracking does not nuke the entire cfb
-	 * so don't clear busy_bits set for some other
-	 * reason.
-	 */
-	if (origin == ORIGIN_GTT)
-		return;
-
 	mutex_lock(&fbc->lock);
 
 	fbc->busy_bits &= ~frontbuffer_bits;
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 6d41f53944250..4b977c1e4d52b 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -33,8 +33,7 @@
 struct drm_i915_private;
 
 enum fb_op_origin {
-	ORIGIN_GTT,
-	ORIGIN_CPU,
+	ORIGIN_CPU = 0,
 	ORIGIN_CS,
 	ORIGIN_FLIP,
 	ORIGIN_DIRTYFB,
-- 
2.32.0

