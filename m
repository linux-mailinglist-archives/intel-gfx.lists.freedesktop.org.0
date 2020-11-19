Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9135E2B9B06
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 20:01:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8E8898A4;
	Thu, 19 Nov 2020 19:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 229FC898A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 19:01:32 +0000 (UTC)
IronPort-SDR: Kj9GJc51z/jHr10rJ99ZF1S8aRTd318zyLolLfMenkJRBov6nlHCbD0fFWJ4DnfqfcitlaLSPs
 xgt72Q16e95Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="170562735"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="170562735"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 11:01:31 -0800
IronPort-SDR: hgxR2piAK/Fso/qVH80HRL2JV1WBWUYuJIq5MfxO0iiRI+Vlcr7bQfFAPgHqTlTlMLAFIOX6Wq
 cGaQL8NCUXmg==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="368874032"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 11:01:29 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 01:06:14 +0530
Message-Id: <20201119193614.25914-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119155050.20328-2-uma.shankar@intel.com>
References: <20201119155050.20328-2-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

v3: Moved the logic to disable fbc to intel_fbc_update_state_cache
and removed the crtc->config usages, as per Ville's recommendation.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a5b072816a7b..cb29c6f068f9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -701,6 +701,15 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	cache->plane.visible = plane_state->uapi.visible;
+
+	/*
+	 * Tigerlake is not supporting FBC with PSR2.
+	 * Recommendation is to keep this combination disabled
+	 * Bspec: 50422 HSD: 14010260002
+	 */
+	if (crtc_state->has_psr2 && IS_TIGERLAKE(dev_priv))
+		cache->plane.visible = false;
+
 	if (!cache->plane.visible)
 		return;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
