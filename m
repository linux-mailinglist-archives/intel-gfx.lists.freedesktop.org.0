Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873947E7B50
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 11:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A71210E976;
	Fri, 10 Nov 2023 10:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD9D010E97D;
 Fri, 10 Nov 2023 10:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699611400; x=1731147400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=etQ0Gy2dJOBRXcN3+PSudjS/V0pNR91OASIdTJ81J0w=;
 b=keQhCOc5CtBCosp1OUmQbDrTD+a4YdOsBPEaiPa2qgpKcdr9WBh0lNzC
 IRmaH8rNO1NtKCv8fIlztBSrhaIhzwFLDH0iGDFNepLqWk/RvbVkN+elZ
 UpqVEm/ZwJho3r1mruz2ZsVe2kJ/jKvqR1MkC1wzBUDP1+ZfqS+3joQQJ
 C2pi/jXkon+7avy7rW7hrfMSturF3fEGF6Txi7ST4vqoN3k2i0/MazwP3
 PHV91gIry0+RRz81SbSv64NfJvyugVOc20dveg7aOURP0Vc6NEnkGTT1j
 gUigCCgvC92dje5eUQteolbj1n0roPLzJNtom1I9/Io6O6rQXEknP3O3P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="11712836"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="11712836"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 02:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; 
   d="scan'208";a="4816438"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 02:16:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 10 Nov 2023 15:40:19 +0530
Message-Id: <20231110101020.4067342-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231110101020.4067342-1-ankit.k.nautiyal@intel.com>
References: <20231110101020.4067342-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i916/dp_mst: Iterate over the DSC
 bpps as per DSC precision support
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
Cc: suijingfeng@loongson.cn
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we iterate over the bpp_x16 in step of 16.
Use DSC fractional bpp precision supported by the sink to compute
the appropriate steps to iterate over the bpps.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e7806fe11b9d..322046bb7d42 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -273,6 +273,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
 	u8 dsc_max_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
+	int bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
+	int bppx16_step;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -327,11 +329,16 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
 							    crtc_state->pipe_bpp);
 
+	if (DISPLAY_VER(i915) < 14 || bppx16_incr <= 1)
+		bppx16_step = 16;
+	else
+		bppx16_step = 16 / bppx16_incr;
+
 	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
 						     to_bpp_x16(max_compressed_bpp),
 						     to_bpp_x16(min_compressed_bpp),
 						     limits,
-						     conn_state, 16, true);
+						     conn_state, bppx16_step, true);
 
 	if (slots < 0)
 		return slots;
-- 
2.40.1

