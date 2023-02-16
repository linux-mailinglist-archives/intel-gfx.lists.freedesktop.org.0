Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A4169A224
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 00:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EFA510E39F;
	Thu, 16 Feb 2023 23:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D00710E39F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 23:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676589202; x=1708125202;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6/ZDjGTsuqjDdtYuOYqWMrUmadrAJCTxOG2rTPv5jJo=;
 b=B3GJ9JcLkqxWZN9gRU6+Dn0RYqRk+cqD4xXZCEI+P5g/ikfeXtTVEI2g
 plyL5U+4kPBBf3GFTz7GrDIJrPcMVyMtN12YEVF+x/nI3jV+L+e0iKlBk
 +0SjcZrujFXvxKX65mNHjuoPaAOWetWsuH2veHfb5DsIqLp918IoZrZ0b
 6AyN/o6bdnYHy+19mj+zFiohBYw0sHtC5/86lV/OruhEfbf1DMZx1oOdo
 OFvR+T7F5b25+/H/BWdJG2mxrDO1WT0TJ9pbf5zPCEk+a26W+QTR5NQ7y
 8CdFE61x61bYNylOqW4NkyT0lVcSQfpEIcTMB+lxiLIkamLw47X9tEnEP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="396537164"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="396537164"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 15:13:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="663679017"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="663679017"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 16 Feb 2023 15:13:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Feb 2023 01:13:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Feb 2023 01:13:11 +0200
Message-Id: <20230216231312.32664-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Fix platform default aux ch for
 skl
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

SKL/derivatives have DDI E but no AUX E, so we need to pick
another aux ch as the platform default. DDI E is more or less
the other half of DDI A, so we pick AUX A.

In all other cases we should have a corresponding aux ch for
each DDI.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 57eb3ff187fa..96967e21c94c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -739,10 +739,20 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
 }
 
+static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	/* SKL has DDI E but no AUX E */
+	if (DISPLAY_VER(i915) == 9 && encoder->port == PORT_E)
+		return AUX_CH_A;
+
+	return (enum aux_ch)encoder->port;
+}
+
 enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
 	enum aux_ch aux_ch;
 
 	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
@@ -753,7 +763,7 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
 		return aux_ch;
 	}
 
-	aux_ch = (enum aux_ch)port;
+	aux_ch = default_aux_ch(encoder);
 
 	drm_dbg_kms(&i915->drm,
 		    "[ENCODER:%d:%s] using AUX %c (platform default)\n",
-- 
2.39.2

