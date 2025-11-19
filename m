Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8989AC6F1F2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 15:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A187A10E62E;
	Wed, 19 Nov 2025 14:04:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kqrjelsM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC9C10E62C;
 Wed, 19 Nov 2025 14:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763561081; x=1795097081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nYmp4J9PBrG0WYBqLA5yUnicuCCF5rk1xRvr4lVfLyo=;
 b=kqrjelsMNErXkb3nJL/VxfTfGE4N9J/VVH/tJ0LG2R8TegE6HuYbl6Md
 qssiKd/limDMq89kecKPHT8RdkXq3uBz3PalCwlv+1Rang9/ZLRRFa0TN
 +7BjY01gsmuWZGYI36JG+QAgR+tVzmkPGBVGoLaOhrNK6w9tYRRBh2GZJ
 lApSUuPT492NwctfMUq6jtRS/NKKL7HckAXWp/3WxRS8y42O+I1/gybC2
 AeRDsNj/qU5thkQLFx9MccGnXK+fiIjnLcO6woi5MgBv1pLfJAUFxMz4O
 XUD+A+HmiVS3D+ekbWVoFPE7yUbnOHBduEOlJlEnOSZkC42xOXvtgmcd1 Q==;
X-CSE-ConnectionGUID: 0YfCrf3ZSEys1YDoWwCqQg==
X-CSE-MsgGUID: iHhMS2rMSRaCUidWm8thjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="91077072"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="91077072"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:41 -0800
X-CSE-ConnectionGUID: 2/rFaHfYRUSr6Nj3SvYwGw==
X-CSE-MsgGUID: ZhpXybB1RMmRIPhzgZaByw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191191857"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:38 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/5] drm/i915/alpm: Allow LOBF only for platform that have
 Always on VRR TG
Date: Wed, 19 Nov 2025 19:21:50 +0530
Message-ID: <20251119135152.673276-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

As per bspec the LOBF is allowed when running in fixed refresh rate mode
i.e. when flipline = vmin = vmax and when window1 is non zero. This
implies that we can allow LOBF only when VRR timing generator is running
in the fixed refresh rate mode.

Use the check intel_vrr_always_use_vrr_tg() to avoid LOBF with legacy
timing generator. Also use intel_vrr_is_fixed_rr() to check for fixed
refresh rate mode.

v2: Modify commit message to clarify window1 requirement for LOBF.
(Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 686e4d13f864..5cfb9345776a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -344,8 +344,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
-	if (crtc_state->vrr.vmin != crtc_state->vrr.vmax ||
-	    crtc_state->vrr.vmin != crtc_state->vrr.flipline)
+	if (!intel_vrr_always_use_vrr_tg(display) ||
+	    !intel_vrr_is_fixed_rr(crtc_state))
 		return;
 
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
-- 
2.45.2

