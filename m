Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706177A6B81
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA7910E29F;
	Tue, 19 Sep 2023 19:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40BB110E28F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151287; x=1726687287;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=C94K5GbLvkSWlNEuGcsQ6ArfMB3aFpVzc6uUDTKnMm8=;
 b=i5qE7GObIaJYGT8XwgcTFG0i5OCiFvyy78P4m5730NHbcKn/rF85oYEg
 PmBNKJo8pg5BUujpX61/LxCKbLsGWSgRxZRTDuQLzdFt8TLedJXwSlbIt
 /pCsI1GN3oLHdhaNjokn0wvr4Cy8xVczw4pnwj74YeXM/yYhuwI1JIcjg
 KFPayg3qyF93ng+gqgOnZVs7oXTHA/D5UOzPxU9XMXW2lG1zHTdrHczVO
 DOuYei0RyKl/CvPxeq8Ja35JnRCvYQurki/yc9ufV4xTjJwX9qEPq07j6
 rwMpBN5i9wfrhze2Y3NwVrAZ09VperqFi3sa+svv15eut/n5CbKpOwSwR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423144"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423144"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350102"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350102"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:24 -0700
Message-Id: <20230919192128.2045154-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 18/22] drm/i915/lnl: Add gmbus/ddc support
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

LNL's south display uses the same table as MTP. Check for LNL's fake PCH
to make it consistent with the other checks.

The VBT table doesn't contain the VBT -> spec mapping for LNL. Like in
other cases, uses the same as the previous platform.

Bspec: 68971, 20124
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c  | 3 ++-
 drivers/gpu/drm/i915/display/intel_gmbus.c | 5 ++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f735b035436c..099ef48d8172 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2194,7 +2194,8 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int i, n_entries;
 
-	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
+	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) ||
+	    IS_ALDERLAKE_P(i915)) {
 		ddc_pin_map = adlp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
 	} else if (IS_ALDERLAKE_S(i915)) {
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index e95ddb580ef6..801fabbccf7e 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -155,7 +155,10 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	const struct gmbus_pin *pins;
 	size_t size;
 
-	if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
+	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
+		pins = gmbus_pins_mtp;
+		size = ARRAY_SIZE(gmbus_pins_mtp);
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
 		pins = gmbus_pins_dg2;
 		size = ARRAY_SIZE(gmbus_pins_dg2);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
-- 
2.40.1

