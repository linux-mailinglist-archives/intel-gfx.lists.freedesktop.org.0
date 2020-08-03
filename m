Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4B023B0E5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 01:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BB46E373;
	Mon,  3 Aug 2020 23:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12C76E373
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 23:27:59 +0000 (UTC)
IronPort-SDR: vxb958gfcZFnEWH61rEz8+XJKw2BLRVtYe2Gs6NvAJq+nTJayEaryQXPV/soWU9k/ir1exPsoS
 tH0JndV6J8yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="140146890"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="140146890"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 16:27:59 -0700
IronPort-SDR: Voyck+zDXDtSnzFq/yfFwDdyB2AhHQ5kWYS3Smmw1HHei9b2v7ooahlrWDoqftOvhi6lQ88fxq
 w21kaIS/xvVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="492630905"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 03 Aug 2020 16:27:59 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 16:27:58 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.240.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 16:27:58 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.137]) with mapi id 14.03.0439.000;
 Mon, 3 Aug 2020 16:27:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 19/22] drm/i915/dg1: Load DMC
Thread-Index: AQHWYgLz+SOJVaO3KUuWFAY+2ozOyKknjWMA
Date: Mon, 3 Aug 2020 23:27:57 +0000
Message-ID: <e3dca2496ce5eb58ccd43e1e84ac83733e0b68bd.camel@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-20-lucas.demarchi@intel.com>
In-Reply-To: <20200724213918.27424-20-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.198]
Content-ID: <220CF6FDF499C040B431BE3A095BBF54@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 19/22] drm/i915/dg1: Load DMC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-07-24 at 14:39 -0700, Lucas De Marchi wrote:
> From: Matt Atwood <
> matthew.s.atwood@intel.com
> >
> 
> Add support to load DMC v2.0.2 on DG1
> 
> While we're at it, tweak the TGL and RKL firmware size definition to
> follow the convention used in previous platforms. Remove obsolete
> commenting.
> 
> Bpec: 49230
> 
> Cc: Matt Roper <
> matthew.d.roper@intel.com
> >
> Signed-off-by: Matt Atwood <
> matthew.s.atwood@intel.com
> >
> Signed-off-by: Lucas De Marchi <
> lucas.demarchi@intel.com
> >
> ---
>  drivers/gpu/drm/i915/display/intel_csr.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
> index f22a7645c249..ccf13ea627d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -38,15 +38,19 @@
>   * low-power state and comes back to normal.
>   */
>  
> -#define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
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

Until CSR_MAX_FW_SIZE of a GEN12 platform is different I don't see a reason why to define a per-platform CSR_MAX_FW_SIZE.

The rest looks good.

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
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
