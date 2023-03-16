Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D33F6BCDF0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D241E10ECA1;
	Thu, 16 Mar 2023 11:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD08810E09E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965534; x=1710501534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1oxFwAL98X+52CK9VIEbR6WQ/L1MADj4uUO8GCwTUaA=;
 b=G45G++m9LgcemH64N0cB9W7ilvK3LQDCv2GpzInzQ/5HnHLt+540zU/v
 RGneJOL5j+hsY1fo4iGIahag90RwVQQiaS1r73nZlQk3WgC+IQe8XlE01
 +ldM5GlkOZIe1OZlPIp8HPdt/XN8lseHIGij3+kFukDFkMr98egppRHBB
 gUU4mZ34d5NpET9LBcPP1mVERrJTXFcWkZgFAjEAEPa9VXKxre+nD5HbE
 m7fo7nxKmarLd5Nwp/jEyO5QoBi8fvn3ecHit4D5Ku7Sn0F0DqNRn7hFU
 nKGhs3t5xnGt/+wrkn3TC4JtOL70kr6r6dG8U+EI8iuVRIzzEMe150msI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485821"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485821"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083093"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083093"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:18:53 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:15 +0200
Message-Id: <20230316111335.66915-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/22] drm/i915/mtl: Add DP rates
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

Add DP rates for Meteorlake.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index da1c00ee92fb..4927aeb64f23 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -420,6 +420,11 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 	return 810000;
 }
 
+static int mtl_max_source_rate(struct intel_dp *intel_dp)
+{
+	return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
+}
+
 static int vbt_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
@@ -444,6 +449,10 @@ static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
 	/* The values must be in increasing order */
+	static const int mtl_rates[] = {
+		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
+		810000,
+	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
 		1000000, 1350000,
@@ -469,7 +478,11 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		source_rates = mtl_rates;
+		size = ARRAY_SIZE(mtl_rates);
+		max_rate = mtl_max_source_rate(intel_dp);
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
 		if (IS_DG2(dev_priv))
-- 
2.34.1

