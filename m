Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3EB650CD3
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 14:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E7310E2A0;
	Mon, 19 Dec 2022 13:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BF610E2A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 13:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671457839; x=1702993839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZyVL5YT4+cP8LE8QI3LRgXdlZo4lIAtQ5LYZK3muGLg=;
 b=U8B6XaO2XVvDNKD4Uax0mBGveVzGagwm7DR97KV5mgFCPicdaBKaNqDs
 1YoJDjNlMPkJVBtJzz6rZyKrnlmOoCpqrDCsYn/WRN+vJrVCreVEkVat0
 bAdLAbWTkZTdrPxM1AOIyTAfXZDxGy8sfy1rRvjNgpRul+9tbtT7vNf7B
 1X1CChaIHehG9xHmsglfifk9I8W042jHhUxGrynrsLVJd+Cqtx3PRgx4D
 31VWN+dkjAGJW2VJE/E7t9NstVetUw9WjScCKHwloComz2p1KA6NLOHnD
 0JI/QgV+n73y2CEFT9Z/RF+0y3KSG4yKKhqOGjt2p9HiNGnLQ2XK9m6nD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="299027348"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="299027348"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 05:50:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="683012132"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="683012132"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 19 Dec 2022 05:50:36 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 15:50:35 +0200
Message-Id: <20221219135035.13059-1-stanislav.lisovskiy@intel.com>
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 63137ae5ab217..75a17f38def53 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -158,11 +158,11 @@ struct intel_modifier_desc {
 static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
-		.display_ver = { 13, 13 },
+		.display_ver = { 13, 14 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC,
-		.display_ver = { 13, 13 },
+		.display_ver = { 13, 14 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
 
 		.ccs.cc_planes = BIT(1),
@@ -170,11 +170,11 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		FORMAT_OVERRIDE(gen12_flat_ccs_cc_formats),
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
-		.display_ver = { 13, 13 },
+		.display_ver = { 13, 14 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED,
-		.display_ver = { 13, 13 },
+		.display_ver = { 13, 14 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4,
 	}, {
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
-- 
2.37.3

