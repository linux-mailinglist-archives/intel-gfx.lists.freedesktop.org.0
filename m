Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35418621800
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF3A10E2B4;
	Tue,  8 Nov 2022 15:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C92E110E483
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920979; x=1699456979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T5GYZW7ARLxagGENS84jNK4nEukY1lOKeFlUOSYA2j8=;
 b=NAerbPBbEHhSBGtfsI36xvg4y/gM72fuF7cDHc9jxTAKa719zkguKgFc
 F/BX47idWtmMtgsKZ8IoOm745+IL9oaiTcJGGYeVolC4FwnQOScZgcJ1u
 e432+zvO36R/Jeh2Q843MkFAPfE/MbAdda5pIVUc0pzZyz6CNmgKkuv06
 0HswuIN7MMZy8An7f+85YIjcwbYxiiVBJKy/7q+u7SNAsmtgJrD7RVtFW
 xfprOEqtMnKqHzUXto6NU445YQehGE3eNdF88zswvHFJNJdIHyFWQYgjS
 WvhtwhZsBXB2zrMbZ+vrFv7AJJVG2hdUjrKatnDRBX+YzBjpDDbkldH/k A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="374992553"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="374992553"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669580871"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="669580871"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:33 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:24 +0200
Message-Id: <20221108151828.3761358-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-4-imre.deak@intel.com>
References: <20221107170917.3566758-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/9] drm/i915: Use the AUX_IO power domain
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
index e95bde5cf060e..ca236cd7f9b76 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -860,8 +860,10 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
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

