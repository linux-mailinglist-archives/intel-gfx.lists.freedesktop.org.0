Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69DA6524A3
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 17:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EEE10E39F;
	Tue, 20 Dec 2022 16:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 628D310E39F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 16:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671553769; x=1703089769;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tw88028JTQErU1oRPUM/N1pxlBoDGOrpLcmdjzxcC1Q=;
 b=SVJdJgJpAwAGNAyiMdgWjNsS5jXYwxtL5HbZTTCtuxpVND2ZueiaZqIC
 IyM1PsGSkEd2+5caVMtGPbMLkVR8M+LVH2FNVC5w4tb44hqS9pexXLdqp
 KEBkdIvoPVafQYX6RpjaA8hGydLFuiO3XqsHhSv6/Iz5H1WyJlfd7/2kO
 k2cbixy2I68Tby40WhwNE3+HxGIxdbf0q9KVl7ElPAE/xe+3vA+H/3cZ0
 Eo/Es3s6LiSOU8YI8TMdvVNavxatzRAfN+lYHbf5OmJf2ngvt+LlbU2Ra
 ocf4IMKbSXxtBNFy27P43d3Hub26x7GC2UFwukxpFmGPa6+uVko1f7a49 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="299997425"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="299997425"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 08:29:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714507338"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="714507338"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2022 08:29:27 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 18:29:26 +0200
Message-Id: <20221220162926.22805-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add support of Tile4 to MTL
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
Cc: juha-pekka.heikkila@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have some Tile4 tests now skipping, which were
supposed to be working. So lets make them work, by
adding display_ver 14 as supported.

v2: - Remove "14" for Tile 4 CCS formats, as they
      seem to be not supported by DG2(Juha-Pekka Heikkila)
    - For generic Tile 4, the opposite - lets use -1
      in order to make sure all the next gens support it by
      default(Juha-Pekka Heikkila)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 63137ae5ab217..93d0e46e54813 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -174,7 +174,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED,
-		.display_ver = { 13, 13 },
+		.display_ver = { 13, -1 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4,
 	}, {
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
-- 
2.37.3

