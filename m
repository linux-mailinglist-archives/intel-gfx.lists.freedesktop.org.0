Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D481A6E0C1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 18:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D239510E4A1;
	Mon, 24 Mar 2025 17:24:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QCZoHtE3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 216B410E43B;
 Mon, 24 Mar 2025 17:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742837040; x=1774373040;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=65W/GePM1H/ICF2PcTOgaH636Q+aPXrrzB0iltev/Lw=;
 b=QCZoHtE3wKPIKw8VkwNiLO7bU2v1iSNNsH6xVrxsL7tSBBmm4Ty/neYj
 Qp2xDg4UCOtBgLsH4nH6bOyyvjx1HHJVFsRlApeKv7s8c8mtb2VRk0QpG
 TRRmWPaZIEtL3pkJ9ShgXryY6IMeN8NYMRVMOylyyVFQnaCZKTMzT/Llb
 Uz/FP/+nxbTmez7lc4OfELgOVyWA929xw1NdahSU1UuvQMpJBv5p6qpf1
 Bh0naNZRlNXvd3j6+kwkyIA/248aJIZe8kcK9qUc2AW22WVHuO1FXvPWW
 StMq7xGF+j4cpjLhQkichZs+iLm2Z4V11w6iXsdDzLDGJykm4j0oB9usP Q==;
X-CSE-ConnectionGUID: PL9p/xW0SXWmNCMycZDt0Q==
X-CSE-MsgGUID: CyRvVvdPTEuppZSC679DYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44074047"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="44074047"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 10:24:00 -0700
X-CSE-ConnectionGUID: iwhdbD+NR3qKv+luB1eF5Q==
X-CSE-MsgGUID: tm95WdshT8aKckebLQ7Xnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="147309727"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 10:23:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-xe@lists.freedesktop.org>, intel-gfx@lists.freedesktop.org,
 Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, stable@vger.kernel.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH v2] drm/i915/xe2hpd: Identify the memory type for SKUs with
 GDDR + ECC
Date: Mon, 24 Mar 2025 10:22:33 -0700
Message-ID: <20250324-tip-v2-1-38397de319f8@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20250321-tip-23d2af2e3291
X-Mailer: b4 0.15-dev-c25d1
Content-Transfer-Encoding: quoted-printable
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

From: Vivek Kasireddy <vivek.kasireddy@intel.com>=0D
=0D
Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type=0D
with ECC enabled. We need to identify this scenario and add a new=0D
case in xelpdp_get_dram_info() to handle it. In addition, the=0D
derating value needs to be adjusted accordingly to compensate for=0D
the limited bandwidth.=0D
=0D
Bspec: 64602=0D
Cc: Matt Roper <matthew.d.roper@intel.com>=0D
Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")=0D
Cc: stable@vger.kernel.org=0D
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>=0D
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>=0D
---=0D
Changes in v2:=0D
- Add a separate sa_info for the ecc case (Lucas)=0D
- Link to v1: https://lore.kernel.org/r/20250214215944.187407-1-vivek.kasir=
eddy@intel.com=0D
---=0D
 drivers/gpu/drm/i915/display/intel_bw.c | 12 ++++++++++++=0D
 drivers/gpu/drm/i915/i915_drv.h         |  1 +=0D
 drivers/gpu/drm/i915/soc/intel_dram.c   |  4 ++++=0D
 drivers/gpu/drm/xe/xe_device_types.h    |  1 +=0D
 4 files changed, 18 insertions(+)=0D
