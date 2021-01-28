Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD63F306C28
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 05:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E60B89E5A;
	Thu, 28 Jan 2021 04:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511B789E5A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 04:21:42 +0000 (UTC)
IronPort-SDR: EY8G6+peRGUOq6xDTh7WSd/DQ93WTP0eXouDjDZpYkETnSqIV2LcHEDkRFa4GLXzTvjL5gY4w2
 IxeBO8F7kkOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="176669243"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="176669243"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 20:21:40 -0800
IronPort-SDR: ZUhD5GTqVOQkhH5dbwVsu0kR9cD7rpq67z2CNXajaxPhsiLhqDMFY01T6+8lclaTeicxq0B71b
 gwv/tUL2oSHw==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="407377690"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.63.13])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 20:21:38 -0800
Date: Wed, 27 Jan 2021 20:21:35 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210128042135.jr3wpwcbnis7dkw2@ldmartin-desk1>
References: <20210127165402.117829-1-jose.souza@intel.com>
 <20210127165402.117829-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127165402.117829-3-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Fail driver probe when
 unable to load DRAM information
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

On Wed, Jan 27, 2021 at 08:54:01AM -0800, Jose Souza wrote:
>DRAM information is required to properly program display.
>Before "drm/i915/gen11+: Only load DRAM information from pcode" we
>were failing driver load if unable to fetch DRAM information from
>pcode form GEN11+ but we should also extend it to GEN9 plaforms.
>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

makes sense and seems correct. But this needs to be tested on DG1 that
is not on CI and AFAIR misbehaved when trying to get this info from
pcode.  If that is passing now,


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_drv.c   |  6 +++++-
> drivers/gpu/drm/i915/intel_dram.c | 13 +++++++++----
> drivers/gpu/drm/i915/intel_dram.h |  2 +-
> 3 files changed, 15 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_d=
rv.c
>index aec0e870dc25..7ff58ea30c7c 100644
>--- a/drivers/gpu/drm/i915/i915_drv.c
>+++ b/drivers/gpu/drm/i915/i915_drv.c
>@@ -622,12 +622,16 @@ static int i915_driver_hw_probe(struct drm_i915_priv=
ate *dev_priv)
> 	 * Fill the dram structure to get the system dram info. This will be
> 	 * used for memory latency calculation.
> 	 */
>-	intel_dram_detect(dev_priv);
>+	ret =3D intel_dram_detect(dev_priv);
>+	if (ret)
>+		goto err_dram;
>
> 	intel_bw_init_hw(dev_priv);
>
> 	return 0;
>
>+err_dram:
>+	intel_gvt_driver_remove(dev_priv);
> err_msi:
> 	if (pdev->msi_enabled)
> 		pci_disable_msi(pdev);
>diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/inte=
l_dram.c
>index 4d5ab206eacb..6ce56eedaf12 100644
>--- a/drivers/gpu/drm/i915/intel_dram.c
>+++ b/drivers/gpu/drm/i915/intel_dram.c
>@@ -484,7 +484,7 @@ static int gen12_get_dram_info(struct drm_i915_private=
 *i915)
> 	return icl_pcode_read_mem_global_info(i915);
> }
>
>-void intel_dram_detect(struct drm_i915_private *i915)
>+int intel_dram_detect(struct drm_i915_private *i915)
> {
> 	struct dram_info *dram_info =3D &i915->dram_info;
> 	int ret;
>@@ -497,7 +497,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
> 	dram_info->is_16gb_dimm =3D !IS_GEN9_LP(i915);
>
> 	if (INTEL_GEN(i915) < 9 || !HAS_DISPLAY(i915))
>-		return;
>+		return 0;
>
> 	if (INTEL_GEN(i915) >=3D 12)
> 		ret =3D gen12_get_dram_info(i915);
>@@ -507,13 +507,18 @@ void intel_dram_detect(struct drm_i915_private *i915)
> 		ret =3D bxt_get_dram_info(i915);
> 	else
> 		ret =3D skl_get_dram_info(i915);
>-	if (ret)
>-		return;
>+
>+	if (ret) {
>+		drm_warn(&i915->drm, "Unable to load dram information\n");
>+		return ret;
>+	}
>
> 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
>
> 	drm_dbg_kms(&i915->drm, "DRAM 16Gb DIMMs: %s\n",
> 		    yesno(dram_info->is_16gb_dimm));
>+
>+	return 0;
> }
>
> static u32 gen9_edram_size_mb(struct drm_i915_private *i915, u32 cap)
>diff --git a/drivers/gpu/drm/i915/intel_dram.h b/drivers/gpu/drm/i915/inte=
l_dram.h
>index 4ba13c13162c..2a0f283b1a1d 100644
>--- a/drivers/gpu/drm/i915/intel_dram.h
>+++ b/drivers/gpu/drm/i915/intel_dram.h
>@@ -9,6 +9,6 @@
> struct drm_i915_private;
>
> void intel_dram_edram_detect(struct drm_i915_private *i915);
>-void intel_dram_detect(struct drm_i915_private *i915);
>+int intel_dram_detect(struct drm_i915_private *i915);
>
> #endif /* __INTEL_DRAM_H__ */
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
