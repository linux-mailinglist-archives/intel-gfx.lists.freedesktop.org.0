Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C3265AD71
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 07:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E57E10E0CC;
	Mon,  2 Jan 2023 06:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 508F110E18D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 06:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672640422; x=1704176422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qwa7GQTqwXH5Z26MRfY0XyxEtLA+LftZtvj0NExvn94=;
 b=Ge6INMa0DY990RPr+Nh1QpePzajW59IkrlzPLjQuwkaqw6M/jtUsNlbm
 osAVGK+9RzCkW2nUpgjAtXrLeeYDNE/oIYHkLdDKPv9t6+otF3zO1irIR
 LtJnYrAOiKw5IgnOvWbJ5f48lnudeJ37tkld/beDL4aEplvG7BSfUj7oK
 bzvKBDwsvS834adCreoTCDKR1IDZ/5FYriF1NO5cNHYd8S+IviC8XRnNa
 R9/FC9O5vFmNufS9WfRW5RyeTkpTFUsMRTB/n/8PB0P60eXzu/xfOF5eI
 MtlUOsMPUyrxUgk6HkF9cKbv3TsO+26BvZakgMULRsdYg9ykBGVapajor g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="348657608"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="348657608"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 22:20:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="647840579"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="647840579"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 01 Jan 2023 22:20:19 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 11:50:05 +0530
Message-Id: <20230102062005.720964-5-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 4/4] drm/i915: Apply CDCLK quirk only on QS parts
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RPL-U boards with ES silicon does not support the 480Mhz step of
CDCLK. To differentiate between QS and ES part CPU brand string
is the only feasible way as of now. ES parts have "Genuine Intel"
in their brand string while QS parts have a more specific brand
string, for ex. "13th Gen Intel(R) Core(TM) i5-1345U"

BSpec: 55409

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 32 +++++++++++++++++++--
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 0a30499835b3..a6d7a2430626 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -14,6 +14,25 @@ static void intel_set_quirk(struct drm_i915_private *i915, enum intel_quirk_id q
 	i915->display.quirks.mask |= BIT(quirk);
 }
 
+/*
+ * To differentiate between QS and ES part CPU brand string is the only feasible way
+ * as of now. ES parts have "Genuine Intel" in their brand string while QS parts have a more
+ * specific brand string, for ex. "13th Gen Intel(R) Core(TM) i5-1345U"
+ */
+static bool is_QS_part(void)
+{
+	struct cpuinfo_x86 *c;
+	unsigned int cpu = get_cpu();
+
+	c = &cpu_data(cpu);
+	put_cpu();
+
+	if (c->x86_model_id[0] && !strstr(c->x86_model_id, "Genuine Intel"))
+		return true;
+
+	return false;
+}
+
 /*
  * Some machines (Lenovo U160) do not work with SSC on LVDS for some reason
  */
@@ -67,12 +86,19 @@ static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
 
 /*
  * A new step of 480MHz has been added on SKUs that have a RPL-U device id.
- * This particular step is to better support 120Hz panels.
+ * This particular step is to better support 120Hz panels. In addition to
+ * identifying RPL-U device id, we need to make a distinction between ES and
+ * QS parts as this change comes only to QS parts. For this CPUID Brand
+ * string is used. 480Mhz step is only supported in SKUs which does not
+ * contain the string "Genuine Intel" in the Brand string.
  */
+
 static void quirk_480mhz_cdclk_step_hook(struct drm_i915_private *i915)
 {
-	intel_set_quirk(i915, QUIRK_480MHZ_CDCLK_STEP);
-	drm_info(&i915->drm, "Applying 480MHz CDCLK step quirk\n");
+	if (is_QS_part()) {
+		intel_set_quirk(i915, QUIRK_480MHZ_CDCLK_STEP);
+		drm_info(&i915->drm, "Applying 480MHz CDCLK step quirk\n");
+	}
 }
 
 struct intel_quirk {
-- 
2.25.1

