Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAA353F988
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 11:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C582012B1BC;
	Tue,  7 Jun 2022 09:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB21712B1A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 09:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654593732; x=1686129732;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9W4k3i3RLUubfIVa1II318bOkiWQFRd85VN2MF62bpc=;
 b=jIrvDbHj7YyoZ4VhssaSrrz1miJeenyD0rmtefmAeqeJ9qJ2meMUHPja
 d1vfGBgcK09Z9jxKgIra7SYLr4+dYf52vT9whEHqIvgpbvqt5J8o5mm1A
 MURRpYOtnJekRLDndxOGe822h9OArUYSgJIRNuLoqKcL6RneksTNuU6of
 Ewnaj3u70BIf/c/edLRRmVO9Fw6OWBY+y30/mebpeMDqMTfVQ11+iI21V
 Li/aKqBgo3Uiq5EJzc4qao1Iq8erHqes3mh73bjadEKJJdu8OF6w1upQi
 RooJFmJUjTActmaP1JF4jJYAK9d6p1Q+R7SYLG6QB4W4Hznh0N93Mpcs5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="276755864"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="276755864"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:22:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="636045591"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:22:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 12:22:07 +0300
Message-Id: <20220607092207.476653-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/client: only include what's needed
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only the uapi header is required.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index f796c5e8e060..69496af996d9 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -11,7 +11,7 @@
 #include <linux/spinlock.h>
 #include <linux/xarray.h>
 
-#include "gt/intel_engine_types.h"
+#include <uapi/drm/i915_drm.h>
 
 #define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
 
-- 
2.30.2

