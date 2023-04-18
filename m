Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2379F6E5F36
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 12:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DEF10E1E4;
	Tue, 18 Apr 2023 10:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B14910E1E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 10:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681815376; x=1713351376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MeYw2n8m0Loc/9vyQv0KGKxAzecDeZgtCedqxLPzpvM=;
 b=Oh0sR6IFVzgYigZ61ZnKbjygYY5kHl3qea8M2vg7AeKByvMSun9oVqHx
 vbxz3SaMwnoP2Ip9uBX0vqV667bsUl/88REmDBpKAFtVooCGBy7A3ulwy
 s9Fh8DUD5jU0z1rpBMFozJ63ySDebTxvVsnrLJ4s0eWwFbrHRQrw9rtov
 LnQ6AIrsmoGHe0PpuUoQvejJzpjLn2td3ZRVnl9lNjB6oWslhpY2zotIp
 29q9rnSnLTjDEhXo9CejAlRDwLYhlz/0KUJAqfn0MdW84M4E9lSeZ8dUE
 ld0ma87IeldG0+eW5jhuCiTjLsiJ4SyFeDWqX8zfP4iukh0H4RsJo8IOI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="324754408"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="324754408"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 03:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="937220387"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="937220387"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 18 Apr 2023 03:56:13 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 16:24:54 +0530
Message-Id: <20230418105454.1282711-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418105207.1281084-1-suraj.kandpal@intel.com>
References: <20230418105207.1281084-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/display: Increase AUX timeout for
 Type-C
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
Workaround: Increase the timeout.

---v2
-change style on how we mention WA [Ankit]
-fix bat error by creating new func that is only called for aux power
well scenarios so we can avoid null pointer error as it is called
everywhere.

--v3
-Add non-default enable_timeout to power well descriptor which avoids
adding more platform checks [Imre]

--v4
-Remove Bspec link from top to bottom remove WA link from commit put it
on comment [Jani]
-enable_timeout in ms and add .fixed_enable_delay too [Imre]

Bspec: 55480

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_map.c    | 11 +++++++++++
 .../gpu/drm/i915/display/intel_display_power_well.c   |  3 ++-
 .../gpu/drm/i915/display/intel_display_power_well.h   |  2 ++
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d8..f0d51a30430a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1385,6 +1385,17 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 		),
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
+			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
+			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
+		),
+		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
+		/* WA_14017248603: adlp */
+		.enable_timeout = 500,
 	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 62bafcbc7937..930a42c825c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -253,6 +253,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
+	int timeout = power_well->desc->enable_timeout ? : 1;
 
 	/*
 	 * For some power wells we're not supposed to watch the status bit for
@@ -266,7 +267,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 
 	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
 	if (intel_de_wait_for_set(dev_priv, regs->driver,
-				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
+				  HSW_PWR_WELL_CTL_STATE(pw_idx), timeout)) {
 		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
 			    intel_power_well_name(power_well));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index ba7cb977e7c7..e494df379e6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -110,6 +110,8 @@ struct i915_power_well_desc {
 	 * Thunderbolt mode.
 	 */
 	u16 is_tc_tbt:1;
+	/* Enable timeout if greater than the default 1ms */
+	u16 enable_timeout;
 };
 
 struct i915_power_well {
-- 
2.25.1

