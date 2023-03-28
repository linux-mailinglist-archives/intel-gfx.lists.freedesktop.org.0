Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 339E96CBAC1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 11:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E4710E451;
	Tue, 28 Mar 2023 09:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2739210E451
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 09:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679995857; x=1711531857;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OLLG6Zum8kE8uE2rW9A6nTT/yP4ot8rNvzwfUp+Ne2c=;
 b=ZMI5u4/yZiwum8/yr6b4mjVaMzA72IrMdyqXvqfZy32SdVFhRzo9BWgr
 BkFcXvKH3mTLXfFOfFNkNfHIh3ZwZcSwgmLIMMJLWVIqpBxpkq+09hofV
 tLX9iX0lCJDSUaubzCP1ONA6Q6KTnSPa55xu6K3SCNihQ81DzYha341Fg
 WtJqqNQK1cFNLXoYL97Yz1+onn1rG2OAFcZlmwnj4bNHIKQ/zgRVi/Luq
 zVP4PC56/xyOesa6U8/rkuQ1b1UNgtyL4ZqBUlGA1ZHOQpe9S9BNq8rD5
 6x1DWwrTeA1O3Z1/fT/Dql7em4MvN7kOis8jqbzKTGj2qsnjP1TN0h8oj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403129529"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403129529"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 02:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686343602"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686343602"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 02:30:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 12:30:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 12:30:38 +0300
Message-Id: <20230328093042.7469-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
References: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/psr: Use intel_de_rmw()
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
index 9495ea5d1b37..9e5ffe4eac6f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -231,13 +231,11 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
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
 
@@ -492,9 +490,8 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
-	val |= (intel_de_read(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder)) &
-		EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK);
-	intel_de_write(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder), val);
+	intel_de_rmw(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder),
+		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
 
 static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
@@ -1300,19 +1297,16 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 
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

