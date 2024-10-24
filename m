Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A315A9AE4CF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4414910E91C;
	Thu, 24 Oct 2024 12:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/C//ecz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714E810E91A;
 Thu, 24 Oct 2024 12:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773263; x=1761309263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wXnfIznsgceMPrZLgbZHA1p13eACarYEN+S0ctpCk5I=;
 b=H/C//eczXJKe6hYAW24//xOq66XSIZkk2kE9eIAxDEpo//K2jTP+GAym
 GamKOZs56iS6UWedU806DqzOkqc7yYHr3Vw/C4xvRuh4vQxmESqLbmrr/
 YZI7oQDdVGpzlXDGij2izobBaDKzK2jkDHkuvmm7nZQvEtjh60xRyrytR
 cPYutsQ7VbH2cQRWRKy8B+aIPNogXlA9id0+r2SybDlwYCB13Zc/3XJ02
 ublfOTEofRSwhjX6aXq+tjkMEp53JyoxHqxaoee6u4A4wHLs9Czu5/v2x
 50MDRDqUfAJwuUC73vl4vGs43EtZK80X87t0SEKGCpFAB0gbQPq+N8Ht8 w==;
X-CSE-ConnectionGUID: /kS30bxcTu6EUvuJubjMTw==
X-CSE-MsgGUID: t18LOdLZRtS7IDb/z/f1YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29327834"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29327834"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:23 -0700
X-CSE-ConnectionGUID: ipQdq62ASWeG5RDYAw/70A==
X-CSE-MsgGUID: 70iArcitQZ6pYvuccB4I4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80494857"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 07/16] drm/i915/display: add platform member to struct
 intel_display
Date: Thu, 24 Oct 2024 15:33:33 +0300
Message-Id: <6b04e9fd47329bea37e2789cf5e705b38a29e23d.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Facilitate using display->platform.haswell and
display->platform.haswell_ult etc. for identifying platforms and
subplatforms.

Merge the platform and subplatform bitmaps together, and check that
there's no overlap.

v4:
- Lower case, s/is/platform/

v3:
- Fix sanity check on display->is after merging subplatform members

v2:
- Use bitmap ops
- Add some sanity checks with warnings

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 .../drm/i915/display/intel_display_device.c   | 35 +++++++++++++++++--
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 45697af25fa9..45b7c6900adc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -284,6 +284,9 @@ struct intel_display {
 	/* drm device backpointer */
 	struct drm_device *drm;
 
+	/* Platform (and subplatform, if any) identification */
+	struct intel_display_platforms platform;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0e835f714bf5..c124df204166 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1525,6 +1525,25 @@ static enum intel_step get_pre_gmdid_step(struct intel_display *display,
 	return step;
 }
 
+/* Size of the entire bitmap, not the number of platforms */
+static unsigned int display_platforms_num_bits(void)
+{
+	return sizeof(((struct intel_display_platforms *)0)->bitmap) * BITS_PER_BYTE;
+}
+
+/* Number of platform bits set */
+static unsigned int display_platforms_weight(const struct intel_display_platforms *p)
+{
+	return bitmap_weight(p->bitmap, display_platforms_num_bits());
+}
+
+/* Merge the subplatform information from src to dst */
+static void display_platforms_or(struct intel_display_platforms *dst,
+				 const struct intel_display_platforms *src)
+{
+	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
+}
+
 void intel_display_device_probe(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
@@ -1564,13 +1583,25 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
+	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
+		    !display_platforms_weight(&desc->platforms));
 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
 
+	display->platform = desc->platforms;
+
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
-		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
+		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
+			    !display_platforms_weight(&subdesc->platforms));
 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
+
+		display_platforms_or(&display->platform, &subdesc->platforms);
+
+		/* Ensure platform and subplatform are distinct */
+		drm_WARN_ON(&i915->drm,
+			    display_platforms_weight(&display->platform) !=
+			    display_platforms_weight(&desc->platforms) +
+			    display_platforms_weight(&subdesc->platforms));
 	}
 
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
-- 
2.39.5

