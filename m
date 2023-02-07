Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDEF68DD90
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 17:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C4610E550;
	Tue,  7 Feb 2023 16:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57AEA10E552
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 16:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675785880; x=1707321880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6v4WYo24Jo3YwZONIYeQ59hN/TUWn4sDvLAe0HHUUIs=;
 b=OO+GQYFlYtW7MPdWYWHdjIonhR4qw0xdRkBNL8H3RSSCZ9ARi+Xq0lks
 Oac/olSE3mX3+00Z1LIWKuAZM8I8ySz+4IOdCnpkrsRT6g4fIS9dyxfJ1
 UJ47u1uAVTDfw2vuFo0zrplT+zWklVKHT6+qZ1UbZqMlpFj0u8Wfa2Nb+
 8VhAxujyorVnuOf4eQTL14iHH4AmG7DCLAinANUfCSx8xGSl/xYxlFWti
 ej0egc7bS6Es/am/HHnX7612hvNp03lfxGgTF/p70090kj7sh7taHxDNu
 uMIo9HuXs0ptrlfAlKiPdzs56ufOIzLjOHLLUxWC/3IXIK+L7U3glDP7X Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="356915883"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="356915883"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:03:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="840821397"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840821397"
Received: from kfurnanz-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.48.81])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:03:30 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 18:03:11 +0200
Message-Id: <20230207160311.930772-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207160311.930772-1-vinod.govindapillai@intel.com>
References: <20230207160311.930772-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/display: ignore link training
 failures in CI
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

If the ignore long HPD flag is set, ignore the link training
failures as well. Because of spurious HPDs, some unexpected link
training failures are happening while executing IGT test cases.
Ignore the link training failures for the time being if the long
HPDs are also ignored in the environments like CI.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 3d3efcf02011..f90c627ab553 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1433,7 +1433,11 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 void intel_dp_start_link_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool passed;
+
 	/*
 	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
 	 * HW state readout is added.
@@ -1451,6 +1455,26 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
+	/*
+	 * Ignore the link failure in CI
+	 *
+	 * In fixed enviroments like CI, sometimes unexpected long HPDs are
+	 * generated by the displays. If ignore_long_hpd flag is set, such long
+	 * HPDs are ignored. And probably as a consequence of these ignored
+	 * long HPDs, subsequent link trainings are failed resulting into CI
+	 * execution failures.
+	 *
+	 * For test cases which rely on the link training or processing of HPDs
+	 * ignore_long_hpd flag can unset from the testcase.
+	 */
+	if (!passed && i915->display.hotplug.ignore_long_hpd) {
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Ignore the link failure\n",
+			    connector->base.base.id, connector->base.name,
+			    encoder->base.base.id, encoder->base.name);
+		return;
+	}
+
 	if (!passed)
 		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
 }
-- 
2.34.1

