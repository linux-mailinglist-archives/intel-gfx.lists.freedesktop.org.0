Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6991E2942
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 19:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDF36E223;
	Tue, 26 May 2020 17:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5DEF6E223
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 17:42:32 +0000 (UTC)
IronPort-SDR: 9PsG5iFsxDf57kAtyI451eD2aCDqH2piOWOcRpiA/KvTIGUMh8r+f8ETEF8ECG021nCv+vVHiG
 kK+LbwW/aWXw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 10:42:32 -0700
IronPort-SDR: qoSW7QRwuewtlhTnkcRLVc8dP29WM0tm3RBOP8Gv86sr6zoeNNQcKwCm8CrXiswWwZzEGAVmSV
 eksxfRX8bbtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="291280453"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 26 May 2020 10:42:32 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 10:42:32 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.63]) with mapi id 14.03.0439.000;
 Tue, 26 May 2020 10:42:32 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 35/37] drm/i915/dg1: Load DMC
Thread-Index: AQHWLwg5A020jfE9ckCZaZFX+W8rL6i7IgAA
Date: Tue, 26 May 2020 17:42:30 +0000
Message-ID: <585e94ab19c0f9cabdc09b7b4e2493fcacdc7fae.camel@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-36-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-36-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.73.147]
Content-ID: <35EB3BBD0958E345AF81FCC31D94AE52@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 35/37] drm/i915/dg1: Load DMC
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>,
 "fernando.pacheco@intel.com" <fernando.pacheco@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-05-20 at 17:38 -0700, Lucas De Marchi wrote:
> From: Matt Atwood <matthew.s.atwood@intel.com>
> 
> Add support to load DMC v2.0.2 on DG1
> 
> While we're at it, tweak the TGL and RKL firmware size definition to
> follow the convention used in previous platforms. Remove obsolete
> commenting.
> 
> Bpec: 49230
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_csr.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
> index 319932b03e88..1f05876620fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -38,15 +38,19 @@
>   * low-power state and comes back to normal.
>   */
>  
> -#define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE

Why GEN12_CSR_MAX_FW_SIZE was replaced by platform size if the size is still the same for all?

> +#define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
> +#define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
> +#define DG1_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
> +MODULE_FIRMWARE(DG1_CSR_PATH);
>  
>  #define RKL_CSR_PATH			"i915/rkl_dmc_ver2_01.bin"
>  #define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
> +#define RKL_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>  MODULE_FIRMWARE(RKL_CSR_PATH);
>  
>  #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_06.bin"
>  #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 6)
> -#define TGL_CSR_MAX_FW_SIZE		0x6000
> +#define TGL_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>  MODULE_FIRMWARE(TGL_CSR_PATH);
>  
>  #define ICL_CSR_PATH			"i915/icl_dmc_ver1_09.bin"
> @@ -686,15 +690,18 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
>  	 */
>  	intel_csr_runtime_pm_get(dev_priv);
>  
> -	if (IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_DG1(dev_priv)) {
> +		csr->fw_path = DG1_CSR_PATH;
> +		csr->required_version = DG1_CSR_VERSION_REQUIRED;
> +		csr->max_fw_size = DG1_CSR_MAX_FW_SIZE;
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		csr->fw_path = RKL_CSR_PATH;
>  		csr->required_version = RKL_CSR_VERSION_REQUIRED;
> -		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> +		csr->max_fw_size = RKL_CSR_MAX_FW_SIZE;
>  	} else if (INTEL_GEN(dev_priv) >= 12) {
>  		csr->fw_path = TGL_CSR_PATH;
>  		csr->required_version = TGL_CSR_VERSION_REQUIRED;
> -		/* Allow to load fw via parameter using the last known size */
> -		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> +		csr->max_fw_size = TGL_CSR_MAX_FW_SIZE;
>  	} else if (IS_GEN(dev_priv, 11)) {
>  		csr->fw_path = ICL_CSR_PATH;
>  		csr->required_version = ICL_CSR_VERSION_REQUIRED;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
