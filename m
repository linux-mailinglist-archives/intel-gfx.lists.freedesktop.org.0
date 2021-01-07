Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02A92ECEDB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 12:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5FC6E43F;
	Thu,  7 Jan 2021 11:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C366E43F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 11:40:02 +0000 (UTC)
IronPort-SDR: pjbBoZ6+WqfBJ6G006lFy2Swq6aa2lm1gpL4QddGchV2rFpZ9YzrxpwunCqN3e1cXDx2roavSu
 jKuSuNjw7vmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="176634168"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="176634168"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 03:40:02 -0800
IronPort-SDR: Ce3GxB46WK70RdJvvKRCbKtSuwYkiOOXSfZt69kr6HPUbtqkPhZCV91r79Mw/XmUdtI+6fZ0EE
 fHPHGSVM/B2w==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="379682715"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 03:39:59 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jan 2021 16:55:00 +0530
Message-Id: <20210107112500.16216-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/pps: Reuse POWER_DOMAIN_DISPLAY_CORE
 in pps_{lock, unlock}
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need a power_domain wakeref in pps_{lock,unlock} to prevent
a race while resetting pps state in intel_power_sequencer_reset().

intel_power_sequencer_reset() need a pps_mutex to access pps_pipe
but it can't grab pps_mutex due to deadlock with power_well
functions are called while holding pps_mutex.
intel_power_sequencer_reset() is called by power_well function
associated with legacy platforms like vlv and chv therefore re-use
the POWER_DOMAIN_DISPLAY_CORE power domain, which only used
by vlv and chv display power domain.

This will avoids the unnecessary noise of unrelated power wells
in pps_{lock,unlock}.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8a00e609085f..4f190a82d4ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -895,9 +895,7 @@ pps_lock(struct intel_dp *intel_dp)
 	 * See intel_power_sequencer_reset() why we need
 	 * a power domain reference here.
 	 */
-	wakeref = intel_display_power_get(dev_priv,
-					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
-
+	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
 	mutex_lock(&dev_priv->pps_mutex);
 
 	return wakeref;
@@ -909,9 +907,7 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	mutex_unlock(&dev_priv->pps_mutex);
-	intel_display_power_put(dev_priv,
-				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
-				wakeref);
+	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 	return 0;
 }
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
