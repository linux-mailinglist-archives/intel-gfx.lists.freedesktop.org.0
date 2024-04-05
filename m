Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E1C899BE9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22167113B3F;
	Fri,  5 Apr 2024 11:36:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KgIydiFb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5045A113B3F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712316958; x=1743852958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1sfoqamWofKuUWFtfzBp+nQhL0ytKxg2G2CtBr4HuL4=;
 b=KgIydiFbpZO6OyvRmRH1fFNXfxbC9V4DNKVtb/0RG//Q1KNOF+fnzSKC
 UGo+f6oTx6IlwgchtFVGOb9r2JyC8PRHnfcJjsOYEfm2bbnArDPi7Qt49
 0fGCoAGER51VbEL0bf8cEl97zfL5d1mD10KMJ6uTGVxLJETbGSRQFz/p2
 9QnrANlFqW2gzkIlYAS5E2GzpuUbW5w68tThBkpupif9rTgrykae0Xptu
 bAyADtMBRi2RQw0MfrzqwA73FxScX7712D3/zpVt33NKMeqhP/lh8Jc+Q
 bLXUOSarkOr7ipE7xLXZH/QnE2/u3gv/UCBw0lFijnintpeozA1bl8kHO A==;
X-CSE-ConnectionGUID: HnunAQQXQHeH1hniO5HZRQ==
X-CSE-MsgGUID: E1qKdz7iQ/650byuHhD3pQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7540248"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7540248"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:35:58 -0700
X-CSE-ConnectionGUID: mks8nlIXQdWmZzC8jQRriQ==
X-CSE-MsgGUID: 9Cku71HjTWCejaLHj9Ak3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19066051"
Received: from pfilseth-mobl.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.58.154])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:35:56 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v10 3/6] drm/i915/display: extract code to prepare qgv points
 mask
Date: Fri,  5 Apr 2024 14:35:30 +0300
Message-Id: <20240405113533.338553-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113533.338553-1-vinod.govindapillai@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
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

