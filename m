Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2169785E29
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D9110E4A0;
	Wed, 23 Aug 2023 17:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 884CB10E48B;
 Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810561; x=1724346561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ca8T0BituMpoUWRgcf/XFUBFP6rXSJM6nneGFaZ+nsc=;
 b=PvFa5l5URhevpn/rWvkAjJ/M9sub/oZsOcUW6/ztSOetHzN3whBNFz4O
 N4pA32VSITfgnDh3dr1StrSQwpzqezU24uHW/YEskfjozxuKm6DDDU85C
 Qpu2JqiEVvPmjH17N5oEks/m70jfjqUUB99rQUwOuLr4DwZJJnFEPKZC/
 bUjEHokRNUfxfXfn5aXfvkH0VVdtfyB/TV5SQPeJefInVubwtV1DziTM6
 7sNLEzJgWlpx/21rmoDk9/exzUtuYa9S1idEb7iuxeMtAQUAoNEmpjwtX
 BJX1IpRYJkZqTlQxYQNXe6UBpWCvpUbFZ77lhPfd9pt3WiElNgqO6sZPz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147504"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147504"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204861"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204861"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:29 -0700
Message-Id: <20230823170740.1180212-32-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 31/42] drm/i915/lnl: Add gmbus/ddc support
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LNL's south display uses the same table as MTP. Check for LNL's fake PCH
to make it consistent with the other checks.

The VBT table doesn't contain the VBT -> spec mapping for LNL. Like in
other cases, uses the same as the previous platform.

Bspec: 68971, 20124
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c | 5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 097c1f23d3ae..3772b91e155c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2195,7 +2195,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int i, n_entries;
 
-	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
+	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915) || IS_LUNARLAKE(i915)) {
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

