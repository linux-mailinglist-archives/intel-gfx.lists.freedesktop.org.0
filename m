Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB121559DE5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2197D10E284;
	Fri, 24 Jun 2022 16:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 982BF10E14E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 15:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086399; x=1687622399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oETy9b6nD3AhfBSJjHO/PPX3W1qZgKGfjz1Bi/DhQ0Q=;
 b=NtR4EnbTsB7XvRElGYscyes7KH6Y/ZMX5zPliXpiC29hkXjwWUq6L00a
 rmbHKoF4+K7Cm2gkOmkv+rSvpnKjFtSJSWx0AXdcIhsev174lg7u34i6R
 X4NBJjaglsh2dGiJGJdob8p6GsrFphtJ/dcfsESpLasFhwfW9+REgEkT1
 gHyepCI7WgOTG65Ccq8LB96rXWDtRPtggX4i8Xo3/nCnW49DCG96O/OGs
 +F5kK8CLaQ3nadBjPIPNGoqa+39pIS/yEDt2+PTPk+4GckZay87B83kct
 oQ4PwCegVLAceisEQPQebHAV6kJf5uw9B+Rss3cSRQFcCoHHbdhQxxLQz w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762299"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762299"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:47 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170101"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:44 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:15 +0530
Message-Id: <20220624155922.7435-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/9] drm/i915/dg1: OpRegion PCON DG1 MBD
 config support
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DGFX cards support both Add in Card(AIC) and Mother Board Down(MBD)
configs. MBD config requires HOST BIOS GPIO toggling support
in order to enable/disable vram_sr using ACPI OpRegion.

i915 requires to check OpRegion PCON MBD Config bits to
discover whether DG1 Card is MBD config before enabling
vram_sr.

v2:
- Removed IS_DG1() cond from intel_opregion_dg1_mbd_config. [Jani]
- Moved intel_opregion_vram_sr_required() to prev patch.

BSpec: 53440
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f4a2a02c9ed3..03ae57f05371 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -55,6 +55,8 @@
 #define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
 #define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
 
+#define PCON_DG1_MBD_CONFIG				BIT(9)
+#define PCON_DG1_MBD_CONFIG_FIELD_VALID			BIT(10)
 #define PCON_DGFX_BIOS_SUPPORTS_VRSR			BIT(11)
 #define PCON_DGFX_BIOS_SUPPORTS_VRSR_FIELD_VALID	BIT(12)
 #define PCON_HEADLESS_SKU	BIT(13)
@@ -1257,6 +1259,19 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->lid_state = NULL;
 }
 
+static bool intel_opregion_dg1_mbd_config(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (!opregion->header)
+		return false;
+
+	if (opregion->header->pcon & PCON_DG1_MBD_CONFIG_FIELD_VALID)
+		return opregion->header->pcon & PCON_DG1_MBD_CONFIG;
+	else
+		return false;
+}
+
 /**
  * intel_opregion_vram_sr_required().
  * @i915 i915 device priv data.
@@ -1270,6 +1285,12 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 bool
 intel_opregion_vram_sr_required(struct drm_i915_private *i915)
 {
+	if (!IS_DGFX(i915))
+		return false;
+
+	if (IS_DG1(i915))
+		return intel_opregion_dg1_mbd_config(i915);
+
 	return false;
 }
 
-- 
2.26.2

