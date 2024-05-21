Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181758CAA50
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BF610E780;
	Tue, 21 May 2024 08:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mi7SXwNe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D6710E77D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281255; x=1747817255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ETd5iG6soJwZSQJOthZDM9fuCUIVX2xsxGlWS6za3gU=;
 b=mi7SXwNepfrptbesX/98Xe1pb43De5vYVY0LTmwqPtsKKj0vz97gHc06
 Z9xW/8EWUk6v+rgobv2CUtpFRejurtF8/kDnnoQxVoV+LZqy89Ni+FK6U
 4zpiHmIQRCsW0Gw0+CxGI1o/C2w3cYgx4LwLZgbYisoLonJXmSMINg2jy
 5j/S1k8OJaac4f+vDT9d9d7EyGrdiH0u1yfMIdjp8vkhynOn/ycNbRGgJ
 gTM+1EDC6nQi0tu0EYtau4LwsuqQ7U64uqMcmdALKk+7h3lBpGo2RjctY
 iCx+iu7HQOJqsxz2+plkvsDNKMhiuCfNsa4Akck6pAfNrfiEfSFljMa6S w==;
X-CSE-ConnectionGUID: 4n3ghgtzRpWBIR260851Vg==
X-CSE-MsgGUID: 0b+HkYe/SOSiaLcco3BUIQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297852"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297852"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:33 -0700
X-CSE-ConnectionGUID: H6sC2/v5Tra93iL30s//qA==
X-CSE-MsgGUID: UQV9iSzKT5yxDgGklhEfqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272557"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 14/17] drm/i915/psr: Check Early Transport for Panel Replay
 as well
Date: Tue, 21 May 2024 11:46:45 +0300
Message-Id: <20240521084648.1987837-15-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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

Move Early Transport validity check to be performed for Panel Replay as
well and use Early Transport for eDP Panel Replay always.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d09a4f5309c4..2a18ef974221 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1605,9 +1605,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, false))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1672,6 +1669,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
+		crtc_state->enable_psr2_su_region_et = true;
+
 	return true;
 
 unsupported:
-- 
2.34.1

