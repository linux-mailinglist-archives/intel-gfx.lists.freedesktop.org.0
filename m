Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48139F4782
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E993E10E8AD;
	Tue, 17 Dec 2024 09:29:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HsrUrdAE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB1B10E8AA;
 Tue, 17 Dec 2024 09:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427795; x=1765963795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1PoEVEcHE51h7Ym9KXL1KqPXE5idjjL8Hp55Wsyq9JA=;
 b=HsrUrdAE73PDCgkhY91G6F1ACGYRAHqSPlGx49bcZfp+fbALjSdp6idO
 evmPQj5XSJQJ0RQ7fAeaX8niNHifA6KsPagS7omk2ueYGoyalfyGmghYr
 nZv9DLlrz5riKjXViZL01a4M3hkWobUP3lajpEU2bMGJ4wMvDZG11Fq4p
 6TGQIwmPg5XXvuzpa08SI1Ux2MKe5cqd+UCLu+xWOCvzD2g+cg3FxXbOA
 cxRwCMVr/MzCf7nJ12ydMDPPopGSimMJgQb8uowjR3lvnXFgF4jyBRelf
 nQb0CuFeq/Jg/dmKSgNoUtDnf+OsFQ+mfwW8lPQE9SQJb1b2VX851a9P2 w==;
X-CSE-ConnectionGUID: 9czbvuiWQsenpzUlajYdog==
X-CSE-MsgGUID: 1q4FsIHEQNStE30pUw1WPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976139"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976139"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:54 -0800
X-CSE-ConnectionGUID: /h6lRYhLSDWdymRlisqWEQ==
X-CSE-MsgGUID: uDq7qMWbQNuk1IUEP2LoQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052422"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 04/14] drm/i915/dp: Drop check for FEC in
 intel_dp_fec_compute_config
Date: Tue, 17 Dec 2024 15:02:34 +0530
Message-ID: <20241217093244.3938132-5-ankit.k.nautiyal@intel.com>
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

Support for FEC is already checked by intel_dp_supports_dsc() in
intel_dp_dsc_compute_config() which gets called before
intel_dp_fec_compute_config().

Therefore the check can be dropped from the helper
intel_dp_fec_compute_config().

v2: Changed commit message for clarity. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 674297ac6315..9a039cbdfcc9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2351,7 +2351,6 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 }
 
 static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
-					const struct intel_connector *connector,
 					struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->fec_enable)
@@ -2365,9 +2364,6 @@ static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
 	if (intel_dp_is_edp(intel_dp))
 		return;
 
-	if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
-		return;
-
 	if (intel_dp_is_uhbr(crtc_state))
 		return;
 
@@ -2389,7 +2385,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int ret;
 
-	intel_dp_fec_compute_config(intel_dp, connector, pipe_config);
+	intel_dp_fec_compute_config(intel_dp, pipe_config);
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
-- 
2.45.2

