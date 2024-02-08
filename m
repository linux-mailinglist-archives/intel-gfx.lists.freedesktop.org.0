Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D7E84E3D2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22E810E8A5;
	Thu,  8 Feb 2024 15:17:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FUM2+UGz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B0E510E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405465; x=1738941465;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fZzSqaYMMraVAjEjRC5vpNG/EgPoGsug5crAruDEK18=;
 b=FUM2+UGzIICkQIMsQVt7+tQfNe2yeHusZBq1sUxNADEjXuCmcMl9xUsF
 a+9WzurSWvGG39xgLs7UZ8cKXdwIoZjMUVskPOGwyTCkmp+SlQvAHBDM4
 rKxWNDbjKl0uNA4TCbDfGeBZgP53bLCxh7bX0nK1sp1/wZlrjNshURvZe
 AR5mjHmLX4sREk86EH27Bkrnh4MdYOnezB5F7lorf6hxHNNfnpYth9luY
 nbi1S8fzRfgyD925hdwAkgnXKKdX3pbBuwwunlxaXNbXcWt1AfCIU44EO
 WfDvNDVciRQtAKBg2qOnl+dSich2poj0/0tefpqNloROV/X4eVWfICwfE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219252"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219252"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863662"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863662"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/13] drm/i915/bios: Use per-device debugs for VBT related
 stuff
