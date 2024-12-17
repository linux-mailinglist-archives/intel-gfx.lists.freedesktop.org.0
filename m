Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E259F4784
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4628D10E8AE;
	Tue, 17 Dec 2024 09:30:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eTqprhe4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED2110E8AC;
 Tue, 17 Dec 2024 09:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427797; x=1765963797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UhV9uxNPxY/5jnNhd8N9/rV1eqmZl2VwhRaEbdrKo3s=;
 b=eTqprhe40hLbpAjyntMPXLdVFuzLHhUQFEdkD5M93YNl9Cbbul7YOjrX
 OYfSjlHNAmqUkEtwG12WU9awbo+Zlb38kY7BIC1LFHP1Lblp3rh66GYAN
 4eUyU2tjU5hasSY3tlOifE8tsh4G57GLlpOR09wjdcf1aHJU9jXpWwk4f
 zdCnY9gINdZUV2O2fdsGq35XQEwehLyzuGvm3ie2AGxvlbFGFaiF06T3M
 pbZn76SnnkEFbfE54uZFwKkU/AoCTWTJSwR5ECzY/+cWjT72NqT96UJRF
 l2zSCyRgYzXLxt6M5kXYdGRJ3HblFeKFNp+xkMe2tRPGd9fCy32IILhc/ Q==;
X-CSE-ConnectionGUID: NCa5HQxnQhuutH6qXaOFgg==
X-CSE-MsgGUID: GKELYrWKTqehw7BCNV2cuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976145"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976145"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:56 -0800
X-CSE-ConnectionGUID: 2U+vntLMTcCmPQszugzi9Q==
X-CSE-MsgGUID: sjBWyeBzSmCzcrgiHTX4eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052427"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 05/14] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
Date: Tue, 17 Dec 2024 15:02:35 +0530
Message-ID: <20241217093244.3938132-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
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

DSC support is already checked before the helper
intel_dp_dsc_max_src_input_bpc is called.
Remove the check from the helper.

v2: Drop the argument struct drm_i915_private *i915. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9a039cbdfcc9..9848a3ecc556 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2188,10 +2188,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
+u8 intel_dp_dsc_min_src_input_bpc(void)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
-	return HAS_DSC(display) ? 8 : 0;
+	return 8;
 }
 
 static
@@ -2203,7 +2203,7 @@ bool is_dsc_pipe_bpp_sufficient(struct intel_display *display,
 	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
 	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(display), conn_state->max_requested_bpc);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
@@ -2272,7 +2272,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
-- 
2.45.2

