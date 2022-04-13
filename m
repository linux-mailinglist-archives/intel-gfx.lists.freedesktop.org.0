Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6764FFB8F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 18:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62F510E4C0;
	Wed, 13 Apr 2022 16:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38AAC10E4BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649868153; x=1681404153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qw8MvuN+d8uLFntxn8MNkHQ9gKvIBWz41k/L5x/2o14=;
 b=nYl97hBlfbMnO1QQCJNGLLAjn8wo3qTANQQ4/COkHzOZN2+QNv55c9Aw
 45WdzcKbgYy8BQQabOEptBwvvelEh4yonLd9o+IIUEMyESGtpEaSoBq6/
 f+dWJDhv/8h+lyHiWJ7FY9x6BHzTrAbauLpjNZSGUYDuIiA9sMigg3gqS
 77zzJCwh5vcHvJ76Im6QS9ygZM1NB3cYBTqLkjrqaWsKH21hBSaLFzwi4
 787A5yoLSvC/gCHYv9Q1iqFnXkUUdVpfXk6FayFQYCuP05JCy4hcESv8C
 bN1UPAEPCm8GsU0OgX0o4jbTNpBRJQTsSoV0uj5SuZc9efKQpeG/y3JW6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323159765"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323159765"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 09:42:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645237472"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 09:42:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 09:43:51 -0700
Message-Id: <20220413164351.48986-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413164351.48986-1-jose.souza@intel.com>
References: <20220413164351.48986-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/display/psr: Do not check for
 PSR2_MAN_TRK_CTL_ENABLE on alderlake-P
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

Alderlake-P don't have PSR2_MAN_TRK_CTL_ENABLE bit, instead it have
ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE in the same bit but this
bit is clearead after each vblank so we can't count on having it
set after planes are programmed.

Cc: Jouni Högander <jouni.hogander@intel.com>
Fixes: 73262db68c27 ("drm/i915/display: Match PSR2 selective fetch sequences with specification")
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8ec7c161284be..84aeee63a3e80 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -565,16 +565,19 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		val |= EDP_PSR2_SU_SDP_SCANLINE;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
-		u32 tmp;
-
 		/* Wa_1408330847 */
 		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
 
-		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
-		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
+		if (!IS_ALDERLAKE_P(dev_priv)) {
+			u32 tmp;
+
+			tmp = intel_de_read(dev_priv,
+					    PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
+			drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
+		}
 	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
 		intel_de_write(dev_priv,
 			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0);
-- 
2.35.1

