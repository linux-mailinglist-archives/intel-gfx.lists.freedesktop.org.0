Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45424627DA4
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E9C10E122;
	Mon, 14 Nov 2022 12:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D73E10E0A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428594; x=1699964594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jddc8+bDwB7XmeZv552NbUbu8dYGvaiAnDDHBlicZO4=;
 b=SFJ6XDglEDPvj42uHw1sJqPgJ19fACwrCsaDzGBR3PeUNY4RltkoQm+Q
 CHXrhCixcw2xb3GXOZfVOrNUH7pKmTvlDoCm9mBmxvfGdYFAv1CXvku6X
 1cVEd7869gG5p9McAK0ScvZUuHZ+7Q8b6Z955QQd1h9CNXBn3Jd02qVW8
 2K9FaYmKwxu1zTC3s5IazHMB6mi4+iQRHM+ot6TQ0Z3SjzD6M40sE6doi
 vp/biCThyVOfZC7Hkv0HBIWvaFOYLqYt9SNeXko6KaqxTAxbrf4QtP76m
 F3hrgaqzI2/7fmZD4vMboINMemrFhsHf9ECRzy7NYjPHWT81ahL/ZNqX7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664122"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664122"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539848"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539848"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:59 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:46 +0200
Message-Id: <20221114122251.21327-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/9] drm/i915: Use the AUX_IO power domain
 only for eDP/PSR port
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

Use the AUX_IO_A display power domain only for eDP on port A where PSR
is also supported. This is the case where DC states need to be enabled
while the output is enabled - ensured by AUX_IO_A domain not enabling
the DC_OFF power well. Otherwise port A can be treated the same way as
other ports with an external DP output: using the AUX_<port> domain
which disables the unrequired DC states.

This change prepares for the next patch enabling DC states on all ports
supporting eDP/PSR besides port A.

v2:
- Check the encoder PSR capability instead of PSR being enabled in the
  crtc_state, as the latter can be changed with a fastset.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 477dd9b72ea3e..d849798c5986a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -861,8 +861,10 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
 	 * Note that PSR is enabled only on Port A even though this function
 	 * returns the correct domain for other ports too.
 	 */
-	return dig_port->aux_ch == AUX_CH_A ? POWER_DOMAIN_AUX_IO_A :
-					      intel_aux_power_domain(dig_port);
+	if (dig_port->aux_ch == AUX_CH_A && intel_encoder_can_psr(&dig_port->base))
+		return POWER_DOMAIN_AUX_IO_A;
+	else
+		return intel_aux_power_domain(dig_port);
 }
 
 static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
-- 
2.37.1

