Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E3F399350
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 21:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854506EE1C;
	Wed,  2 Jun 2021 19:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7486EE01
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 19:12:19 +0000 (UTC)
IronPort-SDR: Gypg54Q0E5og7pFwP7DZ3Yv7Hyp5LCNaiH0gGPvyAHAlyOpuaJs/vGgZvA0QLy57FwKJaaw1gN
 q/8tXeYZRBzw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="203901859"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="203901859"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 12:12:01 -0700
IronPort-SDR: qsb7TK4zhkFPEz7ltwpddQ3BWi5ikfZ9e4UtnDsphX25w2cZUrTAgISKdEk1CqZ3aViBnRPajJ
 2JyzWursrL4Q==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="479828630"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 12:12:01 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Jun 2021 12:11:48 -0700
Message-Id: <20210602191148.3344574-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602191148.3344574-1-lucas.demarchi@intel.com>
References: <20210602191148.3344574-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915/display: replace IS_GEN() in
 commented code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we are replacing IS_GEN() with GRAPHICS_VER(), make sure we take
care of the comments as well.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index ce73ebdfc669..aa52af7891f0 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1307,7 +1307,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	 * the active portion. Hence following this formula seems
 	 * more trouble that it's worth.
 	 *
-	 * if (IS_GEN(dev_priv, 4)) {
+	 * if (GRAPHICS_VER(dev_priv) == 4) {
 	 *	num = cdclk * (tv_mode->oversample >> !tv_mode->progressive);
 	 *	den = tv_mode->clock;
 	 * } else {
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
