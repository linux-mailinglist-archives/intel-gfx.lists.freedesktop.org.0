Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455A70DA28
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7F810E421;
	Tue, 23 May 2023 10:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B781310E423
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 10:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684837112; x=1716373112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RIC53of12yxgK3kckZfDmDM+DN43VHtHBHZ9Dz/aJuw=;
 b=bS5Ow8nAXEth1RaGob2qIwjmKgbMxH5oTF6GNZLt+bLcBMCZ2de1kHGu
 0odr6KI/OXzUvbVJHZzD2URzMBAeBCrTPSa1aGgP5x/1ZqJBldCV4cWd+
 uYGQGwZEcC4hiyQiPtL4u/Iy9bKFRWqt8Ots+7iqNglxMtqwqn2KGr+G5
 ga2V7uOuZ/pPBeJdE22OwgA3Kc/7mnOIp/sxkoFp1Do5feRTXaowmLGWM
 EmzK6GDVI8qmTGlyXIxDNutZjKMOTi5G7x4mgN96t3fN+3jYmDNSDMfHs
 7Xnw7Kw1QApGGKyjHxXK2rv/QlDe3VcLQB6e6M2K0ufJO0FeEohKFU/4J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="342656865"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="342656865"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:18:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="816083332"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="816083332"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 23 May 2023 03:18:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 15:46:50 +0530
Message-Id: <20230523101651.1282681-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230523101651.1282681-1-suraj.kandpal@intel.com>
References: <20230523101651.1282681-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: Move rc param calculation for
 native_420
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

Move rc_param calculation for native_420 into calculate_rc_parameter.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 28 +++++++++++++----------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..c64a38363e02 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -78,6 +78,22 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	else
 		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
 
+	/* According to DSC 1.2 specs in Section 4.1 if native_420 is set:
+	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
+	 * height < 8.
+	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
+	 * preservation in second line.
+	 */
+	if (vdsc_cfg->native_420) {
+		if (vdsc_cfg->slice_height >= 8)
+			vdsc_cfg->second_line_bpg_offset = 12;
+		else
+			vdsc_cfg->second_line_bpg_offset =
+				2 * (vdsc_cfg->slice_height - 1);
+
+		vdsc_cfg->second_line_offset_adj = 512;
+	}
+
 	/* Our hw supports only 444 modes as of today */
 	if (bpp >= 12)
 		vdsc_cfg->initial_offset = 2048;
@@ -192,24 +208,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	/*
 	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set:
 	 * -We need to double the current bpp.
-	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
-	 * height < 8.
-	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
-	 * preservation in second line.
 	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
 	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
 	 * fractional bits.
 	 */
 	if (vdsc_cfg->native_420) {
 		vdsc_cfg->bits_per_pixel <<= 1;
-
-		if (vdsc_cfg->slice_height >= 8)
-			vdsc_cfg->second_line_bpg_offset = 12;
-		else
-			vdsc_cfg->second_line_bpg_offset =
-				2 * (vdsc_cfg->slice_height - 1);
-
-		vdsc_cfg->second_line_offset_adj = 512;
 		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
 							vdsc_cfg->slice_height - 1);
 	}
-- 
2.25.1

