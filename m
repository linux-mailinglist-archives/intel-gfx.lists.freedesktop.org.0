Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D9327EE97
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9038C89BBE;
	Wed, 30 Sep 2020 16:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C8789346
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 16:10:45 +0000 (UTC)
IronPort-SDR: /WBpAoTbpOWStzxKFS0uzMUH7QVMhULqIx6GnxykKml/q/EQV7PiRLo2qo9g/FxGZ3n1iqBYGe
 rYtQwckmAK7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="161709599"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="161709599"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:10:44 -0700
IronPort-SDR: 4cHzEG3jiwpS2j2pF9W9EFOLPZuxB0DpCb7X+kCLiRhxBBIu4v4Jr9oelYGc95xoWjjMlAKqyJ
 Y1g7gbB40rsw==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="515132324"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:10:44 -0700
Date: Wed, 30 Sep 2020 09:10:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200930161043.GC2244993@mdroper-desk1.amr.corp.intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-21-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930064234.85769-21-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 20/24] drm/i915/dg1: Load DMC
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 11:42:30PM -0700, Lucas De Marchi wrote:
> From: Matt Atwood <matthew.s.atwood@intel.com>
> =

> Add support to load DMC v2.0.2 on DG1
> =

> While we're at it, make TGL use the same GEN12 firmware size definition
> and remove obsolete comment.
> =

> Bpec: 49230
> =

> v2: do not replace GEN12_CSR_MAX_FW_SIZE (from Jos=E9)
>     and replace stale comment
> =

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

I'm not sure if the pull request with the firmware has been sent yet,
but the version here is correct, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_csr.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i=
915/display/intel_csr.c
> index d5db16764619..67dc64df78a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -40,13 +40,16 @@
>  =

>  #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>  =

> +#define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
> +#define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
> +MODULE_FIRMWARE(DG1_CSR_PATH);
> +
>  #define RKL_CSR_PATH			"i915/rkl_dmc_ver2_02.bin"
>  #define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
>  MODULE_FIRMWARE(RKL_CSR_PATH);
>  =

>  #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_08.bin"
>  #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 8)
> -#define TGL_CSR_MAX_FW_SIZE		0x6000
>  MODULE_FIRMWARE(TGL_CSR_PATH);
>  =

>  #define ICL_CSR_PATH			"i915/icl_dmc_ver1_09.bin"
> @@ -686,14 +689,17 @@ void intel_csr_ucode_init(struct drm_i915_private *=
dev_priv)
>  	 */
>  	intel_csr_runtime_pm_get(dev_priv);
>  =

> -	if (IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_DG1(dev_priv)) {
> +		csr->fw_path =3D DG1_CSR_PATH;
> +		csr->required_version =3D DG1_CSR_VERSION_REQUIRED;
> +		csr->max_fw_size =3D GEN12_CSR_MAX_FW_SIZE;
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		csr->fw_path =3D RKL_CSR_PATH;
>  		csr->required_version =3D RKL_CSR_VERSION_REQUIRED;
>  		csr->max_fw_size =3D GEN12_CSR_MAX_FW_SIZE;
>  	} else if (INTEL_GEN(dev_priv) >=3D 12) {
>  		csr->fw_path =3D TGL_CSR_PATH;
>  		csr->required_version =3D TGL_CSR_VERSION_REQUIRED;
> -		/* Allow to load fw via parameter using the last known size */
>  		csr->max_fw_size =3D GEN12_CSR_MAX_FW_SIZE;
>  	} else if (IS_GEN(dev_priv, 11)) {
>  		csr->fw_path =3D ICL_CSR_PATH;
> -- =

> 2.28.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
