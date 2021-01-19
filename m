Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5282FC02D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 20:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E764A6E0CE;
	Tue, 19 Jan 2021 19:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2166E0CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 19:40:20 +0000 (UTC)
IronPort-SDR: pG/bkLEh2HGGxAvvu7T19UmhZI3KCfqpL7GmUP27kaeB2XUCKxpdWYCUAsxYJblgNPeUf5TLU+
 Uhi9xZ/6HlHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="158165958"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="158165958"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 11:40:20 -0800
IronPort-SDR: NzvMjFdxewdA8LBLjjfDAh5/lo+//KXornbN0+9Zl1zMBQtQMNbTH0z/saMhiJqfq1HPe6f3RX
 NO2zt4mpQt1w==
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="406635885"
Received: from caophong-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.166.105])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 11:40:18 -0800
Date: Tue, 19 Jan 2021 11:40:15 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210119194015.rn2i7zjprn3rpddg@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210111193000.16738-1-aditya.swarup@intel.com>
 <20210111193000.16738-3-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210111193000.16738-3-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/adl_s: Add ADL-S platform info
 and PCI ids
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 11, 2021 at 11:30:00AM -0800, Aditya Swarup wrote:
>From: Caz Yokoyama <caz.yokoyama@intel.com>
>
>- Add the initial platform information for Alderlake-S.
>- Specify ppgtt_size value
>- Add dma_mask_size
>- Add ADLS REVIDs
>- HW tracking(Selective Update Tracking Enable) has been
>  removed from ADLS. Disable PSR2 till we enable software/
>  manual tracking.
>
>v2:
>- Add support for different ADLS SOC steppings to select
>  correct GT/DISP stepping based on Bspec 53655 based on
>  feedback from Matt Roper.(aswarup)
>
>v3:
>- Make display/gt steppings info generic for reuse with TGL and ADLS.
>- Modify the macros to reuse tgl_revids_get()
>- Add HTI support to adls device info.(mdroper)
>
>v4:
>- Rebase on TGL patch for applying WAs based on stepping info from
>  Matt Roper's feedback.(aswarup)
>
>v5:
>- Replace macros with PCI IDs in revid to stepping table.
>
>Bspec: 53597
>Bspec: 53648
>Bspec: 53655
>Bspec: 48028
>Bspec: 53650
>BSpec: 50422
>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c |  8 ++++++
> drivers/gpu/drm/i915/i915_drv.h             | 27 ++++++++++++++++++++-
> drivers/gpu/drm/i915/i915_pci.c             | 13 ++++++++++
> drivers/gpu/drm/i915/intel_device_info.c    |  1 +
> drivers/gpu/drm/i915/intel_device_info.h    |  1 +
> include/drm/i915_pciids.h                   | 11 +++++++++
> 6 files changed, 60 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 111d01e2f81e..cb9220925fe7 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -84,6 +84,14 @@ const struct i915_rev_steppings tgl_revid_step_tbl[] =
=3D {
> 	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_D0 },
> };
>
>+const struct i915_rev_steppings adls_revid_step_tbl[] =3D {
>+	[0x0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
>+	[0x1] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A2 },
>+	[0x4] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_B0 },
>+	[0x8] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_B0 },
>+	[0xC] =3D { .gt_stepping =3D STEP_D0, .disp_stepping =3D STEP_C0 },
>+};
>+
> static void wa_init_start(struct i915_wa_list *wal, const char *name, con=
st char *engine_name)
> {
> 	wal->name =3D name;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 11d6e8abde46..8d8a046a7b0c 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1417,6 +1417,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_TIGERLAKE)
> #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
> #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
>+#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
> #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> 				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D 0x0C00)
> #define IS_BDW_ULT(dev_priv) \
>@@ -1560,6 +1561,7 @@ extern const struct i915_rev_steppings kbl_revids[];
>
> enum {
> 	STEP_A0,
>+	STEP_A2,
> 	STEP_B0,
> 	STEP_B1,
> 	STEP_C0,
>@@ -1568,9 +1570,11 @@ enum {
>
> #define TGL_UY_REVID_STEP_TBL_SIZE	4
> #define TGL_REVID_STEP_TBL_SIZE		2
>+#define ADLS_REVID_STEP_TBL_SIZE	13
>
> extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID=
_STEP_TBL_SIZE];
> extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_=
TBL_SIZE];
>+extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_STE=
P_TBL_SIZE];
>
> static inline const struct i915_rev_steppings *
> tgl_stepping_get(struct drm_i915_private *dev_priv)
>@@ -1579,7 +1583,10 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
> 	u8 size;
> 	const struct i915_rev_steppings *revid_step_tbl;
>
>-	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		revid_step_tbl =3D adls_revid_step_tbl;
>+		size =3D ARRAY_SIZE(adls_revid_step_tbl);
>+	} else if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> 		revid_step_tbl =3D tgl_uy_revid_step_tbl;
> 		size =3D ARRAY_SIZE(tgl_uy_revid_step_tbl);
> 	} else {
>@@ -1621,6 +1628,24 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
> #define IS_DG1_REVID(p, since, until) \
> 	(IS_DG1(p) && IS_REVID(p, since, until))
>
>+#define ADLS_REVID_A0		0x0
>+#define ADLS_REVID_A2		0x1
>+#define ADLS_REVID_B0		0x4
>+#define ADLS_REVID_G0		0x8
>+#define ADLS_REVID_C0		0xC /*Same as H0 ADLS SOC stepping*/
>+
>+extern const struct i915_rev_steppings adls_revids[];

this can be removed now, otherwise lgtm

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
