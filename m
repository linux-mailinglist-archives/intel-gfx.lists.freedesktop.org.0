Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C321D355E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 17:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0FF26EB74;
	Thu, 14 May 2020 15:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659EA6EB74
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 15:40:20 +0000 (UTC)
IronPort-SDR: S0WFEgsH01UA5jPxM0h1DjHSoI+avO7mUVppAwLU2XaZwLg6ROYIuJjvuChLn3GWSjOCRn4N/5
 FVLpDf1OKgjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 08:40:19 -0700
IronPort-SDR: y3nbDcDdN5mz8SLADONO9zmBj87R8OKw1Q5JgevHMv22G/q/dMk1ohByEvRkiBx/umLtWX4nV7
 yMD29qInOkGw==
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="437949327"
Received: from oalgaze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.44])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 08:40:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 18:40:04 +0300
Message-Id: <20200514154006.4761-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514154006.4761-1-jani.nikula@intel.com>
References: <20200514154006.4761-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/params: fix i915.fake_lmem_start
 module param sysfs permissions
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
Cc: jani.nikula@intel.com, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

fake_lmem_start does not need to be mutable via module param sysfs. It's
only used during driver probe.

Fixes: 1629224324b6 ("drm/i915/lmem: add the fake lmem region")
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index add00ec1f787..a3dde770226d 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -173,7 +173,7 @@ i915_param_named(enable_gvt, bool, 0400,
 #endif
 
 #if IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)
-i915_param_named_unsafe(fake_lmem_start, ulong, 0600,
+i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
 	"Fake LMEM start offset (default: 0)");
 #endif
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