Date: Thu,  8 Feb 2024 17:17:14 +0200
Message-ID: <20240208151720.7866-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Switch to drm_dbg_kms() in the VBT code so we see which
device generated the debugs. Need to plumb i915 a bit deeper
to make that happen.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 73 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |  6 +-
 3 files changed, 45 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 63655b17714c..fe52c06271ef 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1759,7 +1759,8 @@ parse_mipi_config(struct drm_i915_private *i915,
 
 /* Find the sequence block and size for the given panel. */
 static const u8 *
-find_panel_sequence_block(const struct bdb_mipi_sequence *sequence,
+find_panel_sequence_block(struct drm_i915_private *i915,
+			  const struct bdb_mipi_sequence *sequence,
 			  u16 panel_id, u32 *seq_size)
 {
 	u32 total = get_blocksize(sequence);
@@ -1776,7 +1777,7 @@ find_panel_sequence_block(const struct bdb_mipi_sequence *sequence,
 
 	for (i = 0; i < MAX_MIPI_CONFIGURATIONS && index < total; i++) {
 		if (index + header_size > total) {
-			DRM_ERROR("Invalid sequence block (header)\n");
+			drm_err(&i915->drm, "Invalid sequence block (header)\n");
 			return NULL;
 		}
 
@@ -1789,7 +1790,7 @@ find_panel_sequence_block(const struct bdb_mipi_sequence *sequence,
 		index += header_size;
 
 		if (index + current_size > total) {
-			DRM_ERROR("Invalid sequence block\n");
+			drm_err(&i915->drm, "Invalid sequence block\n");
 			return NULL;
 		}
 
@@ -1801,12 +1802,13 @@ find_panel_sequence_block(const struct bdb_mipi_sequence *sequence,
 		index += current_size;
 	}
 
-	DRM_ERROR("Sequence block detected but no valid configuration\n");
+	drm_err(&i915->drm, "Sequence block detected but no valid configuration\n");
 
 	return NULL;
 }
 
-static int goto_next_sequence(const u8 *data, int index, int total)
+static int goto_next_sequence(struct drm_i915_private *i915,
+			      const u8 *data, int index, int total)
 {
 	u16 len;
 
@@ -1836,7 +1838,7 @@ static int goto_next_sequence(const u8 *data, int index, int total)
 			len = *(data + index + 6) + 7;
 			break;
 		default:
-			DRM_ERROR("Unknown operation byte\n");
+			drm_err(&i915->drm, "Unknown operation byte\n");
 			return 0;
 		}
 	}
@@ -1844,7 +1846,8 @@ static int goto_next_sequence(const u8 *data, int index, int total)
 	return 0;
 }
 
-static int goto_next_sequence_v3(const u8 *data, int index, int total)
+static int goto_next_sequence_v3(struct drm_i915_private *i915,
+				 const u8 *data, int index, int total)
 {
 	int seq_end;
 	u16 len;
@@ -1855,7 +1858,7 @@ static int goto_next_sequence_v3(const u8 *data, int index, int total)
 	 * checking on the structure.
 	 */
 	if (total < 5) {
-		DRM_ERROR("Too small sequence size\n");
+		drm_err(&i915->drm, "Too small sequence size\n");
 		return 0;
 	}
 
@@ -1872,7 +1875,7 @@ static int goto_next_sequence_v3(const u8 *data, int index, int total)
 
 	seq_end = index + size_of_sequence;
 	if (seq_end > total) {
-		DRM_ERROR("Invalid sequence size\n");
+		drm_err(&i915->drm, "Invalid sequence size\n");
 		return 0;
 	}
 
@@ -1882,7 +1885,7 @@ static int goto_next_sequence_v3(const u8 *data, int index, int total)
 
 		if (operation_byte == MIPI_SEQ_ELEM_END) {
 			if (index != seq_end) {
-				DRM_ERROR("Invalid element structure\n");
+				drm_err(&i915->drm, "Invalid element structure\n");
 				return 0;
 			}
 			return index;
@@ -1904,8 +1907,8 @@ static int goto_next_sequence_v3(const u8 *data, int index, int total)
 		case MIPI_SEQ_ELEM_PMIC:
 			break;
 		default:
-			DRM_ERROR("Unknown operation byte %u\n",
-				  operation_byte);
+			drm_err(&i915->drm, "Unknown operation byte %u\n",
+				operation_byte);
 			break;
 		}
 	}
@@ -2030,7 +2033,7 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 	drm_dbg(&i915->drm, "Found MIPI sequence block v%u\n",
 		sequence->version);
 
-	seq_data = find_panel_sequence_block(sequence, panel_type, &seq_size);
+	seq_data = find_panel_sequence_block(i915, sequence, panel_type, &seq_size);
 	if (!seq_data)
 		return;
 
@@ -2058,9 +2061,9 @@ parse_mipi_sequence(struct drm_i915_private *i915,
 		panel->vbt.dsi.sequence[seq_id] = data + index;
 
 		if (sequence->version >= 3)
-			index = goto_next_sequence_v3(data, index, seq_size);
+			index = goto_next_sequence_v3(i915, data, index, seq_size);
 		else
-			index = goto_next_sequence(data, index, seq_size);
+			index = goto_next_sequence(i915, data, index, seq_size);
 		if (!index) {
 			drm_err(&i915->drm, "Invalid sequence %u\n",
 				seq_id);
@@ -2135,12 +2138,13 @@ parse_compression_parameters(struct drm_i915_private *i915)
 	}
 }
 
-static u8 translate_iboost(u8 val)
+static u8 translate_iboost(struct drm_i915_private *i915, u8 val)
 {
 	static const u8 mapping[] = { 1, 3, 7 }; /* See VBT spec */
 
 	if (val >= ARRAY_SIZE(mapping)) {
-		DRM_DEBUG_KMS("Unsupported I_boost value found in VBT (%d), display may not work properly\n", val);
+		drm_dbg_kms(&i915->drm,
+			    "Unsupported I_boost value found in VBT (%d), display may not work properly\n", val);
 		return 0;
 	}
 	return mapping[val];
@@ -2897,12 +2901,14 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
 
 /**
  * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
+ * @i915:	the device
  * @buf:	pointer to a buffer to validate
  * @size:	size of the buffer
  *
  * Returns true on valid VBT.
  */
-bool intel_bios_is_valid_vbt(const void *buf, size_t size)
+bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
+			     const void *buf, size_t size)
 {
 	const struct vbt_header *vbt = buf;
 	const struct bdb_header *bdb;
@@ -2911,17 +2917,17 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 		return false;
 
 	if (sizeof(struct vbt_header) > size) {
-		DRM_DEBUG_KMS("VBT header incomplete\n");
+		drm_dbg_kms(&i915->drm, "VBT header incomplete\n");
 		return false;
 	}
 
 	if (memcmp(vbt->signature, "$VBT", 4)) {
-		DRM_DEBUG_KMS("VBT invalid signature\n");
+		drm_dbg_kms(&i915->drm, "VBT invalid signature\n");
 		return false;
 	}
 
 	if (vbt->vbt_size > size) {
-		DRM_DEBUG_KMS("VBT incomplete (vbt_size overflows)\n");
+		drm_dbg_kms(&i915->drm, "VBT incomplete (vbt_size overflows)\n");
 		return false;
 	}
 
@@ -2931,13 +2937,13 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 			      vbt->bdb_offset,
 			      sizeof(struct bdb_header),
 			      size)) {
-		DRM_DEBUG_KMS("BDB header incomplete\n");
+		drm_dbg_kms(&i915->drm, "BDB header incomplete\n");
 		return false;
 	}
 
 	bdb = get_bdb_header(vbt);
 	if (range_overflows_t(size_t, vbt->bdb_offset, bdb->bdb_size, size)) {
-		DRM_DEBUG_KMS("BDB incomplete\n");
+		drm_dbg_kms(&i915->drm, "BDB incomplete\n");
 		return false;
 	}
 
@@ -2989,7 +2995,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	for (count = 0; count < vbt_size; count += 4)
 		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(i915, vbt, vbt_size))
 		goto err_free_vbt;
 
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
@@ -3046,7 +3052,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 	memcpy_fromio(vbt, p, vbt_size);
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(i915, vbt, vbt_size))
 		goto err_free_vbt;
 
 	pci_unmap_rom(pdev, oprom);
