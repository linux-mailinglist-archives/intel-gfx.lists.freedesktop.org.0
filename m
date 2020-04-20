Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224AA1B0E3A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 16:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C0D6E59D;
	Mon, 20 Apr 2020 14:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728A06E59D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 14:22:04 +0000 (UTC)
IronPort-SDR: BSja1TOF6SDXKJZAfhp4ccV/0bwwUZTZOT2bVWSjHma/ppKpEJQyKyaBxudE6I4hXDUaqYB1xt
 oYovLfyFmnCw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:20:31 -0700
IronPort-SDR: t98cGpIBnWCwW2c8GTBVsbvFUlyMef0xFv5SIJ+nokWjvqquZutGfTDmbTg+gT7RV3IwreeDxp
 gz6am2T2Mx/Q==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="401846137"
Received: from iastakh-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.63.229])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:20:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 17:20:20 +0300
Message-Id: <20200420142020.27340-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420142020.27340-1-jani.nikula@intel.com>
References: <20200420142020.27340-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [CI 2/2] drm/i915/dsc: configure hardware using
 specified rc_model_size
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The rc_model_size is specified in the DSC config, and the hardware
programming should respect that instead of hard coding a value of 8192.

Regardless, the rc_model_size in DSC config is currently hard coded to
the same value, so this should have no impact, other than allowing the
use of other sizes as needed.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 95ad87d4ccb3..1f74b0174b1a 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -740,7 +740,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 
 	/* Populate PICTURE_PARAMETER_SET_9 registers */
 	pps_val = 0;
-	pps_val |= DSC_RC_MODEL_SIZE(DSC_RC_MODEL_SIZE_CONST) |
+	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
 		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
 	drm_info(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
