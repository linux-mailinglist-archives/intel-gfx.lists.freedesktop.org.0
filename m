Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2146E391A67
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773416ED9F;
	Wed, 26 May 2021 14:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25FF76ED9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 14:37:33 +0000 (UTC)
IronPort-SDR: zg5+zEe5S760+FkXsYv4aoWpsxy1WrVA+EgyDVZmGsA6JTCc2iJtjJrjchknpES2E4c77/Yg67
 jgBHDCdARUtg==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223666151"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223666151"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:32 -0700
IronPort-SDR: 80OG6mBjhBnetjqk/MMo453Yx4H+kmJJFH8wcAP1lCKLr3trzfAtUrQKK9fgzcA5tdmuO3zax2
 K5yRCiEazCNg==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476968682"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 17:37:27 +0300
Message-Id: <20210526143729.2563672-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/ddi: Flush encoder power domain
 ref puts during driver unload
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

An async-put on an encoder specific power domain (for instance the AUX
PW domain) may be pending when removing the encoder. Make sure any such
async-puts are complete while the corresponding encoder is still in place
since at least AUX power wells require this to do a power well->PHY
lookup.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3d89186741539..d0d11c9c8d13b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4063,9 +4063,11 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 
 static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
 
 	intel_dp_encoder_flush_work(encoder);
+	intel_display_power_flush_work(i915);
 
 	drm_encoder_cleanup(encoder);
 	if (dig_port)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
