Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BCA8D5ED9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57BCA10E4E3;
	Fri, 31 May 2024 09:50:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OxT+C+Gw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62EA210E554
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149043; x=1748685043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sn+9uC1yAidMBc1+BtsPRF/sXwTDZCqTntJuSmRz2Ww=;
 b=OxT+C+GwpFiPN5bvsLKoM2fXRmsE/dXmbwD3j6fYnzXEAMOi3GPeILGx
 aBFLI15UL4IdYOFGey+Q6rURJeqF480lL/woVUaNHtlq34/dAOs1xS7zz
 SH/xU6WK/l28exalipvwIM8aS6cq4Rk02b4b0F08O+ou06zv0XKmKvBOh
 +IRDmElxeImvAWoUu+kVyfYg1n9ug5Yv5+9vzgzjlilKF4eegBsOocA42
 s7MKiWzvZ+nQs3XJ28Uad8BLQXmE6CqXta6+OcyooVWnFgVpPAXmz0y8U
 RFCO1lL4kVx8AyryQUMQv5xW3+nTNKlK2XzawqFtBgs5du7yZAK/OUddy A==;
X-CSE-ConnectionGUID: EtzEdu2fS5OnNSd3IX3RJQ==
X-CSE-MsgGUID: EL4LBodHQCCb9fAw5P1QLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446587"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446587"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:43 -0700
X-CSE-ConnectionGUID: FRk/BqiXTXy7VuyiR4AffA==
X-CSE-MsgGUID: z25OjMQJRV2CRm0YrRpdpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189282"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 16/19] drm/i915/psr: Check Early Transport for Panel Replay
 as well
Date: Fri, 31 May 2024 12:49:50 +0300
Message-Id: <20240531094953.1797508-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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
index 2bb25634b65d..81e29223c026 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1368,9 +1368,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1435,6 +1432,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	crtc_state->enable_psr2_su_region_et =
+		psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay);
+
 	return true;
 
 unsupported:
-- 
2.34.1

