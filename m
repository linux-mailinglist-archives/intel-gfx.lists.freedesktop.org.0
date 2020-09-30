Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D93A27EECD
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D225989E3B;
	Wed, 30 Sep 2020 16:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9C789E3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 16:18:32 +0000 (UTC)
IronPort-SDR: too3GqlHRizNerQRqZec+tsk42YRNnxXPgraIPTleWoqEcG/O6ff9fpIIlNseyVVvm74+bqGEP
 w3vFiCMpXnIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="159823293"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="159823293"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:18:17 -0700
IronPort-SDR: 1ZWnRUwP9uNBGRzKLT5/q6qbKQPOVnEMYlzAvXKogJ5yMDl/pEzLxZL+ZTMChVUvcVVYOaTn6/
 m1RCGPQjmi+A==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="498217878"
Received: from jjgryzlo-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.105.223])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:18:16 -0700
Date: Wed, 30 Sep 2020 09:18:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200930161815.xstkq5zbixvfyntk@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-21-lucas.demarchi@intel.com>
 <20200930161043.GC2244993@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930161043.GC2244993@mdroper-desk1.amr.corp.intel.com>
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 09:10:43AM -0700, Matt Roper wrote:
>On Tue, Sep 29, 2020 at 11:42:30PM -0700, Lucas De Marchi wrote:
>> From: Matt Atwood <matthew.s.atwood@intel.com>
>>
>> Add support to load DMC v2.0.2 on DG1
>>
>> While we're at it, make TGL use the same GEN12 firmware size definition
>> and remove obsolete comment.
>>
>> Bpec: 49230
>>
>> v2: do not replace GEN12_CSR_MAX_FW_SIZE (from Jos=E9)
>>     and replace stale comment
>>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>I'm not sure if the pull request with the firmware has been sent yet,
>but the version here is correct, so

I don't think so. Yes, we will have to wait for it.

Anusha, can you send the DMC pull request?

thanks
Lucas De Marchi

>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_csr.c | 12 +++++++++---
>>  1 file changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/=
i915/display/intel_csr.c
>> index d5db16764619..67dc64df78a5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_csr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
>> @@ -40,13 +40,16 @@
>>
>>  #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>>
>> +#define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
>> +#define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
>> +MODULE_FIRMWARE(DG1_CSR_PATH);
>> +
>>  #define RKL_CSR_PATH			"i915/rkl_dmc_ver2_02.bin"
>>  #define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
>>  MODULE_FIRMWARE(RKL_CSR_PATH);
>>
>>  #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_08.bin"
>>  #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 8)
>> -#define TGL_CSR_MAX_FW_SIZE		0x6000
>>  MODULE_FIRMWARE(TGL_CSR_PATH);
>>
>>  #define ICL_CSR_PATH			"i915/icl_dmc_ver1_09.bin"
>> @@ -686,14 +689,17 @@ void intel_csr_ucode_init(struct drm_i915_private =
*dev_priv)
>>  	 */
>>  	intel_csr_runtime_pm_get(dev_priv);
>>
>> -	if (IS_ROCKETLAKE(dev_priv)) {
>> +	if (IS_DG1(dev_priv)) {
>> +		csr->fw_path =3D DG1_CSR_PATH;
>> +		csr->required_version =3D DG1_CSR_VERSION_REQUIRED;
>> +		csr->max_fw_size =3D GEN12_CSR_MAX_FW_SIZE;
>> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>>  		csr->fw_path =3D RKL_CSR_PATH;
>>  		csr->required_version =3D RKL_CSR_VERSION_REQUIRED;
>>  		csr->max_fw_size =3D GEN12_CSR_MAX_FW_SIZE;
>>  	} else if (INTEL_GEN(dev_priv) >=3D 12) {
>>  		csr->fw_path =3D TGL_CSR_PATH;
>>  		csr->required_version =3D TGL_CSR_VERSION_REQUIRED;
>> -		/* Allow to load fw via parameter using the last known size */
>>  		csr->max_fw_size =3D GEN12_CSR_MAX_FW_SIZE;
>>  	} else if (IS_GEN(dev_priv, 11)) {
>>  		csr->fw_path =3D ICL_CSR_PATH;
>> --
>> 2.28.0
>>
>
>-- =

>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
