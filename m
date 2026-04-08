Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHjFGj3q1Wk//QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074CC3B744E
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538C910E51B;
	Wed,  8 Apr 2026 05:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z2WkGfw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA44410E517;
 Wed,  8 Apr 2026 05:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775626805; x=1807162805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gLc1i0JRICeJq3Bj5f9L+1hRN79aK4I33zDCDGyxleg=;
 b=Z2WkGfw994Nt430PqJKGEbvf4XflqicIRdezs9bzQwkXssw3TWCpUWpb
 EEUcFJvUyqd9mAYR/manwQ6m+asWt6fTrbbl0FuzlBF6kNrHOW9I3Aqq7
 esMqTkmSP/cJx9gxWL0xDJOv5Q9LzvXZl2xmyYJw4ASLzTEHZXF3i1EYJ
 2qqwQ5dEYTs7So/Y9bgGU754HPJ2M+113TBiBw2ljdaDUCvNX8F24apVq
 KCHepxNgSPR50teW8Y0EnfS2LF1JQqjfAvJ5jhobLFYC9JUWvLvuodxW7
 /C+dgnSovEOS6tuMI8bC6KnouwhOlyTCUTYMNLK+2mjDjYAhn33d5FrPm w==;
X-CSE-ConnectionGUID: miHP/E1CRqGqFIO8NdYc0Q==
X-CSE-MsgGUID: SnxdLi6UR+erzvaTCU1aSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80194851"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80194851"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 22:40:05 -0700
X-CSE-ConnectionGUID: vwYhP6/VQPuwTWLPo7lqhg==
X-CSE-MsgGUID: 1VtRmxv2Qeu/gLZxdAr5kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251517972"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 07 Apr 2026 22:39:59 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 01/13] drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
Date: Wed,  8 Apr 2026 10:45:02 +0530
Message-Id: <20260408051514.608781-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 074CC3B744E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce DRM_COLOROP_FIXED_MATRIX, a new colorop type representing a
hardware that performs a fixed matrix operation.

Unlike CTM-based colorops, this block does not expose programmable
coefficients. Instead, userspace selects one of the predefined
hardware modes via a new FIXED_MATRIX_TYPE enum property. Supported modes
include common YCbCr->RGB and RGB709->RGB2020 conversions.

v2:
 - Naming changes (Pekka)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/drm_atomic.c      |   4 ++
 drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
 drivers/gpu/drm/drm_colorop.c     | 107 ++++++++++++++++++++++++++++++
 include/drm/drm_colorop.h         |  84 +++++++++++++++++++++++
 include/uapi/drm/drm_mode.h       |  12 ++++
 5 files changed, 211 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 41c57063f3b4..16a2183b11bf 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -845,6 +845,10 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
 			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
 		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
 		break;
