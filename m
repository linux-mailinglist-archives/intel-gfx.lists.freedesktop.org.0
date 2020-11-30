Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E60F2C8FE3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274CB6E8BB;
	Mon, 30 Nov 2020 21:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 477BA6E8BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:22:11 +0000 (UTC)
IronPort-SDR: 6qfdXoLvdsCt5sICdaaVSzCJZc47waQIVNmKqJncHIzkJez7SWs/vIk56WAAJuwy7tPWF1HJiE
 GqRonVSk9tGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257424740"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257424740"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:11 -0800
IronPort-SDR: rN90gkmUZ9cEzlZy8gp85EqZzZHjnI6LyqsJKevijoKV/KqN6UQHRxO8IQX9Cq8Ktf4h6XLxcF
 sXLtxJvdCZlw==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480810564"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:10 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 23:21:57 +0200
Message-Id: <20201130212200.2811939-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Track power reference taken for
 eDP VDD
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add wakeref tracking for the eDP encoders' AUX display power domain
references taken while the panel's VDD is enabled.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c        | 18 ++++++++++++------
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 22f7328023a0..4217abddac4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1369,6 +1369,7 @@ struct intel_dp {
 	unsigned long last_power_on;
 	unsigned long last_backlight_off;
 	ktime_t panel_power_off_time;
+	intel_wakeref_t vdd_wakeref;
 
 	/*
 	 * Pipe whose power sequencer is currently locked into
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3896d08c4177..b1a73e8af670 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3094,8 +3094,9 @@ static bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 	if (edp_have_panel_vdd(intel_dp))
 		return need_to_disable;
 
-	intel_display_power_get(dev_priv,
-				intel_aux_power_domain(dig_port));
+	drm_WARN_ON(&dev_priv->drm, intel_dp->vdd_wakeref);
+	intel_dp->vdd_wakeref = intel_display_power_get(dev_priv,
+							intel_aux_power_domain(dig_port));
 
 	drm_dbg_kms(&dev_priv->drm, "Turning [ENCODER:%d:%s] VDD on\n",
 		    dig_port->base.base.base.id,
@@ -3188,8 +3189,9 @@ static void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
 	if ((pp & PANEL_POWER_ON) == 0)
 		intel_dp->panel_power_off_time = ktime_get_boottime();
 
-	intel_display_power_put_unchecked(dev_priv,
-					  intel_aux_power_domain(dig_port));
+	intel_display_power_put(dev_priv,
+				intel_aux_power_domain(dig_port),
+				fetch_and_zero(&intel_dp->vdd_wakeref));
 }
 
 static void edp_panel_vdd_work(struct work_struct *__work)
@@ -3341,7 +3343,9 @@ static void edp_panel_off(struct intel_dp *intel_dp)
 	intel_dp->panel_power_off_time = ktime_get_boottime();
 
 	/* We got a reference when we enabled the VDD. */
-	intel_display_power_put_unchecked(dev_priv, intel_aux_power_domain(dig_port));
+	intel_display_power_put(dev_priv,
+				intel_aux_power_domain(dig_port),
+				fetch_and_zero(&intel_dp->vdd_wakeref));
 }
 
 void intel_edp_panel_off(struct intel_dp *intel_dp)
@@ -6876,7 +6880,9 @@ static void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp)
 	 */
 	drm_dbg_kms(&dev_priv->drm,
 		    "VDD left on by BIOS, adjusting state tracking\n");
-	intel_display_power_get(dev_priv, intel_aux_power_domain(dig_port));
+	drm_WARN_ON(&dev_priv->drm, intel_dp->vdd_wakeref);
+	intel_dp->vdd_wakeref = intel_display_power_get(dev_priv,
+							intel_aux_power_domain(dig_port));
 
 	edp_panel_vdd_schedule_off(intel_dp);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
