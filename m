Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AEF6C3D46
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 23:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87BA110E0A7;
	Tue, 21 Mar 2023 22:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1611D10E0A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 22:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679436069; x=1710972069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bYuLcu+oIGSOOT72KxiyZJvRqwSx/4L1Fj9v7ScTgGY=;
 b=hX8aRu9AHAur2/IUq2tBcrS9GE52D1Ud9T3LV3D+sM6E1OyOaaWeWoeE
 mzM0EgxIUcW+Hx9COQcu5CCdMt9dOfCrgtcBeNf7Bjyl0nqraxhgtTTIh
 gljAZdS6Lz01hTH9pYfjHgBuUTcXWJS9DoLJ2toGylzwoqr2Kv5R9wzPl
 kqEtSE/vCfh5CnkvsRLlE+EvtvOHtZZQUX0hR299o2015YVqE/76nHcu1
 0jUybw4VQoBNr5kjE5ijvf9+ruKSL3kZLWeAgyVNP22LuvKDF3mdphpw6
 fZF1me+lUpQu0Sgd0xy6RumxihTvRlxo0kqMdbO2WdAtcWnkcJmZzcNDD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="336573810"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="336573810"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 15:01:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="805584593"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="805584593"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 15:01:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 00:00:59 +0200
Message-Id: <20230321220101.983366-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-12-imre.deak@intel.com>
References: <20230316131724.359612-12-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/14] drm/i915/tc: Assume a TC port is
 legacy if VBT says the port has HDMI
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

Since an HDMI output can only be enabled in legacy mode on TC ports,
assume that VBT is wrong and the port is legacy if VBT says the port is
non-legacy and has HDMI. If VBT says to enable DP as well leave the
non-legacy flag enabled, relying on the flag getting fixed up based on
the HPD status during sink detection.

v2: Fix the legacy port flag only if DP is not enabled.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3d6d27409ebe8..8805676cc3a65 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4497,6 +4497,16 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
 			!intel_bios_encoder_supports_tbt(devdata);
 
+		if (!is_legacy && init_hdmi) {
+			is_legacy = !init_dp;
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "VBT says port %c is non-legacy TC and has HDMI (with DP: %s), assume it's %s\n",
+				    port_name(port),
+				    str_yes_no(init_dp),
+				    is_legacy ? "legacy" : "non-legacy");
+		}
+
 		intel_tc_port_init(dig_port, is_legacy);
 
 		encoder->update_prepare = intel_ddi_update_prepare;
-- 
2.37.1

