Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08D7305E9A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 15:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADBA56E117;
	Wed, 27 Jan 2021 14:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5234D6E117
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 14:49:17 +0000 (UTC)
IronPort-SDR: zlOjPJ1slIHEi33cNYHtlK67hKrqtxhjBZtR1zNX9wTEQvPfq3qP633YFYlZ0wfh7a87vnzqIK
 lSXKYdsrnWkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167173680"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="167173680"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:49:15 -0800
IronPort-SDR: 6fQvGp1G42rf9v4pUngkkpzRG0cMK7rNPyO90KeUSt7lqIedsu8nXpdK3/9r9FkPt6hB9Z5TQz
 mJ/u1bYeC1PA==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388331583"
Received: from tdo2-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.72.224])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:49:14 -0800
Date: Wed, 27 Jan 2021 06:49:11 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210127144911.bjplfcivnjyhwjce@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210120151611.132591-1-jose.souza@intel.com>
 <20210120151611.132591-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120151611.132591-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gen11+: Only load DRAM
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

On Wed, Jan 20, 2021 at 07:16:09AM -0800, Jose Souza wrote:
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
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bw.c | 98 +++++--------------------
> drivers/gpu/drm/i915/i915_drv.c         |  5 +-
> drivers/gpu/drm/i915/i915_drv.h         |  1 +
> drivers/gpu/drm/i915/intel_dram.c       | 77 ++++++++++++++++++-
> 4 files changed, 97 insertions(+), 84 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i91=
5/display/intel_bw.c
>index bd060404d249..1368bd96ed73 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -19,77 +19,9 @@ struct intel_qgv_point {
>
> struct intel_qgv_info {
> 	struct intel_qgv_point points[I915_NUM_QGV_POINTS];
>-	u8 num_points;
>-	u8 num_channels;
> 	u8 t_bl;
>-	enum intel_dram_type dram_type;

humn... given this struct already has padding, we could very well leave
the num_points field. See below.

> static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_pri=
v,
> 					 struct intel_qgv_point *sp,
> 					 int point)
>@@ -139,17 +71,19 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_pri=
vate *dev_priv,
> static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
> 			      struct intel_qgv_info *qi)
> {
>+	struct dram_info *dram_info =3D &dev_priv->dram_info;
> 	int i, ret;
>
>-	ret =3D icl_pcode_read_mem_global_info(dev_priv, qi);
>-	if (ret)
>-		return ret;
>+	if (IS_GEN(dev_priv, 12))
>+		qi->t_bl =3D dev_priv->dram_info.type =3D=3D INTEL_DRAM_DDR4 ? 4 : 16;
>+	else if (IS_GEN(dev_priv, 11))
>+		qi->t_bl =3D dev_priv->dram_info.type =3D=3D INTEL_DRAM_DDR4 ? 4 : 8;
>
> 	if (drm_WARN_ON(&dev_priv->drm,
>-			qi->num_points > ARRAY_SIZE(qi->points)))
>-		qi->num_points =3D ARRAY_SIZE(qi->points);
>+			dram_info->qgv_points > ARRAY_SIZE(qi->points)))
>+		dram_info->qgv_points =3D ARRAY_SIZE(qi->points);

previously we were overriding a member of qi. Now we are overriding a
member of dram_info, which seems to cross the boundaries of what this
code should be doing.

So maybe:

qi->num_points =3D dev_priv->dram_info->qgv_points;

and leave the check alone and also the renames in this file?
Also, dram_info->qgv_points should be named dram_info->num_qgv_points
for consistency with other structs.

