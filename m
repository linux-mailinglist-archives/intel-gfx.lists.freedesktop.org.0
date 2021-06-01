Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0300C39713A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 12:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A573A6EA0F;
	Tue,  1 Jun 2021 10:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E3B6EA0F;
 Tue,  1 Jun 2021 10:16:43 +0000 (UTC)
IronPort-SDR: 07vvwqMoAlEROzACjpyT/hkTdRDJHaUpD8E/N3f4kD0KocC3vWZhEyOrnx3dumyoHMQn2Edy3o
 UK9B2F3Ly8ZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="203550063"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="203550063"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:16:43 -0700
IronPort-SDR: bHqSmD5y0kbxtCAFVm05bFgxofmHqJWvUpqw4I+xw+6osEVK0ZIrz2MJ44873/dsMJQ64cvwUP
 1JosHPK1AaxQ==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="482431431"
Received: from linux-desktop.iind.intel.com ([10.223.34.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:16:41 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  1 Jun 2021 16:22:18 +0530
Message-Id: <20210601105218.29185-22-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210601105218.29185-1-uma.shankar@intel.com>
References: <20210601105218.29185-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/21] drm/i915/xelpd: Enable plane gamma
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

Enable plane gamma feature in check callbacks. Decide
based on the user input.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 6ba670b6a5c9..5d527d12ec45 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -959,7 +959,9 @@ static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	u32 plane_color_ctl = 0;
 
-	plane_color_ctl |= PLANE_COLOR_PLANE_GAMMA_DISABLE;
+	/* FIXME needs hw.gamma_lut */
+	if (!plane_state->uapi.gamma_lut)
+		plane_color_ctl |= PLANE_COLOR_PLANE_GAMMA_DISABLE;
 
 	/* FIXME needs hw.degamma_lut */
 	if (plane_state->uapi.degamma_lut)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
