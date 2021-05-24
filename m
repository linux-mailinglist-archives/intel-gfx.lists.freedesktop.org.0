Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BE038F545
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80FD16E270;
	Mon, 24 May 2021 21:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030B16E239
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:58:54 +0000 (UTC)
IronPort-SDR: UvJ8m1/1de/3Ws0fErxhhsJAedQlDr3FR36thn6kTZyVBTMt+0qxEt4K+Jhc3Q6sVjtwxrPz+G
 cChu5WqLWjzQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="223202764"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="223202764"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:58:51 -0700
IronPort-SDR: CmzEDPimbiPE+PyAmx29uKBF2x1l+7kTu89zpNoMEJLdXjrY1BV1/JXTbgOfJHM762KzWFHNr9
 HgxHnyp6BckQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="443028152"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 24 May 2021 14:58:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 14:58:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 14:58:48 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 24 May 2021 14:58:48 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/7] drm/i915/dmc: Introduce DMC_FW_MAIN
Thread-Index: AQHXUNNdPgYezp7Si0K/b+ysv4fUlarzpJSA
Date: Mon, 24 May 2021 21:58:48 +0000
Message-ID: <f86309fef7fa7dd19cee5d29b8a9f3304ec885ef.camel@intel.com>
References: <20210524193032.3015-1-anusha.srivatsa@intel.com>
 <20210524193032.3015-5-anusha.srivatsa@intel.com>
In-Reply-To: <20210524193032.3015-5-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <EDAFFB99CB96224DBDF8F5328F4AA4BC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/dmc: Introduce DMC_FW_MAIN
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

On Mon, 2021-05-24 at 12:30 -0700, Anusha Srivatsa wrote:
> This is a prep patch for Pipe DMC plugging.
> 
> Add dmc_info struct in intel_dmc to have all common fields
> shared between all DMC's in the package.
> Add DMC_FW_MAIN(dmc_id 0) to refer to the blob.
> 
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 44 +++++++++++-------------
>  drivers/gpu/drm/i915/display/intel_dmc.h | 20 ++++++++---
>  2 files changed, 35 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index f9a0f194f9cf..16bfbca6c1ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -239,7 +239,7 @@ struct stepping_info {
>  
>  bool intel_dmc_has_payload(struct drm_i915_private *i915)
>  {
> -	return i915->dmc.dmc_payload;
> +	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
>  }
>  
>  static const struct stepping_info skl_stepping_info[] = {
> @@ -316,7 +316,8 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
>   */
>  void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>  {
> -	u32 *payload = dev_priv->dmc.dmc_payload;
> +	struct intel_dmc *dmc = &dev_priv->dmc;
> +	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
>  	u32 i, fw_size;
>  
>  	if (!HAS_DMC(dev_priv)) {
> @@ -325,26 +326,26 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>  		return;
>  	}
>  
> -	if (!intel_dmc_has_payload(dev_priv)) {
> +	if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
>  		drm_err(&dev_priv->drm,
>  			"Tried to program CSR with empty payload\n");
>  		return;
>  	}
>  
> -	fw_size = dev_priv->dmc.dmc_fw_size;
> +	fw_size = dmc_info->dmc_fw_size;
>  	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>  
>  	preempt_disable();
>  
>  	for (i = 0; i < fw_size; i++)
>  		intel_uncore_write_fw(&dev_priv->uncore, DMC_PROGRAM(i),
> -				      payload[i]);
> +				      dmc_info->payload[i]);
>  
>  	preempt_enable();
>  
> -	for (i = 0; i < dev_priv->dmc.mmio_count; i++) {
> -		intel_de_write(dev_priv, dev_priv->dmc.mmioaddr[i],
> -			       dev_priv->dmc.mmiodata[i]);
> +	for (i = 0; i < dmc_info->mmio_count; i++) {
> +		intel_de_write(dev_priv, dmc_info->mmioaddr[i],
> +			       dmc_info->mmiodata[i]);
>  	}
>  
>  	dev_priv->dmc.dc_state = 0;
> @@ -401,13 +402,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  			       size_t rem_size)
>  {
>  	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
> +	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
>  	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
>  	const u32 *mmioaddr, *mmiodata;
>  	u32 mmio_count, mmio_count_max;
>  	u8 *payload;
>  
> -	BUILD_BUG_ON(ARRAY_SIZE(dmc->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
> -		     ARRAY_SIZE(dmc->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
> +	BUILD_BUG_ON(ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
> +		     ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
>  
>  	/*
>  	 * Check if we can access common fields, we will checkc again below
> @@ -463,16 +465,10 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  	}
>  
>  	for (i = 0; i < mmio_count; i++) {
> -		if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
> -		    mmioaddr[i] > DMC_MMIO_END_RANGE) {
> -			drm_err(&i915->drm, "DMC firmware has wrong mmio address 0x%x\n",
> -				mmioaddr[i]);
> -			return 0;
> -		}

Why the checks above were dropped?

> -		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
> -		dmc->mmiodata[i] = mmiodata[i];
> +		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
> +		dmc_info->mmiodata[i] = mmiodata[i];
>  	}
> -	dmc->mmio_count = mmio_count;
> +	dmc_info->mmio_count = mmio_count;
>  
>  	rem_size -= header_len_bytes;
>  
> @@ -485,16 +481,16 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
>  		return 0;
>  	}
> -	dmc->dmc_fw_size = dmc_header->fw_size;
> +	dmc_info->dmc_fw_size = dmc_header->fw_size;

Did not read the next patches but the if possible would be better to rename dmc_info to dmc_main_info or dmc_pipe_info when possible.

>  
> -	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
> -	if (!dmc->dmc_payload) {
> +	dmc_info->payload = kmalloc(payload_size, GFP_KERNEL);
> +	if (!dmc_info->payload) {
>  		drm_err(&i915->drm, "Memory allocation failed for dmc payload\n");
>  		return 0;
>  	}
>  
>  	payload = (u8 *)(dmc_header) + header_len_bytes;
> -	memcpy(dmc->dmc_payload, payload, payload_size);
> +	memcpy(dmc_info->payload, payload, payload_size);
>  
>  	return header_len_bytes + payload_size;
>  
> @@ -829,5 +825,5 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
>  	intel_dmc_ucode_suspend(dev_priv);
>  	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
>  
> -	kfree(dev_priv->dmc.dmc_payload);
> +	kfree(dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 4c22f567b61b..b747cc9bf6a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -16,17 +16,27 @@ struct drm_i915_private;
>  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
>  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
>  
> +enum {
> +	DMC_FW_MAIN = 0,
> +	DMC_FW_MAX
> +};
> +
>  struct intel_dmc {
>  	struct work_struct work;
>  	const char *fw_path;
>  	u32 required_version;
>  	u32 max_fw_size; /* bytes */
> -	u32 *dmc_payload;
> -	u32 dmc_fw_size; /* dwords */
>  	u32 version;
> -	u32 mmio_count;
> -	i915_reg_t mmioaddr[20];
> -	u32 mmiodata[20];
> +	struct dmc_fw_info {
> +		u32 mmio_count;
> +		i915_reg_t mmioaddr[20];
> +		u32 mmiodata[20];
> +		u32 dmc_offset;
> +		u32 start_mmioaddr;

dmc_offset and start_mmioaddr are added but not used here. I guess it will in the next patches so please add it only when used.

> +		u32 dmc_fw_size; /*dwords */
> +		u32 *payload;
> +	} dmc_info[DMC_FW_MAX];
> +
>  	u32 dc_state;
>  	u32 target_dc_state;
>  	u32 allowed_dc_mask;

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