+	case DRM_COLOROP_FIXED_MATRIX:
+		drm_printf(p, "\tfixed_matrix_type=%s\n",
+			   drm_get_colorop_fixed_matrix_type_name(state->fixed_matrix_type));
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 5bd5bf6661df..d69406b08a0f 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -761,6 +761,8 @@ static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
 	} else if (property == colorop->data_property) {
 		return drm_atomic_color_set_data_property(colorop, state,
 							  property, val);
+	} else if (property == colorop->fixed_matrix_type_property) {
+		state->fixed_matrix_type = val;
 	} else {
 		drm_dbg_atomic(colorop->dev,
 			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
@@ -793,6 +795,8 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
 		*val = colorop->lut3d_interpolation;
 	else if (property == colorop->data_property)
 		*val = (state->data) ? state->data->base.id : 0;
+	else if (property == colorop->fixed_matrix_type_property)
+		*val = state->fixed_matrix_type;
 	else
 		return -EINVAL;
 
diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
index 566816e3c6f0..dd385e8dacbe 100644
--- a/drivers/gpu/drm/drm_colorop.c
+++ b/drivers/gpu/drm/drm_colorop.c
@@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
 	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
 	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
 	{ DRM_COLOROP_3D_LUT, "3D LUT"},
+	{ DRM_COLOROP_FIXED_MATRIX, "Fixed Matrix"},
 };
 
 static const char * const colorop_curve_1d_type_names[] = {
@@ -90,6 +91,14 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
 	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
 };
 
+static const char * const colorop_fixed_matrix_type_names[] = {
+	[DRM_COLOROP_FM_YCBCR601_FULL_RGB]  = "YCbCr 601 Full to RGB",
+	[DRM_COLOROP_FM_YCBCR709_FULL_RGB]    = "YCbCr 709 Full to RGB",
+	[DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC]  = "YCbCr 2020 Full to RGB NC",
+	[DRM_COLOROP_FM_YCBCR_LIMITED_FULL]  = "YCbCr limited to full",
+	[DRM_COLOROP_FM_RGB709_RGB2020]     = "RGB709 to RGB2020",
+};
+
 /* Init Helpers */
 
 static int drm_plane_colorop_init(struct drm_device *dev, struct drm_colorop *colorop,
@@ -455,6 +464,81 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
 }
 EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
 
+/**
+ * drm_plane_colorop_fixed_matrix_init - Initialize a DRM_COLOROP_FIXED_MATRIX
+ *
+ * @dev: DRM device
+ * @colorop: The drm_colorop object to initialize
+ * @plane: The associated drm_plane
+ * @funcs: control functions for the new colorop
+ * @supported_fm: A bitfield of supported drm_colorop_fixed_matrix_type enum values,
+ *               created using BIT(fixed_matrix_type) and combined with the OR '|'
+ *               operator.
+ * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
+ * @return zero on success, -E value on failure
+ */
+int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, struct drm_colorop *colorop,
+					struct drm_plane *plane,
+					const struct drm_colorop_funcs *funcs,
+					u64 supported_fm, uint32_t flags)
+{
+	struct drm_prop_enum_list enum_list[DRM_COLOROP_FM_COUNT];
+	int i, len;
+
+	struct drm_property *prop;
+	int ret;
+
+	if (!supported_fm) {
+		drm_err(dev,
+			"No supported FM type op for new Fixed Matrix colorop on [PLANE:%d:%s]\n",
+			plane->base.id, plane->name);
+		return -EINVAL;
+	}
+
+	if ((supported_fm & -BIT(DRM_COLOROP_FM_COUNT)) != 0) {
+		drm_err(dev, "Unknown Fixed Matrix provided on [PLANE:%d:%s]\n",
+			plane->base.id, plane->name);
+		return -EINVAL;
+	}
+
+	ret = drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOROP_FIXED_MATRIX, flags);
+	if (ret)
+		return ret;
+
+	len = 0;
+	for (i = 0; i < DRM_COLOROP_FM_COUNT; i++) {
+		if ((supported_fm & BIT(i)) == 0)
+			continue;
+
+		enum_list[len].type = i;
+		enum_list[len].name = colorop_fixed_matrix_type_names[i];
+		len++;
+	}
+
+	if (WARN_ON(len <= 0))
+		return -EINVAL;
+
+	prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "FIXED_MATRIX_TYPE",
+					enum_list, len);
+
+	if (!prop)
+		return -ENOMEM;
+
+	colorop->fixed_matrix_type_property = prop;
+	/*
+	 * Default to the first supported CSC mode as provided by the driver.
+	 * Intuitively this should be something that keeps the colorop in pixel bypass
+	 * mode but that is already handled via the standard colorop bypass
+	 * property.
+	 */
+	drm_object_attach_property(&colorop->base, colorop->fixed_matrix_type_property,
+				   enum_list[0].type);
+	drm_colorop_reset(colorop);
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_plane_colorop_fixed_matrix_init);
+
 static void __drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop,
 							struct drm_colorop_state *state)
 {
@@ -521,6 +605,13 @@ static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
 						      &val);
 		colorop_state->curve_1d_type = val;
 	}
