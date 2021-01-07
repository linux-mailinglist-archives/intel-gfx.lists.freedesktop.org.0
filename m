Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142BC2ECED5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 12:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7CA6E439;
	Thu,  7 Jan 2021 11:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05896E439
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 11:37:51 +0000 (UTC)
IronPort-SDR: lT6AfW7YrlFnrEOiXnSJZ+k0CPX2AHV/uKNzKBjALI+MJY/CIE9JAQD9sIbwNqLYu44ugI+Kxv
 MKZd2BsrRGEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="177511563"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="177511563"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 03:37:50 -0800
IronPort-SDR: 0vI5zadMTP8i1NDZoiO0iqm6wzzFWPpRp4CWgNC9S8uxZz2gqIA4IQJqyOgv9cEggLTvtIKpVc
 vnDL7Dv9WNlg==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="403006765"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 03:37:48 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jan 2021 16:53:01 +0530
Message-Id: <20210107112301.16160-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210106043438.27754-1-anshuman.gupta@intel.com>
References: <20210106043438.27754-1-anshuman.gupta@intel.com>
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
