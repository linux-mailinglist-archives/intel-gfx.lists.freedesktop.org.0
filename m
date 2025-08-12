Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD2EB21C23
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 06:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A94510E58F;
	Tue, 12 Aug 2025 04:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i8O7qGgV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD05010E58C;
 Tue, 12 Aug 2025 04:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754972912; x=1786508912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BQevdTfm7R65I20ODCzVQm+nnNjRf1z+bZ/6/ZtTYDQ=;
 b=i8O7qGgVnPdzMh9sUepsyTGYeMW3AOMSmNWfpZ8HRjZvHpVFYE68io2r
 ajD1jvFUuK6A3jn9wgiI3Rb8eEHFL8JsRPH4yHb6EpDx8Qg9jmgAvL/e6
 JTDn9PYa6nRDIdgxttXmkhYCd40IPxGeYaY0FqVXsIVfnpXvqPQnnWBUG
 j38ci/3x+SpU9KgXnnrCXGFiqZsNOUbckxyUBewiR4SPlkLl02Pr9y4Jt
 q6CUh6AzDQKJXuDiP8jwu9oH+FA1odvMhgP12Unp/8ljWSgd+eMERwTZx
 paA4NhbDyvQtNzKBx5tWuLcdLmANjt4vI4b4kubF458DZt2+wPgviPUQX g==;
X-CSE-ConnectionGUID: hRmmTH4jTgSSi+MhA2FQBQ==
X-CSE-MsgGUID: 10W290jKRAWBzYohI2/0rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68693395"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68693395"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:31 -0700
X-CSE-ConnectionGUID: uWNa4S1EQdqtq+/6852MiQ==
X-CSE-MsgGUID: m7OZKD23TlKOBNg1Yp4qjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165982391"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/6] drm/i915/dp: Account for dsc bubbles overhead in
 intel_dp_mode_valid()
Date: Tue, 12 Aug 2025 09:44:27 +0530
Message-ID: <20250812041428.1820109-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
References: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
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

Account for DSC bubble overhead to determine if the mode is ok if DSC is
required for given number of pipes joined.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 4 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.c | 1 -
 drivers/gpu/drm/i915/display/intel_vdsc.h | 2 ++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0acd86c7d1c2..e3f42ffb5739 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1542,6 +1542,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					      &dsc_slice_count);
 
 			dsc = dsc_max_compressed_bpp && dsc_slice_count;
+
+			target_clock = intel_dsc_get_pixel_rate_with_dsc_bubbles(target_clock,
+										 mode->htotal,
+										 dsc_slice_count);
 		}
 
 		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 7513cecdeaf3..494a46760443 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1034,7 +1034,6 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
 
-static
 int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
 					      int dsc_horizontal_slices)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd7..b86230039597 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -32,5 +32,7 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
+int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
+					      int dsc_horizontal_slices);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.45.2

