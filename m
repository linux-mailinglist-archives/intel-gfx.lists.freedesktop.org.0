Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D01759369
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 12:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A75310E09C;
	Wed, 19 Jul 2023 10:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B36810E465
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 10:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689763717; x=1721299717;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HENEn9cqh848y+HdATY7UHcjjf6RF2ELA2TY2Kv0jBk=;
 b=mu4T7J8PAHtVqUip03+HXCDhL1hB1PDTykcxNzZm++cc7PcbFfqFLk/5
 3AU6eASg22nxH4hIyXP6CcI/BWx3Xvu1K88thrWpzD5ht60tmdkhkYnku
 XlMOs9JBL7Pe4XDrmJQb24RI87kuRg7TFdND19JvEgZeR3nutOAWvXfnn
 PbkyQG0XBHmFyo+HlPrAHlAnT+aQ3Ep6FD8NnnoGgqTNebynAY3Yuf8ls
 u7RePkQIY++tjkB9KPaPK087/3Mh//0w5BH8F+ld1hE31V2x6m97mqFKM
 g/GHEat+DlTKQZCM1//OkgYUsgtc8P2GJMlctg9oVTpT5osgt0sa8BVvO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="366471068"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="366471068"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 03:48:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="753665930"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="753665930"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 19 Jul 2023 03:48:34 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 13:48:33 +0300
Message-Id: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Start using plane scale factor for
 relative data rate
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
Cc: nemesa.garg@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

BSpec clearly instructs us to use plane scale factor when calculating
relative data rate to be used when allocating DDB blocks for each plane.
For some reason we use scale factor for data_rate calculation, which is
used for BW calculations, however we are not using it for DDB calculations.
So lets fix it as described in BSpec 68907.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 7d9578ebae556..60a492e186ab8 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -212,6 +212,7 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int width, height;
+	unsigned int rel_data_rate;
 
 	if (plane->id == PLANE_CURSOR)
 		return 0;
@@ -241,7 +242,11 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 		height /= 2;
 	}
 
-	return width * height * fb->format->cpp[color_plane];
+	rel_data_rate = width * height * fb->format->cpp[color_plane];
+
+	return intel_adjusted_rate(&plane_state->uapi.src,
+				   &plane_state->uapi.dst,
+				   rel_data_rate);
 }
 
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
-- 
2.37.3

