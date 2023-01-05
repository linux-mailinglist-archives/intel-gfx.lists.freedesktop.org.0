Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6B265EB75
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DD010E71F;
	Thu,  5 Jan 2023 13:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D24910E727
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923600; x=1704459600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nTrpYyCpwykA2NKcL5x/YvhSqGUku3pLGyVbnyxDEHc=;
 b=ScRik3J5r5j3lBrI2yf3uL+72lxYlddFGG2AzmQ6Y1ZbL/Ws35zDdagK
 EPX3EO7sdiPlUCLEe+kVdcyFfKEih/b3bLTVRyAu7c/mlSdMSuZ34kKE2
 gPi4JDkvyLTWx6iStJVukJIptkZSqP8MhpgX/f+y1Vghd8IXS0Uzzu4J5
 f2svAMdw4w+67qm+wVt1vAXWM8Y8pfWumma+XsfzghLODKlR/QWaoeQhO
 lP9zxXhmwQI+xGGemep6R750DN3XKDXkwYMy1xNbVERUZGsFWJIawteQb
 ASzfkHPZgcNz8Fc+/6Zl/PSAjBw0jVwX2DuhS1UzVSEfFIhdrk4oMTF1h Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697822"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697822"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541044"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541044"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 04:59:58 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:36 +0200
Message-Id: <20230105125446.960504-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/21] drm/i915/mtl: C20 HDMI state
 calculations
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add C20 HDMI state calculations and put HDMI table definitions
in use.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-12-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 14ea40cd0631..e5542fb209ab 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1732,9 +1732,19 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	                    struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c20_phy_check_hdmi_link_rate(crtc_state->port_clock) != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				    crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
 	tables = intel_c20_pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
-- 
2.34.1

