Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75649068DF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F2F910E9F2;
	Thu, 13 Jun 2024 09:33:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AFhxNXWf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1F710E9E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271203; x=1749807203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1943yoym7C8pJgieR7ipv3Ps2TkkjbxjnRdXYIZqtKU=;
 b=AFhxNXWfL4aOjx/fCkLKXsGsv0y3D4w8HJjeT1/XZSWYGHO5fV/G+2D0
 2b/p8fyLixJdRQJSVjMNKQPpl0V53tmW4OwgmgZqqEikHCjE5UsYxVcZ9
 VVVYPXChe7ugvhooouSEMd1rBEfMFdqV+S0/NhdzOl5okgoWG5hVycBh5
 CEW1mo5n3I4m91NFOCIPTVoH3H5iv1mvEP7e9tnyF+J4qXiXF5uudkxy1
 vGUHp1UZQoXTCmep4NomJITNFOjXyc/zqO3+rL5Fh+vlfIziM5GsZlpf5
 EmN0EEP+kpotmOnP/DHP261RTFjw/Gi1jtFUXn3SczrYhbx3i36NAApse g==;
X-CSE-ConnectionGUID: r/ZMW5phSeekFDo4GjVAEw==
X-CSE-MsgGUID: L+T4XW7ETmCtFGGH43NvZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802526"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802526"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:23 -0700
X-CSE-ConnectionGUID: epeGNqNlQMehtTpCNWP2ZA==
X-CSE-MsgGUID: 6KDD3PkeSHaxjpZXAhNT3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523486"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 19/20] drm/i915/psr: Check Early Transport for Panel Replay
 as well
Date: Thu, 13 Jun 2024 12:32:38 +0300
Message-Id: <20240613093239.1293629-20-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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

v2:set crtc_state->enable_psr2_su_region_et directly (not in if block)

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 73d71c3194d3..050c30e4005e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1440,9 +1440,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1489,6 +1486,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	crtc_state->enable_psr2_su_region_et =
+		psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay);
+
 	return true;
 
 unsupported:
-- 
2.34.1

