Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 870234EFCCE
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Apr 2022 00:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1978310E155;
	Fri,  1 Apr 2022 22:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA8D10E0CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 22:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648852077; x=1680388077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ly950f1+Gehr/pHweBoktBRS+pe3HmYu/3jbZhyRvME=;
 b=B4MwdGQEi5klvc8xLBFkJAjcVDT4e4WgP9ok1nJ9OVDDyV6ZJIVHlkrh
 aeT787zNalVLiyq2a2jqIfjwpd7Cq/Q/9QdDtdhLlNFAltz4xXQeRTMNM
 kKqVOL+GP2ksMZg+eZQoGnw5t6GPpKmsqCqlhirwViQpAcbhgfQUQU+pv
 +D69BMAtdB8gvh1aJ2wmK5ipF9YOHifUaH7eNWzldiHBCfFF4hTK2x2Sv
 s6CpPq2HqVd/+JOFXxZP/DZdQgHg82Gd05WU6+WSQmzDpAQWNJQgvAmwR
 XdNx7CUeFi4oqD+I3vStg7MXVJPHLQ+C5cR3RzQVW86kwPkjxTHN7QWlp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="247750781"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="247750781"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 15:27:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="567866707"
Received: from srtirum1-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.213.185.120])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 15:27:54 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Apr 2022 15:29:09 -0700
Message-Id: <20220401222911.199284-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display/psr: Set partial frame
 enable when forcing full frame fetch
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

Following up what was done in commit 804f46885317 ("drm/i915/psr: Set
"SF Partial Frame Enable" also on full update") and also setting
partial frame enable when psr_force_hw_tracking_exit() is called.

Also as PSR2_MAN_TRK_CTL is a double buffered registers do a RMW
is not a good idea so here also setting the man_trk_ctl_enable_bit()
that is required in TGL and only doing a register write.

v2:
- not doing a rmw

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 80002ca6a6ebe..2da2468f555ec 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1436,6 +1436,11 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 }
 
+static inline u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
+}
+
 static inline u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
 {
 	return IS_ALDERLAKE_P(dev_priv) ?
@@ -1455,9 +1460,11 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled)
-		intel_de_rmw(dev_priv,
-			     PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0,
-			     man_trk_ctl_single_full_frame_bit_get(dev_priv));
+		intel_de_write(dev_priv,
+			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+			       man_trk_ctl_enable_bit_get(dev_priv) |
+			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
+			       man_trk_ctl_single_full_frame_bit_get(dev_priv));
 
 	/*
 	 * Display WA #0884: skl+
@@ -1554,10 +1561,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 val = 0;
-
-	if (!IS_ALDERLAKE_P(dev_priv))
-		val = PSR2_MAN_TRK_CTL_ENABLE;
+	u32 val = man_trk_ctl_enable_bit_get(dev_priv);
 
 	/* SF partial frame enable has to be set even on full update */
 	val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
-- 
2.35.1

