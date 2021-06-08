Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FA039EDC7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 06:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 521BE6EA9B;
	Tue,  8 Jun 2021 04:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE78A6EA9B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 04:42:21 +0000 (UTC)
IronPort-SDR: ZefjG6uCuRltmxg3kKlKHjYrn01naAR/gOjU+uUytVNd0bqzbfCCSYRmusFWrKGXUkLJ3DeBpx
 JtHXFFFHsPKw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="192096261"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="192096261"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 21:42:20 -0700
IronPort-SDR: eiYSVto+cuZw8LOHb/5l+8Grcfj1JAof32NZrcN599oSry9rSa7ogyhvWOVnhjUVz7pab2qmT0
 Af1jCCMi68GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="469349344"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga004.fm.intel.com with ESMTP; 07 Jun 2021 21:42:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 05:42:18 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 7 Jun 2021 21:42:16 -0700
From: "Navare, Manasi D" <manasi.d.navare@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v3] drm/i915/dsc: Fix bigjoiner check in dsc_disable
Thread-Index: AQHXXB4xRGwOHMd180e4voU/jIvnpqsJiNzg
Date: Tue, 8 Jun 2021 04:42:16 +0000
Message-ID: <c0ad19244b054866abd36c93bb0e9aa8@intel.com>
References: <20210608040659.14131-1-vandita.kulkarni@intel.com>
In-Reply-To: <20210608040659.14131-1-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3] drm/i915/dsc: Fix bigjoiner check in
 dsc_disable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


This change takes care of resetting the dss_ctl registers in case of dsc_disable, bigjoiner disable and also uncompressed joiner disable.

v2: Fix formatting
v3: Fix the typo (Mansi)

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Fixes: d961eb20adb6 (drm/i915/bigjoiner: atomic commit changes for uncompressed joiner)
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Looks good to me now

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 19cd9531c115..7121b66bf96d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1161,12 +1161,12 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!(old_crtc_state->dsc.compression_enable &&
-	      old_crtc_state->bigjoiner))
-		return;
-
-	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
-	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
+	/* Disable only if either of them is enabled */
+	if (old_crtc_state->dsc.compression_enable ||
+	    old_crtc_state->bigjoiner) {
+		intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
+		intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
+	}
 }
 
 void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state)
--
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
