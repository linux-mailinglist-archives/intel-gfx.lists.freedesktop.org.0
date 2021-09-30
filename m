Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA5241D078
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED6B6EB0B;
	Thu, 30 Sep 2021 00:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A816EB0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 00:08:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212148101"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="212148101"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="438658505"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 17:14:06 -0700
Message-Id: <20210930001409.254817-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/display/adlp: Optimize PSR2
 power-savings in corner cases
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

The Wa_14014971508 is required to fix scanout when a feature that i915
do not support is enabled and this feature is not planned to be enabled
for adlp.

Keeping this workaround enabled can badly hurt power-savings when
a full frame fetch is required(see psr2_sel_fetch_plane_state_supported()
and psr2_sel_fetch_pipe_state_supported()).

Here a example that could badly hurt power-savings, userspace does
a page flip to a rotated plane, so CONTINUOS_FULL_FRAME set.
But then for a whole 30 seconds nothing in the screen requires updates
but because CONTINUOS_FULL_FRAME is set, it will not go into DC5/DC6.

Reverting Wa_14014971508 fixes that, as only a single frame will be
sent and then display can go to DC5/DC6 for those 30 seconds of
idleness.

BSpec: 54369
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e8af39591dfea..b37f123fe0c97 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1499,15 +1499,10 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 
 	if (full_update) {
 		/*
-		 * Wa_14014971508:adlp
-		 * SINGLE_FULL_FRAME bit is not hold in register so can not be
-		 * restored by DMC, so using CONTINUOS_FULL_FRAME to mimic that
+		 * Not applying Wa_14014971508:adlp as we do not support the
+		 * feature that requires this workaround.
 		 */
-		if (IS_ALDERLAKE_P(dev_priv))
-			val |= ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
-		else
-			val |= PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
-
+		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
 		goto exit;
 	}
 
-- 
2.33.0

