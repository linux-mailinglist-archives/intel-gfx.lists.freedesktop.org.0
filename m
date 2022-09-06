Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6A65ADE50
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 06:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE95010E166;
	Tue,  6 Sep 2022 04:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BCC10E166
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 04:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662437891; x=1693973891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xo5mzcDeBD0P3sCkEqFHjK0QhEZpssbOA/PLFrY5DKY=;
 b=V1nMH0HNYPSOPnVUaKfYvG8R4zX5YDWsW3X0fYK5BUo35E1Njh8l/FgS
 EwUnT425/SxCfZ4oFwnk1H/xEYB4V6R22LQUEGIFMUEa+qD+0Jz9QoqgZ
 4c9DyCFYg30zl9qXW+PPOPxWo/6BPjvxlh/64/Egv1uXnJZ1FOK1EsB9E
 4/3r/vYP2LlR8a9oFV0JDLHarXhiKfSMVgy6gWQGDBeW9fAdyT+WJEob0
 lXJ/wlVZVm4KdEhiSR99AZPJCFHx9gx3Smxt4HAeOGG40ANI8x20I1vNo
 koWs0yIgJLfpWAzKQyoPM0nGyqxmMzyj1jWqwmqDcIMjOnVzfLFDUfsD4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297285384"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="297285384"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 21:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="675513953"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga008.fm.intel.com with ESMTP; 05 Sep 2022 21:18:09 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 09:48:06 +0530
Message-Id: <20220906041806.4095575-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906034803.4094252-1-arun.r.murthy@intel.com>
References: <20220906034803.4094252-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear buffers
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

Starting from Gen12 Async Flip is supported on linear buffers.
This patch enables support for async on linear buffer.

UseCase: In Hybrid graphics, for hardware unsupported pixel formats it
will be converted to linear memory and then composed.

v2: Added use case
v3: Added FIXME for ICL indicating the restrictions

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index be7cff722196..f0d2c3cb3bd5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6610,6 +6610,20 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		 * this selectively if required.
 		 */
 		switch (new_plane_state->hw.fb->modifier) {
+		case DRM_FORMAT_MOD_LINEAR:
+			/*
+			 * FIXME: Async on Linear buffer is supported on ICL as
+			 * but with additional alignment and fbc restrictions
+			 * need to be taken care of. These aren't applicable for
+			 * gen12+.
+			 */
+			if (DISPLAY_VER(i915) < 12) {
+				drm_dbg_kms(&i915->drm,
+					    "[PLANE:%d:%s] Modifier does not support async flips\n",
+					    plane->base.base.id, plane->base.name);
+				return -EINVAL;
+			}
+
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.25.1

