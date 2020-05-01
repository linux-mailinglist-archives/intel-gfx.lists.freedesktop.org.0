Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E621C1BB6
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323ED6ED11;
	Fri,  1 May 2020 17:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE78A6ED11
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:32:26 +0000 (UTC)
IronPort-SDR: +kIor/DDJb74/kCORxJwS6rWCaWjpVBm1ZGOc4t5CSjWQfZq/z4UKuL8vB0GklWqlM5UKd99G3
 0shRSnG/NoGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:32:26 -0700
IronPort-SDR: nD5g0nrEZqpr7B9DRkcANHG1oUjEh627mIsOxXqhFLS9bQCMObNDwz2kgRWjHGczxR8OYqbp4N
 eNkFVh2kIipA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="433373897"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga005.jf.intel.com with ESMTP; 01 May 2020 10:32:25 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 10:32:25 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.187]) with mapi id 14.03.0439.000;
 Fri, 1 May 2020 10:32:25 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 04/23] drm/i915/rkl: Load DMC firmware for Rocket Lake
Thread-Index: AQHWH9sSm0RdvA9TRk6o0nuO0Fw2maiTeOyg
Date: Fri, 1 May 2020 17:32:24 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482BD6BE@ORSMSX108.amr.corp.intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
 <20200501170748.358135-5-matthew.d.roper@intel.com>
In-Reply-To: <20200501170748.358135-5-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTQ2ZjEwOTEtMjAzOS00Yjk2LTlhZjktMzgzMmJiMDUwMTBlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaXFWSCs0SXhBVDRvdmE0TFp4U3hxd0VoT2poOUsxOGsxVVA2azcxYXJHMHVqUDBBU1c0ZUJmOUJJejRYaXlBVCJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915/rkl: Load DMC firmware for
 Rocket Lake
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, May 1, 2020 10:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH 04/23] drm/i915/rkl: Load DMC firmware for Rocket Lake
> 
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_csr.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c
> b/drivers/gpu/drm/i915/display/intel_csr.c
> index 3112572cfb7d..319932b03e88 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -40,6 +40,10 @@
> 
>  #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
> 
> +#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_01.bin"
> +#define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
> +MODULE_FIRMWARE(RKL_CSR_PATH);
> +
>  #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_06.bin"
>  #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 6)
>  #define TGL_CSR_MAX_FW_SIZE		0x6000
> @@ -682,7 +686,11 @@ void intel_csr_ucode_init(struct drm_i915_private
> *dev_priv)
>  	 */
>  	intel_csr_runtime_pm_get(dev_priv);
> 
> -	if (INTEL_GEN(dev_priv) >= 12) {
> +	if (IS_ROCKETLAKE(dev_priv)) {
> +		csr->fw_path = RKL_CSR_PATH;
> +		csr->required_version = RKL_CSR_VERSION_REQUIRED;
> +		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> +	} else if (INTEL_GEN(dev_priv) >= 12) {
>  		csr->fw_path = TGL_CSR_PATH;
>  		csr->required_version = TGL_CSR_VERSION_REQUIRED;
>  		/* Allow to load fw via parameter using the last known size */
> --
> 2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
