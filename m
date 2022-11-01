Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9226149FC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 12:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55BED10E3A0;
	Tue,  1 Nov 2022 11:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D7A10E0C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667303663; x=1698839663;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rgNtrF1EX51KI3i/K+V3ZxkcNQsWf/OOJd6Cs1S31uw=;
 b=f0exF7mSpMJXh12ETyEe8BkvG2Lt+I/K6IB4UuX13k8vMxY3eYF7M+Sf
 MLNLAqP5H+KoM0WqMttSvlNX8Fo3z/e2gLGCd4+QO8MeNJJNautbvi8pM
 0U4YYSC+XNoCssQV6eRnRS4IhhIyb2g1KDF2mTfP5/xUvWIfZtNfvp8tr
 ap0ZAf6/+sK+w2Qi6MWhTRL05iQhOWtG9B6vaQDifhyqP9PShalECpQrC
 SeRaLSze0xnjb4diq/etwX75S/LlwRaUlXDdtnIMZ4cc5mxJI6t0aOS3N
 v5C9rCQxNtbQZQT5Fr57SYIgeM0DlzIFWLJR2hGpC/SKaDSouuV6gDkZd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="310826119"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="310826119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 04:54:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="739303721"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="739303721"
Received: from schauras-mobl.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.41.184])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 04:54:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Nov 2022 13:53:42 +0200
Message-Id: <20221101115342.1136720-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix PSR2_MAN_TRK_CTL bit getter
 functions for MTL
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

MTL shares PSR2_MAN_TRK_CTL bits with ADL. Currently some bit
getter functions are incorrect for MTL. This patch fixes those.

Bspec: 49274

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Fixes: 47d4ae2192cb ("drm/i915/mtl: Extend PSR support")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 904a1049eff3..4bfb8313738e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1470,7 +1470,8 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 
 static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
 {
-	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
+	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ? 0 :
+		PSR2_MAN_TRK_CTL_ENABLE;
 }
 
 static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
@@ -1482,14 +1483,14 @@ static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_pr
 
 static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
 {
-	return IS_ALDERLAKE_P(dev_priv) ?
+	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
 	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
 }
 
 static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
 {
-	return IS_ALDERLAKE_P(dev_priv) ?
+	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
 	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 }
-- 
2.34.1

