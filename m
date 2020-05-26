Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DE01E2969
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 19:49:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEFB6E047;
	Tue, 26 May 2020 17:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB5E6E047
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 17:49:29 +0000 (UTC)
IronPort-SDR: unSfg6voFMikXXic8ybUjCP+j0dCe+PY36Ub6JsEUhVrE/Nbhsu1CmTdr1dni6MR8bKnF2AvcU
 0gtvxm+sPjdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 10:49:28 -0700
IronPort-SDR: F8I6wDZy8soAdj4oj7HtgUlv777+mD5/9eg7ZzjDkNZxZG5l+LFA7Akr1f8j5/zKiRp+L07sXL
 YWtu5OUt2ipw==
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="468433945"
Received: from shivagup-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.227.40])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 10:49:28 -0700
Date: Tue, 26 May 2020 10:49:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200526174927.haclk2ircclmv7vg@ldmartin-desk1>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-36-lucas.demarchi@intel.com>
 <585e94ab19c0f9cabdc09b7b4e2493fcacdc7fae.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <585e94ab19c0f9cabdc09b7b4e2493fcacdc7fae.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>,
 "fernando.pacheco@intel.com" <fernando.pacheco@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 26, 2020 at 10:42:30AM -0700, Jose Souza wrote:
>On Wed, 2020-05-20 at 17:38 -0700, Lucas De Marchi wrote:
>> From: Matt Atwood <matthew.s.atwood@intel.com>
>>
>> Add support to load DMC v2.0.2 on DG1
>>
>> While we're at it, tweak the TGL and RKL firmware size definition to
>> follow the convention used in previous platforms. Remove obsolete
>> commenting.
>>
>> Bpec: 49230
>>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_csr.c | 19 +++++++++++++------
>>  1 file changed, 13 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
>> index 319932b03e88..1f05876620fe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_csr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
>> @@ -38,15 +38,19 @@
>>   * low-power state and comes back to normal.
>>   */
>>
>> -#define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>
>Why GEN12_CSR_MAX_FW_SIZE was replaced by platform size if the size is still the same for all?

Previous platforms used it per platform rather than gen, so I guess
this is what Matt Atwood intended to do and wrote in the last paragraph
in the commit message.

I think we could go either way... no strong opinion on one vs the other.

Lucas De Marchi

>
>> +#define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
>> +#define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
>> +#define DG1_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>> +MODULE_FIRMWARE(DG1_CSR_PATH);
>>
>>  #define RKL_CSR_PATH			"i915/rkl_dmc_ver2_01.bin"
>>  #define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
>> +#define RKL_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>>  MODULE_FIRMWARE(RKL_CSR_PATH);
>>
>>  #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_06.bin"
>>  #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 6)
>> -#define TGL_CSR_MAX_FW_SIZE		0x6000
>> +#define TGL_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>>  MODULE_FIRMWARE(TGL_CSR_PATH);
>>
>>  #define ICL_CSR_PATH			"i915/icl_dmc_ver1_09.bin"
>> @@ -686,15 +690,18 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
>>  	 */
>>  	intel_csr_runtime_pm_get(dev_priv);
>>
>> -	if (IS_ROCKETLAKE(dev_priv)) {
>> +	if (IS_DG1(dev_priv)) {
>> +		csr->fw_path = DG1_CSR_PATH;
>> +		csr->required_version = DG1_CSR_VERSION_REQUIRED;
>> +		csr->max_fw_size = DG1_CSR_MAX_FW_SIZE;
>> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>>  		csr->fw_path = RKL_CSR_PATH;
>>  		csr->required_version = RKL_CSR_VERSION_REQUIRED;
>> -		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>> +		csr->max_fw_size = RKL_CSR_MAX_FW_SIZE;
>>  	} else if (INTEL_GEN(dev_priv) >= 12) {
>>  		csr->fw_path = TGL_CSR_PATH;
>>  		csr->required_version = TGL_CSR_VERSION_REQUIRED;
>> -		/* Allow to load fw via parameter using the last known size */
>> -		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>> +		csr->max_fw_size = TGL_CSR_MAX_FW_SIZE;
>>  	} else if (IS_GEN(dev_priv, 11)) {
>>  		csr->fw_path = ICL_CSR_PATH;
>>  		csr->required_version = ICL_CSR_VERSION_REQUIRED;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