=0D
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915=
/display/intel_bw.c=0D
index dc7612658a9da..bb81efec08a01 100644=0D
--- a/drivers/gpu/drm/i915/display/intel_bw.c=0D
+++ b/drivers/gpu/drm/i915/display/intel_bw.c=0D
@@ -250,6 +250,7 @@ static int icl_get_qgv_points(struct intel_display *dis=
play,=0D
 			qi->deinterleave =3D 4;=0D
 			break;=0D
 		case INTEL_DRAM_GDDR:=0D
+		case INTEL_DRAM_GDDR_ECC:=0D
 			qi->channel_width =3D 32;=0D
 			break;=0D
 		default:=0D
@@ -404,6 +405,12 @@ static const struct intel_sa_info xe2_hpd_sa_info =3D =
{=0D
 	/* Other values not used by simplified algorithm */=0D
 };=0D
 =0D
+static const struct intel_sa_info xe2_hpd_ecc_sa_info =3D {=0D
+	.derating =3D 45,=0D
+	.deprogbwlimit =3D 53,=0D
+	/* Other values not used by simplified algorithm */=0D
+};=0D
+=0D
 static const struct intel_sa_info xe3lpd_sa_info =3D {=0D
 	.deburst =3D 32,=0D
 	.deprogbwlimit =3D 65, /* GB/s */=0D
@@ -756,11 +763,16 @@ static unsigned int icl_qgv_bw(struct intel_display *=
display,=0D
 =0D
 void intel_bw_init_hw(struct intel_display *display)=0D
 {=0D
+	const struct dram_info *dram_info =3D &to_i915(display->drm)->dram_info;=
=0D
+=0D
 	if (!HAS_DISPLAY(display))=0D
 		return;=0D
 =0D
 	if (DISPLAY_VER(display) >=3D 30)=0D
 		tgl_get_bw_info(display, &xe3lpd_sa_info);=0D
+	else if (DISPLAY_VERx100(display) >=3D 1401 && display->platform.dgfx &&=
=0D
+		 dram_info->type =3D=3D INTEL_DRAM_GDDR_ECC)=0D
+		xe2_hpd_get_bw_info(display, &xe2_hpd_ecc_sa_info);=0D
 	else if (DISPLAY_VERx100(display) >=3D 1401 && display->platform.dgfx)=0D
 		xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);=0D
 	else if (DISPLAY_VER(display) >=3D 14)=0D
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h=0D
index ffc346379cc2c..54538b6f85df5 100644=0D
--- a/drivers/gpu/drm/i915/i915_drv.h=0D
+++ b/drivers/gpu/drm/i915/i915_drv.h=0D
@@ -305,6 +305,7 @@ struct drm_i915_private {=0D
 			INTEL_DRAM_DDR5,=0D
 			INTEL_DRAM_LPDDR5,=0D
 			INTEL_DRAM_GDDR,=0D
+			INTEL_DRAM_GDDR_ECC,=0D
 		} type;=0D
 		u8 num_qgv_points;=0D
 		u8 num_psf_gv_points;=0D
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/s=
oc/intel_dram.c=0D
index 9e310f4099f42..f60eedb0e92cf 100644=0D
--- a/drivers/gpu/drm/i915/soc/intel_dram.c=0D
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c=0D
@@ -687,6 +687,10 @@ static int xelpdp_get_dram_info(struct drm_i915_privat=
e *i915)=0D
 		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));=0D
 		dram_info->type =3D INTEL_DRAM_GDDR;=0D
 		break;=0D
+	case 9:=0D
+		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));=0D
+		dram_info->type =3D INTEL_DRAM_GDDR_ECC;=0D
+		break;=0D
 	default:=0D
 		MISSING_CASE(val);=0D
 		return -EINVAL;=0D
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_d=
evice_types.h=0D
index 1334174388afe..20239d6a2e985 100644=0D
--- a/drivers/gpu/drm/xe/xe_device_types.h=0D
+++ b/drivers/gpu/drm/xe/xe_device_types.h=0D
@@ -587,6 +587,7 @@ struct xe_device {=0D
 			INTEL_DRAM_DDR5,=0D
 			INTEL_DRAM_LPDDR5,=0D
 			INTEL_DRAM_GDDR,=0D
+			INTEL_DRAM_GDDR_ECC,=0D
 		} type;=0D
 		u8 num_qgv_points;=0D
 		u8 num_psf_gv_points;=0D
=0D
---=0D
base-commit: 74f632d1bd3b90ed79883361ca25f1225c0aee58=0D
change-id: 20250321-tip-23d2af2e3291=0D
=0D
Best regards,=0D
-- =0D
Lucas De Marchi <lucas.demarchi@intel.com>=0D
=0D
