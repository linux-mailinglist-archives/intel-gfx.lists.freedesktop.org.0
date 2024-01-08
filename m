Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CCA827B48
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E147910E33F;
	Mon,  8 Jan 2024 23:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F8310E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dbw/vOTz0AX/mZx2R2B9kmzOg6YtTCpVFUE/iQRSjaA=;
 b=k4D2IMVgDlCO0gtj+MqGrQ8rMDtpKlGhSCtZ9GoVW+1FH2gnUDcdvMxp
 fh5dWIhiUikdpX7jzU3Ao9hn0Swi0acnI9E2ru7AwgB2+eGycHDxdYdgu
 QpTqtmPXJuewvnip/VGesNjgcbJeuyl2zVpL3UKCibFRZEXwwoYEYZyTy
 lL100IkdREwCttZVEOIM9LFdB16iWqnfTSkSLt3CciPmBR40YZ+Zjt0gU
 rJDLmbED+2Ccj9TxknHvPt56mJ1zTuf9MlVbWEMsvsIUUu7b6dbN69Hrx
 Qg8W3forea1gpp8y9gMOUF8Vvv4zK0uXqNnDXFFScOnVa7R/27B/RYqo/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514121"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514121"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647085"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647085"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 04/15] drm/i915: Extract opregion vbt capture to its own function
Date: Mon,  8 Jan 2024 15:05:06 -0800
Message-Id: <20240108230517.1497504-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
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

As part of opregion setup, vbt is extracted from the opregion. Move
the vbt parts of opregion setup into its own function.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 143 ++++++++++--------
 1 file changed, 76 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index bd654d773ca7..cf7312cfd94a 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -877,6 +877,81 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 	return ret;
 }
 
+static int intel_load_opregion_vbt(struct drm_i915_private *i915,
+				   struct intel_opregion *opregion,
+				   struct intel_vbt *vbt)
+{
+	const void *vbt_data;
+	u32 vbt_size;
+	void *base = opregion->header;
+
+	if (intel_load_vbt_firmware(i915) == 0)
+		goto out;
+
+	if (dmi_check_system(intel_no_opregion_vbt))
+		goto out;
+
+	if (opregion->header->over.major >= 2 && opregion->asle &&
+	    opregion->asle->rvda && opregion->asle->rvds) {
+		resource_size_t rvda = opregion->asle->rvda;
+
+		/*
+		 * opregion 2.0: rvda is the physical VBT address.
+		 *
+		 * opregion 2.1+: rvda is unsigned, relative offset from
+		 * opregion base, and should never point within opregion.
+		 */
+		if (opregion->header->over.major > 2 ||
+		    opregion->header->over.minor >= 1) {
+			drm_WARN_ON(&i915->drm, rvda < OPREGION_SIZE);
+
+			rvda += opregion->asls;
+		}
+
+		opregion->rvda = memremap(rvda, opregion->asle->rvds,
+					  MEMREMAP_WB);
+
+		vbt_data = opregion->rvda;
+		vbt_size = opregion->asle->rvds;
+		if (intel_bios_is_valid_vbt(vbt_data, vbt_size)) {
+			drm_dbg_kms(&i915->drm,
+				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
+			vbt->vbt = vbt_data;
+			vbt->vbt_size = vbt_size;
+			goto out;
+		} else {
+			drm_dbg_kms(&i915->drm,
+				    "Invalid VBT in ACPI OpRegion (RVDA)\n");
+			memunmap(opregion->rvda);
+			opregion->rvda = NULL;
+		}
+	}
+
+	vbt_data = base + OPREGION_VBT_OFFSET;
+	/*
+	 * The VBT specification says that if the ASLE ext mailbox is not used
+	 * its area is reserved, but on some CHT boards the VBT extends into the
+	 * ASLE ext area. Allow this even though it is against the spec, so we
+	 * do not end up rejecting the VBT on those boards (and end up not
+	 * finding the LCD panel because of this).
+	 */
+	vbt_size = (opregion->header->mboxes & MBOX_ASLE_EXT) ?
+		OPREGION_ASLE_EXT_OFFSET : OPREGION_SIZE;
+	vbt_size -= OPREGION_VBT_OFFSET;
+	if (intel_bios_is_valid_vbt(vbt_data, vbt_size)) {
+		drm_dbg_kms(&i915->drm,
+			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
+		vbt->vbt = vbt_data;
+		vbt->vbt_size = vbt_size;
+	} else {
+		drm_dbg_kms(&i915->drm,
+			    "Invalid VBT in ACPI OpRegion (Mailbox #4)\n");
+	}
+
+out:
+	return 0;
+}
+
 int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
 	struct intel_opregion *opregion = &dev_priv->display.opregion;
@@ -886,8 +961,6 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	char buf[sizeof(OPREGION_SIGNATURE)];
 	int err = 0;
 	void *base;
-	const void *vbt_data;
-	u32 vbt_size;
 
 	BUILD_BUG_ON(sizeof(struct opregion_header) != 0x100);
 	BUILD_BUG_ON(sizeof(struct opregion_acpi) != 0x100);
@@ -968,71 +1041,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
 	}
 
-	if (intel_load_vbt_firmware(dev_priv) == 0)
-		goto out;
-
-	if (dmi_check_system(intel_no_opregion_vbt))
-		goto out;
-
-	if (opregion->header->over.major >= 2 && opregion->asle &&
-	    opregion->asle->rvda && opregion->asle->rvds) {
-		resource_size_t rvda = opregion->asle->rvda;
-
-		/*
-		 * opregion 2.0: rvda is the physical VBT address.
-		 *
-		 * opregion 2.1+: rvda is unsigned, relative offset from
-		 * opregion base, and should never point within opregion.
-		 */
-		if (opregion->header->over.major > 2 ||
-		    opregion->header->over.minor >= 1) {
-			drm_WARN_ON(&dev_priv->drm, rvda < OPREGION_SIZE);
-
-			rvda += opregion->asls;
-		}
-
-		opregion->rvda = memremap(rvda, opregion->asle->rvds,
-					  MEMREMAP_WB);
-
-		vbt_data = opregion->rvda;
-		vbt_size = opregion->asle->rvds;
-		if (intel_bios_is_valid_vbt(vbt_data, vbt_size)) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
-			vbt->vbt = vbt_data;
-			vbt->vbt_size = vbt_size;
-			goto out;
-		} else {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Invalid VBT in ACPI OpRegion (RVDA)\n");
-			memunmap(opregion->rvda);
-			opregion->rvda = NULL;
-		}
-	}
-
-	vbt_data = base + OPREGION_VBT_OFFSET;
-	/*
-	 * The VBT specification says that if the ASLE ext mailbox is not used
-	 * its area is reserved, but on some CHT boards the VBT extends into the
-	 * ASLE ext area. Allow this even though it is against the spec, so we
-	 * do not end up rejecting the VBT on those boards (and end up not
-	 * finding the LCD panel because of this).
-	 */
-	vbt_size = (mboxes & MBOX_ASLE_EXT) ?
-		OPREGION_ASLE_EXT_OFFSET : OPREGION_SIZE;
-	vbt_size -= OPREGION_VBT_OFFSET;
-	if (intel_bios_is_valid_vbt(vbt_data, vbt_size)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
-		vbt->vbt = vbt_data;
-		vbt->vbt_size = vbt_size;
-	} else {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Invalid VBT in ACPI OpRegion (Mailbox #4)\n");
-	}
-
-out:
-	return 0;
+	return intel_load_opregion_vbt(dev_priv, opregion, vbt);
 
 err_out:
 	memunmap(base);
-- 
2.34.1

