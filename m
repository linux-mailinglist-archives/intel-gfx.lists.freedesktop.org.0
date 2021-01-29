Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278E4308C5F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A596EBA1;
	Fri, 29 Jan 2021 18:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3BFD6EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 18:29:57 +0000 (UTC)
IronPort-SDR: jB59RPoIK8HxM2Yk98dCMKY8Q6Ts9KspumZ36NL40ej+6SYBRBGO29C+zhmD0Y7ergSVyQ291N
 gSLpKh41G+tQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="168131274"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="168131274"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:57 -0800
IronPort-SDR: PW6J10XnRfTrCo5AG/5d2uwp5PQAMXpWc27NKGSi5z8xuD1pyS63yQE2HgcESzcQ1yjYdmgVfs
 6lAH7eW69bIw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="474952917"
Received: from dhamor-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.22.55])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:57 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 10:29:39 -0800
Message-Id: <20210129182945.217078-3-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129182945.217078-1-aditya.swarup@intel.com>
References: <20210129182945.217078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/adl_s: Add power wells
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
