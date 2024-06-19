Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6496F90E35D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69E610E8DD;
	Wed, 19 Jun 2024 06:22:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcKlZtAn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F67B10E8C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778135; x=1750314135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WeGtvwMkT5ecRTXH626RwPfYilBbHEx828PF5KdnZ18=;
 b=CcKlZtAnPHLvwN8IubWvY39EhbOCv3CSK/jWzPZpaegq14BS1lEBnKDL
 m0djqW37vJx7UENOG6pIn62JqX95mPokYAomB0per23h17lB7zthrnu0Q
 Pbnt3kbuVXE44rCFPnPEQolYycAs4W9BOt53wLtmJnakce3zkaf6yEonE
 l1tGj78Ed2i2Cd5ACb3jb/d7jfDpZjKmMwGSlqOJ4PDbThm0/5tsGRXZm
 Wdk7D1PiwNgs4ZSMEkK1HDvMangbRPF75/7YnzRsxnUPurh/ixIB/Kf4c
 VoPyQkUWRbzqWCjLrDUHeOpY2pMT+hvNo7xPzLKQur36Cm57LAaVevp37 w==;
X-CSE-ConnectionGUID: 7lRQVMNCSceDU9LWHq8mOg==
X-CSE-MsgGUID: c6Vfv04JQbK4Btc0pZBgVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377391"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377391"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:15 -0700
X-CSE-ConnectionGUID: taviQDQUQs2wparZdzvdCQ==
X-CSE-MsgGUID: r3yN3+iqSRmVlxw3qm5p0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41906018"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 09/11] drm/i915/psr: Perform scanline indication check for
 Panel Replay as well
Date: Wed, 19 Jun 2024 09:21:29 +0300
Message-Id: <20240619062131.4021196-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Scanline indication needs to be checked and configure for both PSR2 and
Panel Replay Selective Update. Move this check to
intel_sel_update_config_valid.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ae1728d2a15c..35425567005d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1426,12 +1426,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, PSR2 SDP indication do not fit in hblank\n");
-		return false;
-	}
-
 	if (!alpm_config_valid(intel_dp, crtc_state, false))
 		return false;
 
@@ -1473,6 +1467,12 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
 		goto unsupported;
 
+	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Selective update not enabled, SDP indication do not fit in hblank\n");
+		goto unsupported;
+	}
+
 	if (crtc_state->has_panel_replay && (DISPLAY_VER(dev_priv) < 14 ||
 					     !intel_dp->psr.sink_panel_replay_su_support))
 		goto unsupported;
-- 
2.34.1