@@ -3398,6 +3404,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 		     struct dsc_compression_parameters_entry *dsc,
 		     int dsc_max_bpc)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	int bpc = 8;
 
@@ -3411,8 +3418,8 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	else if (dsc->support_8bpc && dsc_max_bpc >= 8)
 		bpc = 8;
 	else
-		DRM_DEBUG_KMS("VBT: Unsupported BPC %d for DCS\n",
-			      dsc_max_bpc);
+		drm_dbg_kms(&i915->drm, "VBT: Unsupported BPC %d for DCS\n",
+			    dsc_max_bpc);
 
 	crtc_state->pipe_bpp = bpc * 3;
 
@@ -3432,16 +3439,16 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	} else {
 		/* FIXME */
 		if (!(dsc->slices_per_line & BIT(0)))
-			DRM_DEBUG_KMS("VBT: Unsupported DSC slice count for DSI\n");
+			drm_dbg_kms(&i915->drm, "VBT: Unsupported DSC slice count for DSI\n");
 
 		crtc_state->dsc.slice_count = 1;
 	}
 
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
 	    crtc_state->dsc.slice_count != 0)
-		DRM_DEBUG_KMS("VBT: DSC hdisplay %d not divisible by slice count %d\n",
-			      crtc_state->hw.adjusted_mode.crtc_hdisplay,
-			      crtc_state->dsc.slice_count);
+		drm_dbg_kms(&i915->drm, "VBT: DSC hdisplay %d not divisible by slice count %d\n",
+			    crtc_state->hw.adjusted_mode.crtc_hdisplay,
+			    crtc_state->dsc.slice_count);
 
 	/*
 	 * The VBT rc_buffer_block_size and rc_buffer_size definitions
@@ -3597,7 +3604,7 @@ int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
 	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
 		return 0;
 
-	return translate_iboost(devdata->child.dp_iboost_level);
+	return translate_iboost(devdata->i915, devdata->child.dp_iboost_level);
 }
 
 int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata)
@@ -3605,7 +3612,7 @@ int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata)
 	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
 		return 0;
 
-	return translate_iboost(devdata->child.hdmi_iboost_level);
+	return translate_iboost(devdata->i915, devdata->child.hdmi_iboost_level);
 }
 
 int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 41bfb009d4b0..06a51be4afd8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -242,7 +242,8 @@ void intel_bios_init_panel_late(struct drm_i915_private *dev_priv,
 				const struct drm_edid *drm_edid);
 void intel_bios_fini_panel(struct intel_panel *panel);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
-bool intel_bios_is_valid_vbt(const void *buf, size_t size);
+bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
+			     const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
 bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
 bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f242bb320610..fcbb083318a7 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -887,7 +887,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 		return ret;
 	}
 
-	if (intel_bios_is_valid_vbt(fw->data, fw->size)) {
+	if (intel_bios_is_valid_vbt(dev_priv, fw->data, fw->size)) {
 		opregion->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
 		if (opregion->vbt_firmware) {
 			drm_dbg_kms(&dev_priv->drm,
@@ -1034,7 +1034,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 
 		vbt = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
-		if (intel_bios_is_valid_vbt(vbt, vbt_size)) {
+		if (intel_bios_is_valid_vbt(dev_priv, vbt, vbt_size)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
 			opregion->vbt = vbt;
@@ -1059,7 +1059,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	vbt_size = (mboxes & MBOX_ASLE_EXT) ?
 		OPREGION_ASLE_EXT_OFFSET : OPREGION_SIZE;
 	vbt_size -= OPREGION_VBT_OFFSET;
-	if (intel_bios_is_valid_vbt(vbt, vbt_size)) {
+	if (intel_bios_is_valid_vbt(dev_priv, vbt, vbt_size)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
 		opregion->vbt = vbt;
-- 
2.43.0

