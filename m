Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C949C97F02A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC2610E44C;
	Mon, 23 Sep 2024 18:12:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UAE2vXhi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE31110E45A;
 Mon, 23 Sep 2024 18:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115119; x=1758651119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gfiSqH0eAr8d6VO8BorGYNAw1jiyCQaNLfj+lgo3SK4=;
 b=UAE2vXhiIZWbf6w7IOHIScqz/D4f17RlAT8EwU4UB2sR/rr/7WqWz+0w
 C/Xh7X+7+iSvkDCBlKPeCTjoD8kxcWJbekkKCpZtc9wXJBbXAF8CfPicy
 ULI2Ep+jDEtLM5pWhSX1REnEq+88X0CZguJOOmE0yIKZalmh+CpuVArKh
 8K1MS6WFpSJkY0CIF1f6/e+w3rrm179hT8JgJO9FZnA1DvBoq/JUd1DAL
 xDcsdQHrRKUe2W9yGVNLsK6JMd2T5mimkGcPpxaVUJF5mQ62m5oZH882W
 vH6iciGr+E2qO10L7VoGxZbnnmBEVsCvX8Rg2EhyUdEpPB81q1JiMZCQe A==;
X-CSE-ConnectionGUID: H6cEjRxATBurO2gfmcL/2g==
X-CSE-MsgGUID: LF2vqB09S9O7Ndxn9ogwAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866247"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866247"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:58 -0700
X-CSE-ConnectionGUID: Uz9a3CMuQhOcPeEemnhaEA==
X-CSE-MsgGUID: zQPuIN7nRbC1E5uI4nzniw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734299"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/16] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Date: Mon, 23 Sep 2024 23:43:27 +0530
Message-ID: <20240923181336.3303940-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Add sanity checks for primary and secondary bigjoiner/uncompressed
bitmasks, should make it easier to spot possible issues.

v2:
-Streamline the expected masks and add few more drm_WARNs. (Ville)
-Use %#x format specifier for printing joiner masks. (Ville)
-Use struct intel_display instead of struct drm_i915_private. (Ankit)

v3:
-Rename helper to get expected uncompressed joiner pipes. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 51 +++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d2c992259476..ee57e1e544af 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3643,26 +3643,73 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 	}
 }
 
+static u8 expected_secondary_pipes(u8 primary_pipes, int num_pipes)
+{
+	u8 secondary_pipes = 0;
+
+	for (int i = 1; i < num_pipes; i++)
+		secondary_pipes |= primary_pipes << i;
+
+	return secondary_pipes;
+}
+
+static u8 expected_uncompressed_joiner_secondary_pipes(u8 uncompjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(uncompjoiner_primary_pipes, 2);
+}
+
+static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_uncompressed_joiner_pipes & secondary_uncompressed_joiner_pipes) != 0);
+
 	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
+
+	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
+				    secondary_uncompressed_joiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
+		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
+		 uncompressed_joiner_pipes, bigjoiner_pipes);
+
+	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 secondary_bigjoiner_pipes);
+
+	drm_WARN(display->drm, secondary_uncompressed_joiner_pipes !=
+		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
+		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 secondary_uncompressed_joiner_pipes);
+
 	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
 
 	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 
 	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
+	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
+		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
 		 *primary_pipes, *secondary_pipes);
 }
 
-- 
2.45.2

