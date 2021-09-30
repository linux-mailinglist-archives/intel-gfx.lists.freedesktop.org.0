Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F6041D07A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81EC06EB10;
	Thu, 30 Sep 2021 00:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3ACA6E2B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 00:08:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212148098"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="212148098"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="438658496"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 17:14:04 -0700
Message-Id: <20210930001409.254817-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Handle frontbuffer
 rendering when PSR2 selective fetch is enabled
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

When PSR2 selective fetch is enabled writes to CURSURFLIVE alone do
not causes the panel to be updated when doing frontbuffer rendering.

From what I was able to figure from experiments the writes to
CURSURFLIVE takes PSR2 from deep sleep but panel is not updated
because PSR2_MAN_TRK_CTL has no start and end region set.

As we don't have the dirt area from current flush and invalidate API
and even if we did userspace could do several draws to frontbuffer and
we would need a way to append all the damaged areas of all the draws
that need to be part of next frame.

So here only programing PSR2_MAN_TRK_CTL to do a single full frame
fetch.

It is a safe approach as if scanout is in the visible area
the single full frame will only be visible for hardware in the next
frame because of the double buffering, and if scanout is in vblank
area it will be draw in the current frame.

No need to disable PSR and wait a few miliseconds to enable it again.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8534cbb0d5144..7185801d5deff 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1397,10 +1397,22 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 }
 
+static inline u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ?
+	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
+	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
+}
+
 static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
+	if (intel_dp->psr.psr2_sel_fetch_enabled)
+		intel_de_rmw(dev_priv,
+			     PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0,
+			     man_trk_ctl_single_full_frame_bit_get(dev_priv));
+
 	/*
 	 * Display WA #0884: skl+
 	 * This documented WA for bxt can be safely applied
-- 
2.33.0

