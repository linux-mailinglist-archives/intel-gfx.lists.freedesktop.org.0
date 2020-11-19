Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865C82B95E1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 16:16:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36C856E527;
	Thu, 19 Nov 2020 15:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2D36E536
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 15:16:09 +0000 (UTC)
IronPort-SDR: fMzZntdnNWtcoiUJQowIBlfWwf9+hPlG1Tr1Hk7iIgyuBsrXGin/tph8tRNuqdpzYMpfq7dq9A
 1TE+QvCv/ONA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="235451731"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="235451731"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 07:16:09 -0800
IronPort-SDR: HE6c77rRGVbtbTOmXTHhLbvwDGRCAeyyUopBcDeAxgVcW8JJxrYKTCaZMf1U9qUN8ho1CobXwm
 jwHmTEqbpThg==
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="341715157"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 07:16:07 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 21:20:49 +0530
Message-Id: <20201119155050.20328-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119155050.20328-1-uma.shankar@intel.com>
References: <20201119155050.20328-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

There are some corner cases wrt underrun when we enable
FBC with PSR2 on TGL. Recommendation from hardware is to
keep this combination disabled.

Bspec: 50422 HSD: 14010260002

v2: Added psr2 enabled check from crtc_state (Anshuman)
Added Bspec link and HSD referneces (Jose)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a5b072816a7b..c64ed1cd29b1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -799,6 +799,17 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 
+	/*
+	 * Tigerlake is not supporting FBC with PSR2.
+	 * Recommendation is to keep this combination disabled
+	 * Bspec: 50422 HSD: 14010260002
+	 */
+	if (crtc->config && crtc->config->has_psr2 &&
+	    IS_TIGERLAKE(dev_priv)) {
+		fbc->no_fbc_reason = "not supported with PSR2";
+		return false;
+	}
+
 	if (!intel_fbc_can_enable(dev_priv))
 		return false;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
