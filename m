Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09493621E7C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 22:23:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BEB10E51F;
	Tue,  8 Nov 2022 21:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C82B310E51B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 21:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667942597; x=1699478597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/QNvTI3KowzbfLLdW05fTDrj0Iz1PuAUtyQvnYwIWck=;
 b=YfzXBfkH7+epJpXtX5NUlvk/q3MKIA13FJIbqTi/wVZckLjbfvkDSQRG
 y0hMqr/JPvxYi5PvfX7c38q+EYiyY6z2Yo2JIh4/xt0G7cDobKS0S6vv2
 /B9lS6FSboLsx8TNkw+4+lKx14AdyRkwhIGte1hYkURpdDJYUdrWfcS6K
 OzHkkMaxOY3zW/p6+fCwCfQBNfRZNWYEfeXuwaLl6hEeL2DqUGDVaTndU
 T9I9LCde1p5qKxSljgovl04fpe7xPxowCFkzcqYA5oBYO//sw91hSlbQC
 Fyq6zSrbWQeCs355p3gJ6yoQeYOoW4cjPhu8v50yo7pHtQ7ywaQVx8biC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="298330723"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="298330723"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 13:23:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="761638537"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="761638537"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga004.jf.intel.com with ESMTP; 08 Nov 2022 13:23:15 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 02:48:22 +0530
Message-Id: <20221108211822.28048-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221108211822.28048-1-animesh.manna@intel.com>
References: <20221108211822.28048-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/edp: Fix warning as vdd went down
 without driver knowledge
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

Kernel warning triggered as vdd went down after certain time during
aux transfer in connector init sequence. To solve the kernel
warning adjust power domain and vdd wakeref count.
Currently issue seen on ADL so add the above adjustment part of
ADL platform check, if needed will extend for future platform.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 0975e49f8d03..1857bbcc6fd4 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -587,8 +587,15 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
 	intel_dp->pps.want_panel_vdd = true;
 
-	if (edp_have_panel_vdd(intel_dp))
+	if (edp_have_panel_vdd(intel_dp)) {
 		return need_to_disable;
+	} else {
+		if ((IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) &&
+		    intel_dp->pps.vdd_wakeref)
+			intel_display_power_put(dev_priv,
+						intel_aux_power_domain(dig_port),
+						fetch_and_zero(&intel_dp->pps.vdd_wakeref));
+	}
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
-- 
2.29.0

