Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5563E85F8F5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 13:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD50A10E8FF;
	Thu, 22 Feb 2024 12:57:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HF6FlWXd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4810E10E921
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 12:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708606624; x=1740142624;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ucYKmD3pDvbomNJczBqR0yTD5psoL+S4dixr/rkG6kk=;
 b=HF6FlWXd7WnwZrtJhQB+LMKrIP7CNgcFHlSMC7AQUehWd1zqodubHYxo
 pdA5QI1p/oPkTw3dTcVsbf9DghgaJKem0lLe5VbMQvEgyPO+iw+RmHH8S
 Iqp689OvV4RG6SGVwCettgy9aoD2LoAhTWo6Jmf1ZfJXSfevvxYS1PPiO
 odhkH3F+Hf59DNnXXD5NnkqrgcdlBGZxYWqHNS8UfYdb667WlSDIUOJ0i
 X72hz7hTM7YRlTu3xM48D297Tv/EA+h/Sucmtv5mLcSp8WC2bIpHLlUwZ
 9Gexs4S55/xww41ofoXon/yWA4Zp0h2nu7hVF3rqfyK7JOPmzoon4xHaE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2979133"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2979133"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:57:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5464331"
Received: from sfriis-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.44.6])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:57:02 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 lucas.demarchi@intel.com, matthew.d.roper@intel.com
Subject: [PATCH v1 4/6] drm/i915/xe2lpd: Update mbus on post plane updates
Date: Thu, 22 Feb 2024 14:56:32 +0200
Message-Id: <20240222125634.275047-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222125634.275047-1-vinod.govindapillai@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

According to BSpec we need to write the MBUS CTL and DBUF CTL both for
increasing CDCLK case (pre plane) and for decreasing CDCLK case (post
plane). Make sure those updates are in place for Xe2-LPD.

Since the mbus update is not only on pre-enable anymore, also rename the
function accordingly.

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ad76db6c6ab7..1042f1c7b410 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3494,7 +3494,7 @@ static int get_mbus_mdclk_cdclk_ratio(struct drm_i915_private *i915,
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
  */
-static void update_mbus_pre_enable(struct intel_atomic_state *state)
+static void update_mbus(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl, dbuf_min_tracker_val;
@@ -3553,7 +3553,7 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	update_mbus_pre_enable(state);
+	update_mbus(state);
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
@@ -3575,6 +3575,9 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
+	if (DISPLAY_VER(i915) >= 20)
+		update_mbus(state);
+
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
 }
-- 
2.34.1

