Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E005810D49
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D4510E75B;
	Wed, 13 Dec 2023 09:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C99910E755
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702459474; x=1733995474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RjCjdbNiEO0YYsMz04Guj+Sft9pKb1LzsPFgoOtWlMo=;
 b=aBi1zERT9f1RhHM/YvsImhFPXQIITd5+InrrE8YKQdiMN4gaExXpeHPi
 8rvVpdKuZ/S4a3bcthmJ+Pt3tPi2e/ARf0qOngw/voLfeNxCZgF9mFJaq
 YOvTfbcIZ0ijrouAHBex+BZo6Z138SVCQ+CHb5bgNtMLPbs/Pr+SguBue
 QKGTmynJcydAZ+FERJQEWUiJ5Frvk4KduihY3Hmup+V+nnxjICYL2HuEH
 BE0JhhrlJdnvQNfxz48kSpJWWcy4Y6rGQCJzQPtR6vSA7wte+0mHl7tMp
 DkCEC1+O2gdm4B9oCeerzMlaoFnX8modsBOPWCrdK/eBW/a4V/uD2lPG1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="13632997"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="13632997"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:24:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="17665280"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:24:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/dp: Ignore max_requested_bpc if its too low for
 DSC
Date: Wed, 13 Dec 2023 14:46:32 +0530
Message-Id: <20231213091632.431557-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
References: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At the moment, while choosing the input bpc for DSC, we take into
account the max_requested_bpc property. This creates a problem, if the
max_requested_bpc is lower than the minimum bpc required by source with
DSC.

So consider max_requested_bpc if its within the limits that we can
support with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e8aa2f469142..0014aa5ea652 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1638,6 +1638,16 @@ int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 	return 12;
 }
 
+static int
+intel_dp_dsc_limit_max_bpc(int max_requested_bpc, int src_dsc_max_bpc, int src_dsc_min_bpc)
+{
+	/* Consider max_requested_bpc only if src can support it with DSC */
+	if (max_requested_bpc >= src_dsc_min_bpc)
+		return min(src_dsc_max_bpc, max_requested_bpc);
+
+	return src_dsc_max_bpc;
+}
+
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
@@ -1651,7 +1661,8 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
 
-	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc,
+						 intel_dp_dsc_min_src_input_bpc(i915));
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
@@ -2039,8 +2050,11 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 {
 	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(conn_state->max_requested_bpc,
+						 dsc_max_bpc, dsc_min_bpc);
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
@@ -2100,14 +2114,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc, dsc_min_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
-- 
2.40.1

