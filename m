Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EBE306C24
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 05:19:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFDB89B51;
	Thu, 28 Jan 2021 04:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A11189B51
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 04:19:07 +0000 (UTC)
IronPort-SDR: KeJhmgRjCs5q4rFrEA73KCLT/R0JUFri0TCBaUfQCov+dGY91GLmX/HU7mWpYa/KLY5ss6AVJ+
 NbwU2Z7INRYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="180322085"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="180322085"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 20:19:07 -0800
IronPort-SDR: f8MNxehg+G+l8Gk1vIjrd9UFOrodRruQquw2WtrU0lWtH9eSaA05kRA98W+sjELlPvz5xZdYnh
 UjdbzwrEK4Dw==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="354041579"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.63.13])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 20:19:05 -0800
Date: Wed, 27 Jan 2021 20:19:02 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210128041902.4ijtlxgajg2wnqn4@ldmartin-desk1>
References: <20210127165402.117829-1-jose.souza@intel.com>
 <20210127165402.117829-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127165402.117829-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gen11+: Only load DRAM
 information from pcode
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 27, 2021 at 08:54:00AM -0800, Jose Souza wrote:
>Up to now we were reading some DRAM information from MCHBAR register
>and from pcode what is already not good but some GEN12(TGL-H and ADL-S)
>platforms have MCHBAR DRAM information in different offsets.
>
>This was notified to HW team that decided that the best alternative is
>always apply the 16gb_dimm watermark adjustment for GEN12+ platforms
>and read the remaning DRAM information needed to other display
>programming from pcode.
>
>So here moving the DRAM pcode function to intel_dram.c, removing
>the duplicated fields from intel_qgv_info, setting and using
>information from dram_info.
>
>v2:
>- bring back num_points to intel_qgv_info as num_qgv_point can be
>overwritten in icl_get_qgv_points()
>- add gen12_get_dram_info() and simplify gen11_get_dram_info()
>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bw.c | 80 +++---------------------
> drivers/gpu/drm/i915/i915_drv.c         |  5 +-
> drivers/gpu/drm/i915/i915_drv.h         |  1 +
> drivers/gpu/drm/i915/intel_dram.c       | 82 ++++++++++++++++++++++++-
> 4 files changed, 93 insertions(+), 75 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i91=
5/display/intel_bw.c
>index bd060404d249..4b5a30ac84bc 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -20,76 +20,9 @@ struct intel_qgv_point {
> struct intel_qgv_info {
> 	struct intel_qgv_point points[I915_NUM_QGV_POINTS];
> 	u8 num_points;
>-	u8 num_channels;
> 	u8 t_bl;
>-	enum intel_dram_type dram_type;
> };
>
>-static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_pr=
iv,
>-					  struct intel_qgv_info *qi)
>-{
>-	u32 val =3D 0;
>-	int ret;
>-
>-	ret =3D sandybridge_pcode_read(dev_priv,
>-				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>-				     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO,
>-				     &val, NULL);
>-	if (ret)
>-		return ret;
>-
>-	if (IS_GEN(dev_priv, 12)) {
>-		switch (val & 0xf) {
>-		case 0:
>-			qi->dram_type =3D INTEL_DRAM_DDR4;
>-			break;
>-		case 3:
>-			qi->dram_type =3D INTEL_DRAM_LPDDR4;
>-			break;
>-		case 4:
>-			qi->dram_type =3D INTEL_DRAM_DDR3;
>-			break;
>-		case 5:
>-			qi->dram_type =3D INTEL_DRAM_LPDDR3;
>-			break;
>-		default:
>-			MISSING_CASE(val & 0xf);
>-			break;
>-		}
>-	} else if (IS_GEN(dev_priv, 11)) {
>-		switch (val & 0xf) {
>-		case 0:
>-			qi->dram_type =3D INTEL_DRAM_DDR4;
>-			break;
>-		case 1:
>-			qi->dram_type =3D INTEL_DRAM_DDR3;
>-			break;
>-		case 2:
>-			qi->dram_type =3D INTEL_DRAM_LPDDR3;
>-			break;
>-		case 3:
>-			qi->dram_type =3D INTEL_DRAM_LPDDR4;
>-			break;
>-		default:
>-			MISSING_CASE(val & 0xf);
>-			break;
>-		}
>-	} else {
>-		MISSING_CASE(INTEL_GEN(dev_priv));
>-		qi->dram_type =3D INTEL_DRAM_LPDDR3; /* Conservative default */
>-	}
>-
>-	qi->num_channels =3D (val & 0xf0) >> 4;
>-	qi->num_points =3D (val & 0xf00) >> 8;
>-
>-	if (IS_GEN(dev_priv, 12))
>-		qi->t_bl =3D qi->dram_type =3D=3D INTEL_DRAM_DDR4 ? 4 : 16;
>-	else if (IS_GEN(dev_priv, 11))
>-		qi->t_bl =3D qi->dram_type =3D=3D INTEL_DRAM_DDR4 ? 4 : 8;
>-
>-	return 0;
>-}
>-
> static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_pri=
v,
> 					 struct intel_qgv_point *sp,
> 					 int point)
>@@ -139,11 +72,15 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_pri=
vate *dev_priv,
> static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
> 			      struct intel_qgv_info *qi)
> {
>+	const struct dram_info *dram_info =3D &dev_priv->dram_info;
> 	int i, ret;
>
>-	ret =3D icl_pcode_read_mem_global_info(dev_priv, qi);
>-	if (ret)
>-		return ret;
>+	qi->num_points =3D dram_info->num_qgv_points;
>+
>+	if (IS_GEN(dev_priv, 12))
>+		qi->t_bl =3D dev_priv->dram_info.type =3D=3D INTEL_DRAM_DDR4 ? 4 : 16;
>+	else if (IS_GEN(dev_priv, 11))
>+		qi->t_bl =3D dev_priv->dram_info.type =3D=3D INTEL_DRAM_DDR4 ? 4 : 8;
>
> 	if (drm_WARN_ON(&dev_priv->drm,
> 			qi->num_points > ARRAY_SIZE(qi->points)))
>@@ -209,7 +146,7 @@ static int icl_get_bw_info(struct drm_i915_private *de=
v_priv, const struct intel
> {
> 	struct intel_qgv_info qi =3D {};
> 	bool is_y_tile =3D true; /* assume y tile may be used */
>-	int num_channels;
>+	int num_channels =3D dev_priv->dram_info.num_channels;
> 	int deinterleave;
> 	int ipqdepth, ipqdepthpch;
> 	int dclk_max;
>@@ -222,7 +159,6 @@ static int icl_get_bw_info(struct drm_i915_private *de=
v_priv, const struct intel
> 			    "Failed to get memory subsystem information, ignoring bandwidth li=
mits");
> 		return ret;
> 	}
>-	num_channels =3D qi.num_channels;
>
> 	deinterleave =3D DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> 	dclk_max =3D icl_sagv_max_dclk(&qi);
>diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_d=
rv.c
>index 36e073c4bc06..aec0e870dc25 100644
>--- a/drivers/gpu/drm/i915/i915_drv.c
>+++ b/drivers/gpu/drm/i915/i915_drv.c
>@@ -615,14 +615,15 @@ static int i915_driver_hw_probe(struct drm_i915_priv=
ate *dev_priv)
> 		goto err_msi;
>
> 	intel_opregion_setup(dev_priv);
>+
>+	intel_pcode_init(dev_priv);
>+
> 	/*
> 	 * Fill the dram structure to get the system dram info. This will be
> 	 * used for memory latency calculation.
> 	 */
> 	intel_dram_detect(dev_priv);
>
>-	intel_pcode_init(dev_priv);
>-
> 	intel_bw_init_hw(dev_priv);
>
> 	return 0;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 4e8e151c7ade..80227d47b5cb 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1138,6 +1138,7 @@ struct drm_i915_private {
> 			INTEL_DRAM_LPDDR3,
> 			INTEL_DRAM_LPDDR4
> 		} type;
>+		u8 num_qgv_points;
> 	} dram_info;
>
> 	struct intel_bw_info {
>diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/inte=
l_dram.c
>index 694fbd8c9cd4..4d5ab206eacb 100644
>--- a/drivers/gpu/drm/i915/intel_dram.c
>+++ b/drivers/gpu/drm/i915/intel_dram.c
>@@ -5,6 +5,7 @@
>
> #include "i915_drv.h"
> #include "intel_dram.h"
>+#include "intel_sideband.h"
>
> struct dram_dimm_info {
> 	u16 size;
>@@ -408,6 +409,81 @@ static int bxt_get_dram_info(struct drm_i915_private =
*i915)
> 	return 0;
> }
>
>+static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_pr=
iv)
>+{
>+	struct dram_info *dram_info =3D &dev_priv->dram_info;
>+	u32 val =3D 0;
>+	int ret;
>+
>+	ret =3D sandybridge_pcode_read(dev_priv,
>+				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>+				     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO,
>+				     &val, NULL);
>+	if (ret)
>+		return ret;
>+
>+	if (IS_GEN(dev_priv, 12)) {
>+		switch (val & 0xf) {
>+		case 0:
>+			dram_info->type =3D INTEL_DRAM_DDR4;
>+			break;
>+		case 3:
>+			dram_info->type =3D INTEL_DRAM_LPDDR4;
>+			break;
>+		case 4:
>+			dram_info->type =3D INTEL_DRAM_DDR3;
>+			break;
>+		case 5:
>+			dram_info->type =3D INTEL_DRAM_LPDDR3;
>+			break;
>+		default:
>+			MISSING_CASE(val & 0xf);
>+			return -1;
>+		}
>+	} else {
>+		switch (val & 0xf) {
>+		case 0:
>+			dram_info->type =3D INTEL_DRAM_DDR4;
>+			break;
>+		case 1:
>+			dram_info->type =3D INTEL_DRAM_DDR3;
>+			break;
>+		case 2:
>+			dram_info->type =3D INTEL_DRAM_LPDDR3;
>+			break;
>+		case 3:
>+			dram_info->type =3D INTEL_DRAM_LPDDR4;
>+			break;
>+		default:
>+			MISSING_CASE(val & 0xf);
>+			return -1;
>+		}
>+	}
>+
>+	dram_info->num_channels =3D (val & 0xf0) >> 4;
>+	dram_info->num_qgv_points =3D (val & 0xf00) >> 8;
>+
>+	return 0;
>+}
>+
>+static int gen11_get_dram_info(struct drm_i915_private *i915)
>+{
>+	int ret =3D skl_get_dram_info(i915);
>+
>+	if (ret)
>+		return ret;
>+
>+	return icl_pcode_read_mem_global_info(i915);
>+}
>+
>+static int gen12_get_dram_info(struct drm_i915_private *i915)
>+{
>+	/* Always needed for GEN12+ */
>+	i915->dram_info.is_16gb_dimm =3D true;
>+
>+	return icl_pcode_read_mem_global_info(i915);
>+}
>+
> void intel_dram_detect(struct drm_i915_private *i915)
> {
> 	struct dram_info *dram_info =3D &i915->dram_info;
>@@ -423,7 +499,11 @@ void intel_dram_detect(struct drm_i915_private *i915)
> 	if (INTEL_GEN(i915) < 9 || !HAS_DISPLAY(i915))
> 		return;
>
>-	if (IS_GEN9_LP(i915))
>+	if (INTEL_GEN(i915) >=3D 12)
>+		ret =3D gen12_get_dram_info(i915);
>+	else if (INTEL_GEN(i915) >=3D 11)
>+		ret =3D gen11_get_dram_info(i915);
>+	else if (IS_GEN9_LP(i915))
> 		ret =3D bxt_get_dram_info(i915);
> 	else
> 		ret =3D skl_get_dram_info(i915);
>-- =

>2.30.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
