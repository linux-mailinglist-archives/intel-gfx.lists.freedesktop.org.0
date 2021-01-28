Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020FC306CF2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7866E8CF;
	Thu, 28 Jan 2021 05:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31796E8CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 05:30:36 +0000 (UTC)
IronPort-SDR: RHExLHapGdl/fs62mIySRRbcdXW1awCwGppYhcQmyO4azwiWmi67anIQ1GgKLd++JPReSrDyTJ
 wso2bvr4ylJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167279156"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="167279156"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:36 -0800
IronPort-SDR: nbGhI4sBWMuRFoHXoO/b8rIuGscWz0ksOtN1Ej+L/2XirRdpGxGwEiJeAP/5A8lSUK7iF4hxi1
 XppRinlQ7IRQ==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="430386074"
Received: from kamathas-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.24.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:36 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 21:30:18 -0800
Message-Id: <20210128053024.23540-4-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210128053024.23540-1-aditya.swarup@intel.com>
References: <20210128053024.23540-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/adl_s: Add power wells
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lucas De Marchi <lucas.demarchi@intel.com>

TGL power wells can be re-used for ADL-S with the exception of the fake
power well for TC_COLD, just like DG-1.

BSpec: 53597
Bspec: 49231

Cc: Imre Deak <imre.deak@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 708f0b7e0990..cccfd45a67cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4689,7 +4689,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 	 * The enabling order will be from lower to higher indexed wells,
 	 * the disabling order is reversed.
 	 */
-	if (IS_DG1(dev_priv)) {
+	if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
 		err = set_power_wells_mask(power_domains, tgl_power_wells,
 					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
