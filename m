Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B38861DA2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 21:32:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6279E10ECBC;
	Fri, 23 Feb 2024 20:32:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jeTuxqVm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3160610ECC5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 20:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708720342; x=1740256342;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Lzt7sBf9cu0IChiGb3o/n2KBZf7DGsYvGYFzW+1521Y=;
 b=jeTuxqVm2p1sUBLtokyUq429BrU2S4IVANjeRz1sNcGTFltRbZblhzPI
 vR54cExJQ6t45ZCY+FkOVGeq+IHFW8MuSnKEJPxAuWPSJvCUUSsw6X/Dx
 9FxDUWa9i2w3fbydK3uM7ZGpV71xNQg8H1Dt29oQCDqtM+MMu1xcOasc9
 r92PEa3J4DFX92+S1UyUm1dWu6U6PczJVbGpgYn92+++XETVdseadR8Dm
 6U96mb2nyGmHGy6zxf+WmToip1V+bbCp0MwLaSAvpPaX+HVySr9ov/Y05
 8Y0bA9V4F4ZVI6aX4tZJu1IOCjWP+G9JNkbpcohkRRp8DXIyML3G6TWVy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="20503641"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="20503641"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 12:32:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="827767881"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="827767881"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Feb 2024 12:32:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Feb 2024 22:32:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: Simplify aux_ch_to_digital_port()
Date: Fri, 23 Feb 2024 22:32:16 +0200
Message-ID: <20240223203216.15210-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240223203216.15210-1-ville.syrjala@linux.intel.com>
References: <20240223203216.15210-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Just return the correct thing from within the loop to make
the code more readable. We have no ref counts/etc. to deal
with here so no point in breaking from the loop just to return
something.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_power_well.c   | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 06900ff307b2..b61b571a850a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -217,27 +217,22 @@ static struct intel_digital_port *
 aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
 		       enum aux_ch aux_ch)
 {
-	struct intel_digital_port *dig_port = NULL;
 	struct intel_encoder *encoder;
 
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
+		struct intel_digital_port *dig_port;
+
 		/* We'll check the MST primary port */
 		if (encoder->type == INTEL_OUTPUT_DP_MST)
 			continue;
 
 		dig_port = enc_to_dig_port(encoder);
-		if (!dig_port)
-			continue;
 
-		if (dig_port->aux_ch != aux_ch) {
-			dig_port = NULL;
-			continue;
-		}
-
-		break;
+		if (dig_port && dig_port->aux_ch == aux_ch)
+			return dig_port;
 	}
 
-	return dig_port;
+	return NULL;
 }
 
 static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
-- 
2.43.0

