Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F4585F799
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 12:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B1A10E545;
	Thu, 22 Feb 2024 11:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYHs8m+X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366A010E8F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 11:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708603070; x=1740139070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X1NMuppCKpdExW6yQfFGQ2VuKnnRgF8yaFAAz4LT43k=;
 b=QYHs8m+XBvGwAF0DpyjZ/dM9kKqfPFOzEtaAvPtdPE/qT3OHSxN6Jn9K
 5j98nVMFbhf4ERfB46WULrd3u4z5mjEMHO1m4roV2KRlTCTLgnkZXxaQk
 vzFtbwyv1nKAm+QB7LdV+VV3j1UxtnmqU74fcCadZiycKIRg67BPCy8Dv
 HR6Po1N+7tZlb6yXG5hQoglha3hX/G4ivrVUE9e9jjQXWfe0C6h/AWG0N
 Md5GXO4hgTh5AQbKPQuzKNK0KaWPtkORrjoe7d1QckYtML0hoRVesVIjw
 L+HFHlY5Dnaw5BbSU212vBgfRhnYg85Sz2ePUehQIz1TOrw6VYqJ50zEH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2972938"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2972938"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5840020"
Received: from alaakso-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.43.250])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:49 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/5] drm/i915/display: Make intel_dp_aux_fw_sync_len
 available for PSR code
Date: Thu, 22 Feb 2024 13:57:24 +0200
Message-Id: <20240222115728.3371478-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222115728.3371478-1-jouni.hogander@intel.com>
References: <20240222115728.3371478-1-jouni.hogander@intel.com>
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

ALPM AUX-Wake fast wake sync pulse count is needed by PSR to calculate IO
wake and fast wake lines. Convert intel_dp_aux_fw_sync_len as non-static
to make it available for PSR code. u8 is enough for fw sync pulse length.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp_aux.h | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 4f4a0e3b3114..7a5cfd77d43b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -143,10 +143,10 @@ static int intel_dp_aux_sync_len(void)
 	return precharge + preamble;
 }
 
-static int intel_dp_aux_fw_sync_len(void)
+u8 intel_dp_aux_fw_sync_len(void)
 {
-	int precharge = 10; /* 10-16 */
-	int preamble = 8;
+	u8 precharge = 10; /* 10-16 */
+	u8 preamble = 8;
 
 	return precharge + preamble;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 8447f3e601fe..8e6a62abf01a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -20,5 +20,6 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
 
 void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
 u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
+u8 intel_dp_aux_fw_sync_len(void);
 
 #endif /* __INTEL_DP_AUX_H__ */
-- 
2.34.1

