Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 418D23959BC
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 13:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C506E8F1;
	Mon, 31 May 2021 11:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2047F6E8ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 11:30:02 +0000 (UTC)
IronPort-SDR: CuKQ/jmzCUfYVrBCTeGgA0NMhgHimo7MU86YUArzOdpdbh7SFUQgHz+M1QJvXlOBWd9zOTQZNX
 U6EOx5wWiBPg==
X-IronPort-AV: E=McAfee;i="6200,9189,10000"; a="190457309"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="190457309"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 04:30:01 -0700
IronPort-SDR: wrHAu9N3kOQkYL0gVcJLko9oQYAx/6ILYotM53BAbDF8dN7jE+6dqnuqBXu7fAyfa7DQS6mWLF
 oyaLpMm7f4PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="399286844"
Received: from pedgms-s2600cwr.png.intel.com ([10.221.121.95])
 by orsmga006.jf.intel.com with ESMTP; 31 May 2021 04:29:59 -0700
From: "Sodhi, Vunny" <vunny.sodhi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 May 2021 19:32:17 +0800
Message-Id: <1622460737-46494-1-git-send-email-vunny.sodhi@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add support of MOD_Y_TILED
 during fb init
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
Cc: Sodhi@freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding Y_TILED modifier which is needed to support DRM_FORMAT_NV12
during framebuffer initialization.

Signed-off-by: Sodhi, Vunny <vunny.sodhi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index caf0414..a9b1b62 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11610,8 +11610,10 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		if (tiling == I915_TILING_X) {
 			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
 		} else if (tiling == I915_TILING_Y) {
+			mode_cmd->modifier[0] = I915_FORMAT_MOD_Y_TILED;
+		} else {
 			drm_dbg_kms(&dev_priv->drm,
-				    "No Y tiling for legacy addfb\n");
+				    "Unsupported tiling for legacy addfb\n");
 			goto err;
 		}
 	}
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
