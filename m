Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F91D71F86A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 04:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7C910E609;
	Fri,  2 Jun 2023 02:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618CA10E609
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 02:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685672967; x=1717208967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dKYceMnxwXmZDedBPkaSLIVJhUGYNq86ogwFc/7HAh8=;
 b=YlASSGheLpvi6sZDTv/RBaKrFQH0zgI5v5pU98swo6A1Ck6TWkeDrfuC
 oRXzh/zabf1q4XqnI38MvYRSXkWSqcVSaeHkDG5447r42xQMBMqQUTTi0
 H+g9K6wtvPpxEV1tblN9sMyFQhvWu9ZPqbAP4YqvjgQ6/n12VwbiqREw7
 PnVqYtYgb7CVgVwxU1afc5XjcZRLLS4o3Yl2V+iu6M0+jITUPT0oKJ+ie
 S7LFcIIT40bCmS+IX16Jqkg1C0/srgFz77839Cgk7sd8Efsbsd7KbVrVQ
 rBNTlLY0nN7tudayh8YXVuh80LFC21Qxlj874wun3OXDcddaTgDeZ42Lh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="345318178"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="345318178"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 19:29:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="820082251"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="820082251"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2023 19:29:25 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 07:51:57 +0530
Message-Id: <20230602022157.221225-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230601051503.175869-1-arun.r.murthy@intel.com>
References: <20230601051503.175869-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915/display: Print useful information on
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
index f51a55f4e9d0..f23dd937c27c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6012,8 +6012,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			 */
 			if (DISPLAY_VER(i915) < 12) {
 				drm_dbg_kms(&i915->drm,
-					    "[PLANE:%d:%s] Modifier does not support async flips\n",
-					    plane->base.base.id, plane->base.name);
+					    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip on display ver %d\n",
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

