Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 551A950FC78
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 14:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE1710F379;
	Tue, 26 Apr 2022 12:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF6310F379
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 12:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650974684; x=1682510684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mfh3kU2XABnhfql5jF+DmLQB/rLa4oDxrG7m+6gtnlg=;
 b=jfQ+OO++fryhWOXKzqZnBWMoTz64FhjacKfgsUCoFxRlh50gBgB+D/zS
 BZam+gFdSBZ2BJzZaXeHuOsGd5IX9NL9jP3j90c1D8+6vn1qyXg7Ra5kX
 +ZqW/71myqiiPwzJdB1P5qBZ3z4WOOwEc9UFIwh0Uyv20OWSsUwSoCT2C
 Fbx6xPvPIL6rnq7nQ59Zk/zvA2tO3u2A0QmKy4Q81VNSx0xzH3hIAiHjX
 qV44M637SixNrmkyi1Gg/QK88kHrpf4ddpxJuNQjG/b85JmLkv0pv1vlm
 Q7wdegB8pjO6by60HSskyDGKj4OOvV5IgVdKu/afmfy//DFou58nx4JNR Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="326042998"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="326042998"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 05:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="564551362"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga007.fm.intel.com with ESMTP; 26 Apr 2022 05:04:42 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 17:34:07 +0530
Message-Id: <20220426120407.1334318-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear buffers
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0decf3d24237..e3bf250b85e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7522,6 +7522,13 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		 * this selectively if required.
 		 */
 		switch (new_plane_state->hw.fb->modifier) {
+		case DRM_FORMAT_MOD_LINEAR:
+			if (DISPLAY_VER(i915) < 12) {
+				drm_dbg_kms(&i915->drm,
+					"[PLANE:%d:%s] Modifier does not support async flips\n",
+					plane->base.base.id, plane->base.name);
+				return -EINVAL;
+			}
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.25.1

