Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BCF28C422
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 23:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DB86E7EF;
	Mon, 12 Oct 2020 21:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E266E7DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 21:30:55 +0000 (UTC)
IronPort-SDR: OjNNM0lYspkhboE+xNRR3580/CCP5i411L0MedD+q9VHL4UnvV3oHWRAgCaMIcZN5gd2crJ4p/
 O9A5JFKfZIcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="163169618"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="163169618"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:55 -0700
IronPort-SDR: KVvilntGnsAVQ4bkG72/8QxqmJ99sitCEuyoVxkgm6h2EvU26pvqjdLcaG60SkCKhDIZSjKeCz
 0cTsMTUBXqHA==
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="463244975"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 14:29:45 -0700
Message-Id: <20201012212959.871513-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012212959.871513-1-lucas.demarchi@intel.com>
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 01/15] drm/i915/display: allow to skip
 certain power wells
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Aditya Swarup <aditya.swarup@intel.com>

This allows us to skip power wells on a platform allowing it to re-use
the table from another one instead of having to create a new table from
scratch that is basically a copy with a few removals.

Cc: Imre Deak <imre.deak@intel.com>
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
[ Adapt to base ignore logic on pw id rather than adding a new field,
  as suggested by Imre ]
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 24 ++++++++++++++-----
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7277e58b01f1..5b7f2b67791e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4554,13 +4554,18 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 static int
 __set_power_wells(struct i915_power_domains *power_domains,
 		  const struct i915_power_well_desc *power_well_descs,
-		  int power_well_count)
+		  int power_well_descs_sz, u64 skip_mask)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
 						     power_domains);
 	u64 power_well_ids = 0;
-	int i;
+	int power_well_count = 0;
+	int i, plt_idx = 0;
+
+	for (i = 0; i < power_well_descs_sz; i++)
+		if (!(BIT_ULL(power_well_descs[i].id) & skip_mask))
+			power_well_count++;
 
 	power_domains->power_well_count = power_well_count;
 	power_domains->power_wells =
@@ -4570,10 +4575,14 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	if (!power_domains->power_wells)
 		return -ENOMEM;
 
-	for (i = 0; i < power_well_count; i++) {
+	for (i = 0; i < power_well_descs_sz; i++) {
 		enum i915_power_well_id id = power_well_descs[i].id;
 
-		power_domains->power_wells[i].desc = &power_well_descs[i];
+		if (BIT_ULL(id) & skip_mask)
+			continue;
+
+		power_domains->power_wells[plt_idx++].desc =
+			&power_well_descs[i];
 
 		if (id == DISP_PW_ID_NONE)
 			continue;
@@ -4586,9 +4595,12 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	return 0;
 }
 
-#define set_power_wells(power_domains, __power_well_descs) \
+#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
 	__set_power_wells(power_domains, __power_well_descs, \
-			  ARRAY_SIZE(__power_well_descs))
+			  ARRAY_SIZE(__power_well_descs), skip_mask)
+
+#define set_power_wells(power_domains, __power_well_descs) \
+	set_power_wells_mask(power_domains, __power_well_descs, 0)
 
 /**
  * intel_power_domains_init - initializes the power domain structures
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