+
+	if (colorop->fixed_matrix_type_property) {
+		drm_object_property_get_default_value(&colorop->base,
+						      colorop->fixed_matrix_type_property,
+						      &val);
+		colorop_state->fixed_matrix_type = val;
+	}
 }
 
 /**
@@ -561,6 +652,7 @@ static const char * const colorop_type_name[] = {
 	[DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
 	[DRM_COLOROP_MULTIPLIER] = "Multiplier",
 	[DRM_COLOROP_3D_LUT] = "3D LUT",
+	[DRM_COLOROP_FIXED_MATRIX] = "Fixed Matrix",
 };
 
 static const char * const colorop_lu3d_interpolation_name[] = {
@@ -617,6 +709,21 @@ const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
 	return colorop_lu3d_interpolation_name[type];
 }
 
+/**
+ * drm_get_colorop_fixed_matrix_type_name: return a string for fixed matrix type
+ * @type: fixed matrix type to compute name of
+ *
+ * In contrast to the other drm_get_*_name functions this one here returns a
+ * const pointer and hence is threadsafe.
+ */
+const char *drm_get_colorop_fixed_matrix_type_name(enum drm_colorop_fixed_matrix_type type)
+{
+	if (WARN_ON(type >= ARRAY_SIZE(colorop_fixed_matrix_type_names)))
+		return "unknown";
+
+	return colorop_fixed_matrix_type_names[type];
+}
+
 /**
  * drm_colorop_set_next_property - sets the next pointer
  * @colorop: drm colorop
diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
index bd082854ca74..c13b4b045fff 100644
--- a/include/drm/drm_colorop.h
+++ b/include/drm/drm_colorop.h
@@ -134,6 +134,71 @@ enum drm_colorop_curve_1d_type {
 	DRM_COLOROP_1D_CURVE_COUNT
 };
 
+/**
+ * enum drm_colorop_fixed_matrix_type - type of Fixed Matrix
+ *
+ * Describes a Fixed Matrix operation to be applied by the DRM_COLOROP_FIXED_MATRIX
+ */
+enum drm_colorop_fixed_matrix_type {
+	/**
+	 * @DRM_COLOROP_FM_YCBCR601_FULL_RGB:
+	 *
+	 * enum string "YCbCr 601 Full to RGB"
+	 *
+	 * This selects the matrix that converts full range YCbCr into RGB
+	 * according to the BT.601 coefficients.
+	 */
+	DRM_COLOROP_FM_YCBCR601_FULL_RGB,
+
+	/**
+	 * @DRM_COLOROP_FM_YCBCR709_FULL_RGB:
+	 *
+	 * enum string "YCbCr 709 Full to RGB"
+	 *
+	 * This selects the matrix that converts full range YCbCr into RGB
+	 * according to the BT.709 coefficients.
+	 */
+	DRM_COLOROP_FM_YCBCR709_FULL_RGB,
+
+	/**
+	 * @DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB:
+	 *
+	 * enum string "YCbCr 2020 Full to RGB NC"
+	 *
+	 * This selects the matrix that converts full range YCbCr into RGB
+	 * according to the BT.2020 non-constant luminance coefficients.
+	 */
+	DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC,
+
+	/**
+	 * @DRM_COLOROP_FM_YCBCR_LIMITED_FULL:
+	 *
+	 * enum string "YCbCr limited to full"
+	 *
+	 * This selects the matrix that converts limited range YCbCr into
+	 * full range YCbCr. Though not strictly a matrix operation but
+	 * can be represented as one.
+	 */
+	DRM_COLOROP_FM_YCBCR_LIMITED_FULL,
+
+	/**
+	 * @DRM_COLOROP_FM_RGB709_RGB2020:
+	 *
+	 * enum string "RGB709 to RGB2020"
+	 *
+	 * Selects the fixed-function CSC preset that converts RGB
+	 * (BT.709) colorimetry to RGB (BT.2020).
+	 */
+	DRM_COLOROP_FM_RGB709_RGB2020,
+
+	/**
+	 * @DRM_COLOROP_FM_COUNT:
+	 *
+	 * enum value denoting the size of the enum
+	 */
+	DRM_COLOROP_FM_COUNT
+};
+
 /**
  * struct drm_colorop_state - mutable colorop state
  */
@@ -183,6 +248,13 @@ struct drm_colorop_state {
 	 */
 	struct drm_property_blob *data;
 
+	/**
+	 * @fixed_matrix_type:
+	 *
+	 * Type of Fixed Matrix operation.
+	 */
+	enum drm_colorop_fixed_matrix_type fixed_matrix_type;
+
 	/** @state: backpointer to global drm_atomic_state */
 	struct drm_atomic_state *state;
 };
@@ -368,6 +440,13 @@ struct drm_colorop {
 	 */
 	struct drm_property *data_property;
 
+	/**
+	 * @fixed_matrix_type_property:
+	 *
+	 * Sub-type for DRM_COLOROP_FIXED_MATRIX type.
+	 */
+	struct drm_property *fixed_matrix_type_property;
+
 	/**
 	 * @next_property:
 	 *
@@ -424,6 +503,10 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
 				 uint32_t lut_size,
 				 enum drm_colorop_lut3d_interpolation_type interpolation,
 				 uint32_t flags);
+int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, struct drm_colorop *colorop,
+					struct drm_plane *plane,
+					const struct drm_colorop_funcs *funcs,
+					u64 supported_fm, uint32_t flags);
 
 struct drm_colorop_state *
 drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
@@ -480,6 +563,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_ty
 
 const char *
 drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);
+const char *drm_get_colorop_fixed_matrix_type_name(enum drm_colorop_fixed_matrix_type type);
 
 void drm_colorop_set_next_property(struct drm_colorop *colorop, struct drm_colorop *next);
 
diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
index a4bdc4bd11bc..dc4b8566fec8 100644
--- a/include/uapi/drm/drm_mode.h
+++ b/include/uapi/drm/drm_mode.h
@@ -971,6 +971,18 @@ enum drm_colorop_type {
 	 *         color = lut3d[index]
 	 */
 	DRM_COLOROP_3D_LUT,
+
+	/**
+	 * @DRM_COLOROP_FIXED_MATRIX:
+	 *
+	 * enum string "Fixed Matrix"
+	 *
+	 * A Colorop block that performs a pre-defined matrix operation selected
+	 * via the FIXED_MATRIX_TYPE enum property. The driver advertises the supported
+	 * operations through this property.
+	 */
+	DRM_COLOROP_FIXED_MATRIX,
+
 };
 
 /**
-- 
2.25.1

