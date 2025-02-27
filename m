Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF131A473D1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 04:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518E310E205;
	Thu, 27 Feb 2025 03:53:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPoicPlb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE9610E205;
 Thu, 27 Feb 2025 03:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740628395; x=1772164395;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8cqzMMdIBLcDvrFYKojKe5U4ufxLhZKFwo8slVLEFMk=;
 b=XPoicPlbwPk1RkeYad4pkreACBpNxtIaLJ409VuaTxi4iAwqEb+TbJKp
 vgQs0S54NYOTvT/kPU+1Lwj3p+sbi0KKnsaQkJ2csNQECDDwmH/+c+Mbc
 xQ5yg2cHg/+RXIRUXjEYuFfV7Gv2g9oj9eYU4w5VFHGpXk5QVHRhBxJox
 H/3Yxa32htNXSJJz/GidhR6+vKNMuKSSsHWnzxu5xePgWR1EbC7w2z40a
 MqRB6OfJQzzCuJkcPwoEQdbDY6fAxZeWVjgqv0mZuafNjNeWef0eKv1px
 QME7zFwXXsftALKwdGIP/9CKzcjmvfH9m/B576pCF4/2Lqv1MCKQOBLRe w==;
X-CSE-ConnectionGUID: ECglCjhFRQC1dZhFw2z4MQ==
X-CSE-MsgGUID: fqBoP2UPSIGyKnhe7nHC4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="45158975"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="45158975"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 19:53:15 -0800
X-CSE-ConnectionGUID: Z19RUz5OSneNdEE6RxmI/A==
X-CSE-MsgGUID: n90tPFl4QQ6NCPVuDJtEsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="122018362"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 19:53:12 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH] drm/i915/watermark: Check bounds for scaler_users for dsc
 prefill latency
Date: Thu, 27 Feb 2025 09:11:06 +0530
Message-ID: <20250227034106.1638203-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Currently, during the computation of global watermarks, the latency for
each scaler user is calculated to compute the DSC prefill latency.
At this point, the number of scaler users can exceed the number of
supported scalers, which is checked later in intel_atomic_setup_scalers().

This can cause issues when the number of scaler users exceeds the number
of supported scalers.

While checking for DSC prefill, ensure that the number of scaler users does
not exceed the number of supported scalers.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4341
Fixes: a9b14af999b0 ("drm/i915/dsc: Check if vblank is sufficient for dsc prefill")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 10a1daad28eb..58b91981e400 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2314,6 +2314,7 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 static int
 dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
 	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
@@ -2323,7 +2324,9 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
 	u32 dsc_prefill_latency = 0;
 
-	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
+	if (!crtc_state->dsc.compression_enable ||
+	    !num_scaler_users ||
+	    num_scaler_users > crtc->num_scalers)
 		return dsc_prefill_latency;
 
 	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
-- 
2.45.2

