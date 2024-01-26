Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBC883D730
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 11:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32AF510F61D;
	Fri, 26 Jan 2024 10:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B4310F61C
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jan 2024 10:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706263400; x=1737799400;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZD23QRaCFNl9Jbvu5ZIVt+x6ukg86aKmHZV44lgKBJ8=;
 b=ie4hg8B7h/78EfrCjX4noYmbfNJ0XtCgdYLLBn+E271GbTbr05a2HOG8
 O5Uv0+Jciqlu+XklpCKIMMpdP+mpCE9IvaLBt5dkV9fTOQLupe1JDZzqu
 IdcCmopCSRQCRhiPKRmmf/LOGjeQ5bgmq4VinhN/rF3TQCsAsp6RKVQHK
 jRhhmknxNExfk2R3REAanzLJu03qMZUQ5ibBVlO8Unq4lGd1XcnIFiXRW
 gg/SPyV6bDao4FQYa0dNIxmfidJ+s9rEii2jdfsoEOgGVvLw2tkZKNoM/
 cW3GcmSHj/j6oxjz5RQcNLN4JWC/gQFc1lLwIpWUhJQovoBXawndSIKBQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="15959473"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="15959473"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 02:03:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="906270215"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="906270215"
Received: from imititel-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.59.60])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 02:03:18 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915: update eDP MSO pipe mask for newer platforms
Date: Fri, 26 Jan 2024 12:03:09 +0200
Message-Id: <20240126100309.2024264-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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
Cc: luciano.coelhoa@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting from display version 14, pipes A and B are supported in eDP
MSO.  After display version 20 there are no restrictions.

Update the function that returns the pipe mask for eDP MSO
accordingly.

Bspec: 68923, 55473
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: James Ausmus <james.ausmus@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

In v2:
   * allow pipes A and B from ver 14 to 20 [Gustavo]


drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 922194b957be..29a616a8e72d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2336,13 +2336,20 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 	}
 }
 
-/* Splitter enable for eDP MSO is limited to certain pipes. */
+/*
+ * Splitter enable for eDP MSO is limited to certain pipes on certain
+ * platforms.
+ */
 static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
 {
-	if (IS_ALDERLAKE_P(i915))
+
+	if (IS_ALDERLAKE_P(i915) ||
+	    IS_DISPLAY_IP_RANGE(i915, IP_VER(14, 0), IP_VER(20, 0)))
 		return BIT(PIPE_A) | BIT(PIPE_B);
-	else
+	else if (DISPLAY_VER(i915) < 14)
 		return BIT(PIPE_A);
+
+	return ~0;
 }
 
 static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
-- 
2.39.2

