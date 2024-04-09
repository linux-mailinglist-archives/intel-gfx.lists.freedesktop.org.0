Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1ED89D4F8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 10:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E0F112430;
	Tue,  9 Apr 2024 08:58:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IxphiOgO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF57112430
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712653103; x=1744189103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ch84/zYptcQYAKf7ZYx3IBK3x37CZrTvWvXcoAqUHf0=;
 b=IxphiOgO7puq4Ur71bXzyGtVpiW+FaHRl2NaP5zt2KZLA3153jsSYxgk
 pYyE55M14haf+6qHqzBimuFEJ+alpx5S/wTCTmx7LAhuOUCE0vn+Tz3Sd
 YO2/ujyjlvl1XmM1TRhmgglCFUfauExLXYrspcCe6ohe3VieOwChsd3aB
 LKDTT7Qy2A/MUPepwFVd/Mr4Rg4usuJesy7R9NTeHVaCdYteUPtRTaXOs
 ejKNNFMYtdPYHr1gFkYJSn+xaRFcDYw6GlPovP7D0bg5PVdMHJ29keumT
 Nh+9FcmfgkOzUX3qgwvRznYPb23TjD7gf9CQzdKNvj7+Khp/pIhTRBMD6 w==;
X-CSE-ConnectionGUID: fsF5NTLOTXWuDQnCkjH0dA==
X-CSE-MsgGUID: ZZuoPCNTQJWk7L+3cw0Tww==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="7823116"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; 
   d="scan'208";a="7823116"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 01:58:22 -0700
X-CSE-ConnectionGUID: Bhx4g2ccQJ+mc/sXHhnGzg==
X-CSE-MsgGUID: bgJSJtIARwGF2eD71vpSwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="57624761"
Received: from vgoldenb-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.58.239])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 01:58:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Use crtc_state->port_clock instead of
 intel_dp->link_rate
Date: Tue,  9 Apr 2024 11:57:59 +0300
Message-Id: <20240409085759.178235-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Intel_dp->link_rate is not yet set at this point. Instead use
crtc_state->port_clock.

Fixes: 0dd21f836983 ("drm/i915/psr: Silence period and lfps half cycle")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7af974bb41ca..f5b33335a9ae 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1276,7 +1276,7 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
 						       aux_less_wake_time);
 
-	if (!_lnl_get_silence_period_and_lfps_half_cycle(intel_dp->link_rate,
+	if (!_lnl_get_silence_period_and_lfps_half_cycle(crtc_state->port_clock,
 							 &silence_period,
 							 &lfps_half_cycle))
 		return false;
-- 
2.34.1

