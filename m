Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BC988D2A1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 00:11:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F9B10F4A2;
	Tue, 26 Mar 2024 23:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ToMfPV1Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B0A10F4A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 23:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711494660; x=1743030660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1sfoqamWofKuUWFtfzBp+nQhL0ytKxg2G2CtBr4HuL4=;
 b=ToMfPV1QhfotauRkLmQnQ6uo26Eo1doAZ2YeWwf9j4DHIRW2NQ/uP8Vj
 zmdEam1Mzw0viEPr7eZQ6Tr4GQ8o3Kos1+BrxL6YZummIsaIZ6xymVHgI
 36IITpXBeiTBE4A7vxUQhAI6M4T9fMM9WmvwQg4opdSybd7VCWO21hh8x
 1zK1a+IdCAq0ETeACWW6wurG+pECPCXPUxe2/+A7fsNClCKPkY5TSY0BX
 r0B4RjZ003xWVxlE0RvnpPOoVQnDEBY+ruJQAjOrpx6gcmFvg2hU05byI
 HuYCV11XeBltp/s4x5+Ag3GgSWPchjWK1EREUd5MXzbcQwWzJPsioXmx/ g==;
X-CSE-ConnectionGUID: +xCfM6B8QNqeNW5r7IMHwQ==
X-CSE-MsgGUID: zm1hjcwGT5i4uB2+ER+0Vg==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6703008"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6703008"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16101289"
Received: from dfantini-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.33.69])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:10:57 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v9 3/6] drm/i915/display: extract code to prepare qgv points
 mask
Date: Wed, 27 Mar 2024 01:10:18 +0200
Message-Id: <20240326231021.281780-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326231021.281780-1-vinod.govindapillai@intel.com>
References: <20240326231021.281780-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

Extract the code to prepare the QGV points mask as per the
format expected by the pcode as this could be utlized from
multiple points.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c00094e5f11c..4fed84869e09 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -851,6 +851,14 @@ static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
 	return max_bw_point_mask;
 }
 
+static u16 icl_prepare_qgv_points_mask(struct drm_i915_private *i915,
+				       unsigned int qgv_points,
+				       unsigned int psf_points)
+{
+	return ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
+		 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_mask(i915);
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -994,11 +1002,9 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	 * We store the ones which need to be masked as that is what PCode
 	 * actually accepts as a parameter.
 	 */
-	new_bw_state->qgv_points_mask =
-		~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
-		  ADLS_PCODE_REQ_PSF_PT(psf_points)) &
-		icl_qgv_points_mask(i915);
-
+	new_bw_state->qgv_points_mask = icl_prepare_qgv_points_mask(i915,
+								    qgv_points,
+								    psf_points);
 	/*
 	 * If the actual mask had changed we need to make sure that
 	 * the commits are serialized(in case this is a nomodeset, nonblocking)
-- 
2.34.1

