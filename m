Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDAB622A3A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A759110E59C;
	Wed,  9 Nov 2022 11:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159F710E5A1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667992828; x=1699528828;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5mgmr9mSm8g3eGGA8PM5qb9Qxv4pKwX3bI+fVdlFkkw=;
 b=jHtD7qT6pbY2CoDgMdqPi1ek8Qwp87XCVVDKof4VIRHfKYpC3+vqp6bI
 Lx6E0KXe7TlpEurjOZ6KWxsJvFe2B5V3n+qirI58JfQYXoXWspvgVZeSS
 cVPPl75lI5YwBcqCo1X8BCcYs+sj1jPBcC7pDMKYUlA9pBWsg2xboSWKs
 YMrA/Ma20nfVetSkLtcWFam7G4HwiHg9QT3hKm4cJXgZg755ZDSJHEMMQ
 528Eoxx6M5vMtPWtMWR7RScpLGw4e3kXVOHe5HCbr/U/32/ySV9RSZWZ/
 NLpOJzH05NOKPbg9KwH7lVSk7be1iScTm/sLB8jQRnWPFe/2zCR8NdFfu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="309663743"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="309663743"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:20:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725942746"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="725942746"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Nov 2022 03:20:26 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 16:45:29 +0530
Message-Id: <20221109111529.27476-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221109111529.27476-1-animesh.manna@intel.com>
References: <20221109111529.27476-1-animesh.manna@intel.com>
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
index 5738af154bd2..ebc03c8f73c5 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -597,8 +597,15 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
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

