Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F367199E4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 12:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A412310E21E;
	Thu,  1 Jun 2023 10:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 582C110E21E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 10:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685615727; x=1717151727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/6f4lYE4AP9V43fpUINI3G3o6GCDKuCO12rfg7N6dcQ=;
 b=DDI2QUSXQX18W3ZAsAaRGreJGOvZKYIIY7gDyhTn9GFqYmR0J3e7wIgn
 5MWzaWH8SCTtg+RFsCP5ye3Ib9ToTz9Zfews+a2lwgfRmaapdHA+Venvd
 a917W1/FXd5WpXIAfkeny7RG13q2IYtpVYFV7Ft9E22D3KG4wZ1EuxJHu
 H0csJk8C3xzTfRQ84WEyJofoltQxrW/HPdes8aWTVoin5/N3dqS4+2mNZ
 ml7xrRXzqZJRGLKbXM/I+Pa8xZnLXwV33R69ScqMTDpRv1Uyy0oLQgBwz
 5ESiB3osPrgf3NiSHZWKx3pCrDEmCz9aTu/wok4+mg7QQzZUs6L7Sx7Se w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421306052"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="421306052"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 03:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="881558692"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="881558692"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga005.jf.intel.com with ESMTP; 01 Jun 2023 03:35:24 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 15:57:57 +0530
Message-Id: <20230601102757.187114-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230601051503.175869-1-arun.r.murthy@intel.com>
References: <20230601051503.175869-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2] drm/i915/display: Print useful information on
 error
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

For modifier not supporting async flip, print the modifier and display
version. Helps in reading the error message.

v2: Reframe the error message (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f51a55f4e9d0..adaba43bde2b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6012,8 +6012,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			 */
 			if (DISPLAY_VER(i915) < 12) {
 				drm_dbg_kms(&i915->drm,
-					    "[PLANE:%d:%s] Modifier does not support async flips\n",
-					    plane->base.base.id, plane->base.name);
+					    "[PLANE:%d:%s] Modifier 0x%llx does not support asyn flip on display ver %d\n",
+					    plane->base.base.id, plane->base.name,
+					    new_plane_state->hw.fb->modifier, DISPLAY_VER(i915));
 				return -EINVAL;
 			}
 			break;
@@ -6025,8 +6026,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
-				    "[PLANE:%d:%s] Modifier does not support async flips\n",
-				    plane->base.base.id, plane->base.name);
+				    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip\n",
+				    plane->base.base.id, plane->base.name,
+				    new_plane_state->hw.fb->modifier);
 			return -EINVAL;
 		}
 
-- 
2.25.1

