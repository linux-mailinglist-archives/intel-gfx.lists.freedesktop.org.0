Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C38305EC8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 15:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BB56E82A;
	Wed, 27 Jan 2021 14:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB1E6E829
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 14:56:39 +0000 (UTC)
IronPort-SDR: gV31f1TTjLm2Ponn+auRjXEZ+oWTaW4Phm2KUDt3wPJgIi/K8h84FltiIhnSDrTXisgRJ7szdt
 2EEZnaRstJkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="244154946"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="244154946"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:56:38 -0800
IronPort-SDR: TC4C+L+2eBmhtXKlgAKOUL2IPczMdDml/uBQpZZo/VizZHE6gi8PmNi0VdAEO9DoKttitZ8xBZ
 doNf+Xbpwj+g==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="578170285"
Received: from tdo2-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.72.224])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:56:36 -0800
Date: Wed, 27 Jan 2021 06:56:33 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210127145633.usmcxxuhwu3oj6ox@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210120151611.132591-1-jose.souza@intel.com>
 <20210120151611.132591-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120151611.132591-4-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Rename is_16gb_dimm to
 wm_lv_0_adjust_needed
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

On Wed, Jan 20, 2021 at 07:16:11AM -0800, Jose Souza wrote:
>As it now it is always required for GEN12+ the is_16gb_dimm name
>do not make sense for GEN12+.
>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>---
> drivers/gpu/drm/i915/i915_drv.h   |  2 +-
> drivers/gpu/drm/i915/intel_dram.c | 10 +++++-----
> drivers/gpu/drm/i915/intel_pm.c   |  2 +-
> 3 files changed, 7 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index a2ae21082b34..adc008c65b14 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1134,7 +1134,7 @@ struct drm_i915_private {
> 	} wm;
>
> 	struct dram_info {
>-		bool is_16gb_dimm;
>+		bool wm_lv_0_adjust_needed;
> 		u8 num_channels;
> 		bool symmetric_memory;
> 		enum intel_dram_type {
>diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/inte=
l_dram.c
>index 4871d48589f9..a5850f0f25aa 100644
>--- a/drivers/gpu/drm/i915/intel_dram.c
>+++ b/drivers/gpu/drm/i915/intel_dram.c
>@@ -207,7 +207,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i9=
15)
> 		return -EINVAL;
> 	}
>
>-	dram_info->is_16gb_dimm =3D ch0.is_16gb_dimm || ch1.is_16gb_dimm;
>+	dram_info->wm_lv_0_adjust_needed =3D ch0.is_16gb_dimm || ch1.is_16gb_dim=
m;
>
> 	dram_info->symmetric_memory =3D intel_is_dram_symmetric(&ch0, &ch1);
>
>@@ -475,7 +475,7 @@ static int gen11_get_dram_info(struct drm_i915_private=
 *i915)
> 			return ret;
> 	} else {
> 		/* Always needed for GEN12+ */
>-		i915->dram_info.is_16gb_dimm =3D true;
>+		i915->dram_info.wm_lv_0_adjust_needed =3D true;
> 	}
>
> 	return icl_pcode_read_mem_global_info(i915);
>@@ -491,7 +491,7 @@ int intel_dram_detect(struct drm_i915_private *i915)
> 	 * This is only used for the level 0 watermark latency
> 	 * w/a which does not apply to bxt/glk.
> 	 */
>-	dram_info->is_16gb_dimm =3D !IS_GEN9_LP(i915);
>+	dram_info->wm_lv_0_adjust_needed =3D !IS_GEN9_LP(i915);

comment above also needs to be updated. With that:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

>
> 	if (INTEL_GEN(i915) < 9 || !HAS_DISPLAY(i915))
> 		return 0;
>@@ -510,8 +510,8 @@ int intel_dram_detect(struct drm_i915_private *i915)
>
> 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
>
>-	drm_dbg_kms(&i915->drm, "DRAM 16Gb DIMMs: %s\n",
>-		    yesno(dram_info->is_16gb_dimm));
>+	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
>+		    yesno(dram_info->wm_lv_0_adjust_needed));
>
> 	return 0;
> }
>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_=
pm.c
>index 992fce8b8d13..f778aae19f82 100644
>--- a/drivers/gpu/drm/i915/intel_pm.c
>+++ b/drivers/gpu/drm/i915/intel_pm.c
>@@ -2930,7 +2930,7 @@ static void intel_read_wm_latency(struct drm_i915_pr=
ivate *dev_priv,
> 		 * any underrun. If not able to get Dimm info assume 16GB dimm
> 		 * to avoid any underrun.
> 		 */
>-		if (dev_priv->dram_info.is_16gb_dimm)
>+		if (dev_priv->dram_info.wm_lv_0_adjust_needed)
> 			wm[0] +=3D 1;
>
> 	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
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
