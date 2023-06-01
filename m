Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270E971921D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 07:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A7510E096;
	Thu,  1 Jun 2023 05:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75FB10E096
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 05:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685596954; x=1717132954;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YZT6Q9IuEtxBTzbGbx16eRBJp4ECXBQO8OltVgEifPg=;
 b=DOnuBDkQeSNd5tjaSS2qu+S13kj+oXuAucMfdD7yfkEEnM6TnfXPs6kn
 ovJpbfKLzNT8cO+nI1cOx0b0htRTgMXGQfYRB8vPf7INeJxqN19iJnZlP
 Xkwg3OGme4xKzoqQJb9RkevCYaqRIAqYpTVunysyOKPjMjJr36KlG9FU8
 9qOcJ0CfUrrP20WTj/+ocBLZ7i2wGVjmkiEz2JzCXjPKZs8J7087puL0S
 09VCfJIyurHCsjyQ+O0wyO0OTEX+ngL0rWQ64rtUp+2V/dyPWTTMVlI7/
 ikpOxIvLivgI1UrdAfL/ODqoWb35jNJvp8IDZmZddnZZpFZ8j/vx2Nj7c g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="335076339"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="335076339"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 22:22:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="707178785"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="707178785"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga002.jf.intel.com with ESMTP; 31 May 2023 22:22:30 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 10:45:03 +0530
Message-Id: <20230601051503.175869-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Print usefull information on
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f51a55f4e9d0..0877f1e251a0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6012,8 +6012,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			 */
 			if (DISPLAY_VER(i915) < 12) {
 				drm_dbg_kms(&i915->drm,
-					    "[PLANE:%d:%s] Modifier does not support async flips\n",
-					    plane->base.base.id, plane->base.name);
+					    "[PLANE:%d:%s] Asyn flip on modifier 0x%llx not supported on Display Ver %d\n",
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
+				    "[PLANE:%d:%s] Unknown modifier 0x%llx ! async flip not supported\n",
+				    plane->base.base.id, plane->base.name,
+				    new_plane_state->hw.fb->modifier);
 			return -EINVAL;
 		}
 
-- 
2.25.1

