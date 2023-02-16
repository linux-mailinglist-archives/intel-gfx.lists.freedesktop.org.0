Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB7D69A223
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 00:13:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9EC10E39B;
	Thu, 16 Feb 2023 23:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0129410E395
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 23:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676589199; x=1708125199;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PaEqFY7rM859N+SKUuATGq4cbnv5cWXZxuvqwSNtmhU=;
 b=cWvG9/GuwPfRRVawiwiz0ZlDZMVysby3BeNp1CH7eVm9zuJqZG1gfdEb
 z3BcAG9gXHQIAgyUhy3vQkE7RLcPKFLYVMcTott1pU7YhYoKxH2GVtrpv
 PLAL0JR7DjX9+Yop5NQVqBvVWoYH9NQqD8Suaok8LWwVX9xzdcl4/GfRU
 tCtgTz8tOXrxdSOy6t/MWYRFn8SLunvOoI0/BXRl4aQQvGyUR+oHmt37O
 bh6ZfydtG2js4GJ6n9+Gdcb+S0L9yTl93hOxaZrsoHklwLe6VRvOPnxro
 vtRIgpUjqLgcfWiId8qC/IZ3c7a0HAS/VKl+3NN87TpHy1IbQPxdD70JG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="396537144"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="396537144"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 15:13:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="663679008"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="663679008"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 16 Feb 2023 15:13:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Feb 2023 01:13:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Feb 2023 01:13:10 +0200
Message-Id: <20230216231312.32664-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Pimp encoder ddc_pin/aux_ch debug
 messages
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

Use encoer->name rather than port_name() in the debug messages
so that they actually make more sense.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++----
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index c4e72c17e06a..57eb3ff187fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -747,16 +747,18 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
 
 	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
 	if (aux_ch != AUX_CH_NONE) {
-		drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
-			    aux_ch_name(aux_ch), port_name(port));
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] using AUX %c (VBT)\n",
+			    encoder->base.base.id, encoder->base.name,
+			    aux_ch_name(aux_ch));
 		return aux_ch;
 	}
 
 	aux_ch = (enum aux_ch)port;
 
 	drm_dbg_kms(&i915->drm,
-		    "using AUX %c for port %c (platform default)\n",
-		    aux_ch_name(aux_ch), port_name(port));
+		    "[ENCODER:%d:%s] using AUX %c (platform default)\n",
+		    encoder->base.base.id, encoder->base.name,
+		    aux_ch_name(aux_ch));
 
 	return aux_ch;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e32452ab2647..239c0fb916f0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2858,8 +2858,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 	ddc_pin = intel_bios_hdmi_ddc_pin(encoder->devdata);
 	if (ddc_pin) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "Using DDC pin 0x%x for port %c (VBT)\n",
-			    ddc_pin, port_name(port));
+			    "[ENCODER:%d:%s] Using DDC pin 0x%x (VBT)\n",
+			    encoder->base.base.id, encoder->base.name,
+			    ddc_pin);
 		return ddc_pin;
 	}
 
@@ -2885,8 +2886,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		ddc_pin = g4x_port_to_ddc_pin(dev_priv, port);
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "Using DDC pin 0x%x for port %c (platform default)\n",
-		    ddc_pin, port_name(port));
+		    "[ENCODER:%d:%s] Using DDC pin 0x%x (platform default)\n",
+		    encoder->base.base.id, encoder->base.name,
+		    ddc_pin);
 
 	return ddc_pin;
 }
-- 
2.39.2

