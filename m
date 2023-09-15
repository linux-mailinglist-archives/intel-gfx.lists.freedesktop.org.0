Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B39A7A252A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FBE10E667;
	Fri, 15 Sep 2023 17:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9EE210E672;
 Fri, 15 Sep 2023 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800012; x=1726336012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C94K5GbLvkSWlNEuGcsQ6ArfMB3aFpVzc6uUDTKnMm8=;
 b=d846qWLKQjZSzWiSsMPIjvRpjqTuyRcHL7R9R136J9d73i34y2OFUK93
 NERASscN0/Z5ddRUU+gmB+AAI5/9j7My5O0eSKf0K6VEg3e1c6MozmQei
 2ZcLSo77NFLozHuirVbJkD7nmAAjU3MJ6JGLJr2IU2hDKGAWkI/9z1sEz
 v6Z96tdm1W8ynH3Z2rBspx9dM3vMkD1o/up7fxS5RhMtspRVfIlIksdUI
 s/Hh4Ph5ZwZut4Q28f7iegaiQMKutCFzC2IDrojR/IkqTeqJeLrmiwD8s
 VMaWugXvqNgpOvNmQtMHvt70KONExvIDE5v6fPSmRzZrNXS3mBDX089Og A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779282"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779282"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818296"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818296"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:43 -0700
Message-Id: <20230915174651.1928176-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 22/30] drm/i915/lnl: Add gmbus/ddc support
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
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

