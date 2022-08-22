Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E91959BDF2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965E211241D;
	Mon, 22 Aug 2022 10:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3420E1123DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661165697; x=1692701697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TTncIpyDE6o7dPS1aOWZTNew9xusq+ycRV4EU+EuGys=;
 b=QFz4IMTkJjW9e+i6j7DLJF9DxoKknInF1w3PQzd9LvCuIVJ+2bQy312j
 ZTHZMTBESr6M+QUmpq76PSekVm1rF28R9BPbcEGuwRo1cX9wR0oDcldT1
 G5nJnfzDdkGi1SXrPgwt5DTAgNtkaeD4lcnhuhIKHudG/cvkHRiTg4Yt7
 H8F4DgAf1Peh/Lq3/0qBL1DxD8Q1CfINUJC2cQc6LpLqzhB/m0qU+wIrf
 /zudMWelafXbWdd5KcmsCOUsmBq+cbZcJRNuNgPCcoo+Rb43vf1HVHbA1
 cX9FjK3cA4Z9USu3ecqH5JjOGf7VjxoCaJ8RymmHI4iAYvkec9Ply48eH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="280353982"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="280353982"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="585474041"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 16:24:23 +0530
Message-Id: <20220822105426.3521960-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/dp: Reset frl trained flag before
 restarting FRL training
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

For cases where DP has HDMI2.1 sink and FRL Link issues are detected,
reset the flag to state FRL trained status before restarting FRL
training.

Fixes: 9488a030ac91 ("drm/i915: Add support for enabling link status and recovery")
Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com> (v2)
Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fdf82373a22d..fc082a933d59 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3957,6 +3957,8 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
 
 		drm_dp_pcon_hdmi_frl_link_error_count(&intel_dp->aux, &intel_dp->attached_connector->base);
 
+		intel_dp->frl.is_trained = false;
+
 		/* Restart FRL training or fall back to TMDS mode */
 		intel_dp_check_frl_training(intel_dp);
 	}
-- 
2.25.1

