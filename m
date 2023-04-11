Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 730436DE48A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0188B10E627;
	Tue, 11 Apr 2023 19:14:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C500710E621
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681240483; x=1712776483;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N9NVdBTIHe9fEtvBIipdiqN95AFEgR0Ax5BDbqAkWi0=;
 b=S1TRKdZvJ30JKE+v4koLmnpmipNaHywHEctTFQGQ5IyQDfYxGy4kNLDi
 oFZEXSHuTB1ynrFSk9XfKF+RT2N4Dfyi4fNq9rBVgAW/RAQiU4k3j+0Ak
 VWUmWfrWQioS6RKv6WeTB55k7g0sCcygjnoHkQ6y3FkN2JI1FXPPyL/dr
 uDZM8/TDXjpCpijAgXvs3el/kXredIoZSzRdAhxXvFcOpLjcJ/RJ1E1iD
 uMROS7UhALb7UTqXETeYgbcSRxIJda9D0atkqhlHALffeSSx+W2wlYwsf
 eULuP32VYGZe2B15qWFU3YFCJXCvEosBqkKUABSX7aWqC61Pt2/yOcp7x Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="341202030"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="341202030"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 12:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832446515"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832446515"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2023 12:14:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 22:14:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 22:14:25 +0300
Message-Id: <20230411191429.29895-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/8] drm/i915/psr: Use intel_de_rmw()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace some hand rolled RMW stuff with intel_de_rmw().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 32 ++++++++++--------------
 1 file changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d9d9373a6028..0b2e4cb91aa8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -232,13 +232,11 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 			    transcoder_name(cpu_transcoder));
 
 		if (DISPLAY_VER(dev_priv) >= 9) {
-			u32 val = intel_de_read(dev_priv,
-						PSR_EVENT(cpu_transcoder));
-			bool psr2_enabled = intel_dp->psr.psr2_enabled;
+			u32 val;
 
-			intel_de_write(dev_priv, PSR_EVENT(cpu_transcoder),
-				       val);
-			psr_event_print(dev_priv, val, psr2_enabled);
+			val = intel_de_rmw(dev_priv, PSR_EVENT(cpu_transcoder), 0, 0);
+
+			psr_event_print(dev_priv, val, intel_dp->psr.psr2_enabled);
 		}
 	}
 
@@ -493,9 +491,8 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
-	val |= (intel_de_read(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder)) &
-		EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK);
-	intel_de_write(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder), val);
+	intel_de_rmw(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder),
+		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
 
 static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
@@ -1342,19 +1339,16 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_CTL(intel_dp->psr.transcoder));
+
+		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
+				   EDP_PSR2_ENABLE, 0);
+
 		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR2_ENABLE));
-		val &= ~EDP_PSR2_ENABLE;
-		intel_de_write(dev_priv,
-			       EDP_PSR2_CTL(intel_dp->psr.transcoder), val);
 	} else {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_CTL(intel_dp->psr.transcoder));
+		val = intel_de_rmw(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder),
+				   EDP_PSR_ENABLE, 0);
+
 		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR_ENABLE));
-		val &= ~EDP_PSR_ENABLE;
-		intel_de_write(dev_priv,
-			       EDP_PSR_CTL(intel_dp->psr.transcoder), val);
 	}
 	intel_dp->psr.active = false;
 }
-- 
2.39.2

