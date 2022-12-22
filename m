Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CE6653B21
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 05:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C1F10E4ED;
	Thu, 22 Dec 2022 04:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9A910E4ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 04:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671682059; x=1703218059;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jut/xqpe5/dZgFkqYiOr8+12Mgi0p083bFtZjTfj5Rc=;
 b=mNU/rbd12NhS3RaIs+5FH2vMJpUVN3013JEwslHTrY2zNFv5DLLN46//
 RhC3OosiQa7931l44VX+djeCGuo7rD+fZopSQXiXTGtqAkH4ToeBuBte5
 Hg1Kcg+QrDgd19cgR01TVLL31y759xautKobdXnSNqwX9t7xn2YYJxGih
 QiLGdWzH9MYpP7qm/yZdvGTl08HrlAJYOUA66zU5i5lhU042mdn9n5Rkd
 i3fWjRy+CSrodTWj7f9hdkdDuJv4QFvLtsS/u5exdqxPKdIjDqrgZX032
 H/4sKqZ951IBrHvh/UzmozD1frQIm2UC17EcDNOst7a1SV3brP3fjdYGD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="321954674"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="321954674"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 20:07:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="720163813"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="720163813"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 20:07:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 09:38:51 +0530
Message-Id: <20221222040851.3029514-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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

There are cases, where devices have an HDMI1.4 retimer, and TMDS clock rate
is capped to 340MHz via VBT. In such cases scrambling might be supported
by the platform and an HDMI2.0 sink for lower TMDS rates, but not
supported by the retimer, causing blankouts.

So avoid enabling scrambling, if the TMDS clock is capped to <= 340MHz.

v2: Added comment, documenting the rationale to check for TMDS clock,
before going for scrambling. (Arun)

v3: Fixed the function name to check if source supports scrambling. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index efa2da080f62..dd3465f992f8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2244,6 +2244,25 @@ static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_state)
 		!is_power_of_2(crtc_state->uapi.encoder_mask);
 }
 
+static bool source_supports_scrambling(struct intel_encoder *encoder)
+{
+	/*
+	 * Gen 10+ support HDMI 2.0 : the max tmds clock is 594MHz, and
+	 * scrambling is supported.
+	 * But there seem to be cases where certain platforms that support
+	 * HDMI 2.0, have an HDMI1.4 retimer chip, and the max tmds clock is
+	 * capped by VBT to less than 340MHz.
+	 *
+	 * In such cases when an HDMI2.0 sink is connected, it creates a
+	 * problem : the platform and the sink both support scrambling but the
+	 * HDMI 1.4 retimer chip doesn't.
+	 *
+	 * So go for scrambling, based on the max tmds clock taking into account,
+	 * restrictions coming from VBT.
+	 */
+	return intel_hdmi_source_max_tmds_clock(encoder) > 340000;
+}
+
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
@@ -2301,7 +2320,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->lane_count = 4;
 
-	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >= 10) {
+	if (scdc->scrambling.supported && source_supports_scrambling(encoder)) {
 		if (scdc->scrambling.low_rates)
 			pipe_config->hdmi_scrambling = true;
 
-- 
2.25.1