>
>-	for (i =3D 0; i < qi->num_points; i++) {
>+	for (i =3D 0; i < dram_info->qgv_points; i++) {
> 		struct intel_qgv_point *sp =3D &qi->points[i];
>
> 		ret =3D icl_pcode_read_qgv_point_info(dev_priv, sp, i);
>@@ -171,12 +105,13 @@ static int icl_calc_bw(int dclk, int num, int den)
> 	return DIV_ROUND_CLOSEST(num * dclk * 100, den * 6);
> }
>
>-static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>+static int icl_sagv_max_dclk(struct drm_i915_private *dev_priv,
>+			     const struct intel_qgv_info *qi)
> {
> 	u16 dclk =3D 0;
> 	int i;
>
>-	for (i =3D 0; i < qi->num_points; i++)
>+	for (i =3D 0; i < dev_priv->dram_info.qgv_points; i++)
> 		dclk =3D max(dclk, qi->points[i].dclk);
>
> 	return dclk;
>@@ -207,6 +142,7 @@ static const struct intel_sa_info rkl_sa_info =3D {
>
> static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struc=
t intel_sa_info *sa)
> {
>+	struct dram_info *dram_info =3D &dev_priv->dram_info;
> 	struct intel_qgv_info qi =3D {};
> 	bool is_y_tile =3D true; /* assume y tile may be used */
> 	int num_channels;
>@@ -222,10 +158,10 @@ static int icl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
> 			    "Failed to get memory subsystem information, ignoring bandwidth li=
mits");
> 		return ret;
> 	}
>-	num_channels =3D qi.num_channels;
>+	num_channels =3D dram_info->num_channels;
>
> 	deinterleave =3D DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>-	dclk_max =3D icl_sagv_max_dclk(&qi);
>+	dclk_max =3D icl_sagv_max_dclk(dev_priv, &qi);
>
> 	ipqdepthpch =3D 16;
>
>@@ -241,9 +177,9 @@ static int icl_get_bw_info(struct drm_i915_private *de=
v_priv, const struct intel
> 		clpchgroup =3D (sa->deburst * deinterleave / num_channels) << i;
> 		bi->num_planes =3D (ipqdepth - clpchgroup) / clpchgroup + 1;
>
>-		bi->num_qgv_points =3D qi.num_points;
>+		bi->num_qgv_points =3D dram_info->qgv_points;


see above, we already have num_ prefix here, let's keep it in dram_info
as well.

>
>-		for (j =3D 0; j < qi.num_points; j++) {
>+		for (j =3D 0; j < dram_info->qgv_points; j++) {
> 			const struct intel_qgv_point *sp =3D &qi.points[j];
> 			int ct, bw;
>
>@@ -274,7 +210,7 @@ static int icl_get_bw_info(struct drm_i915_private *de=
v_priv, const struct intel
> 	 * SAGV point, but we can't send PCode commands to restrict it
> 	 * as it will fail and pointless anyway.
> 	 */
>-	if (qi.num_points =3D=3D 1)
>+	if (dram_info->qgv_points =3D=3D 1)
> 		dev_priv->sagv_status =3D I915_SAGV_NOT_CONTROLLED;
> 	else
> 		dev_priv->sagv_status =3D I915_SAGV_ENABLED;
>diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_d=
rv.c
>index a1cc60de99f0..66f763fe7a83 100644
>--- a/drivers/gpu/drm/i915/i915_drv.c
>+++ b/drivers/gpu/drm/i915/i915_drv.c
>@@ -608,14 +608,15 @@ static int i915_driver_hw_probe(struct drm_i915_priv=
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
>index 250e92910fa1..a2ae21082b34 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1144,6 +1144,7 @@ struct drm_i915_private {
> 			INTEL_DRAM_LPDDR3,
> 			INTEL_DRAM_LPDDR4
> 		} type;
>+		u8 qgv_points;
> 	} dram_info;
>
> 	struct intel_bw_info {
>diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/inte=
l_dram.c
>index 694fbd8c9cd4..1298823c957c 100644
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
>@@ -408,6 +409,78 @@ static int bxt_get_dram_info(struct drm_i915_private =
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
>+	dram_info->qgv_points =3D (val & 0xf00) >> 8;
>+
>+	return 0;
>+}
>+
>+static int gen11_get_dram_info(struct drm_i915_private *i915)
>+{
>+	if (INTEL_GEN(i915) =3D=3D 11) {
>+		int ret =3D skl_get_dram_info(i915);
>+
>+		if (ret)
>+			return ret;
>+	} else {
>+		/* Always needed for GEN12+ */
>+		i915->dram_info.is_16gb_dimm =3D true;
>+	}
>+
>+	return icl_pcode_read_mem_global_info(i915);
>+}
>+
> void intel_dram_detect(struct drm_i915_private *i915)
> {
> 	struct dram_info *dram_info =3D &i915->dram_info;
>@@ -423,7 +496,9 @@ void intel_dram_detect(struct drm_i915_private *i915)
> 	if (INTEL_GEN(i915) < 9 || !HAS_DISPLAY(i915))
> 		return;
>
>-	if (IS_GEN9_LP(i915))
>+	if (INTEL_GEN(i915) >=3D 11)
>+		ret =3D gen11_get_dram_info(i915);

gen11 and gen12 implementation above are sufficiently different: better
to keep the if/else chain here only

static int gen11_get_dram_info(struct drm_i915_private *i915)
{
	int ret =3D skl_get_dram_info(i915);
	if (ret)
		return ret;

	return icl_pcode_read_mem_global_info(i915);
}


static int gen12_get_dram_info(struct drm_i915_private *i915)
{
	/* Always needed for GEN12+ */
	i915->dram_info.is_16gb_dimm =3D true;

	return icl_pcode_read_mem_global_info(i915);
}

Also, now it seems we have lots of dead code since we are not calling
skl_get_dram_info() for tgl. See
tgl_get_dram_type(), skl_dram_get_channels_info, etc

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
