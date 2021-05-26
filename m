Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A665D391CD0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 18:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D4B6E970;
	Wed, 26 May 2021 16:17:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B076E970
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 16:17:28 +0000 (UTC)
IronPort-SDR: eOgrXTS4SxyTb1uPNeAcUqJ7vZc110tEt3JSFqzPoNtvtnGAqbiWgN16MQ6vg89SatA2aryoW9
 rAHOTVV8Q8Tg==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="199453885"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="199453885"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 09:17:26 -0700
IronPort-SDR: uuCPjB0d6FywPPVCz8aBMvbcV9iylTL1n1zNSc6iUAlcY9EAVZSQhH4IVIhorOovs4KgenQsPd
 jdnJ9HUR4qMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="444147567"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 26 May 2021 09:17:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 09:17:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 09:17:24 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.008;
 Wed, 26 May 2021 09:17:24 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/7] drm/i915/dmc: Introduce DMC_FW_MAIN
Thread-Index: AQHXUNNbnQjXM3giE0GK2ZWFM67aIKrzo6QAgAJNRpA=
Date: Wed, 26 May 2021 16:17:24 +0000
Message-ID: <97bd065048e3481d90e07de814d74635@intel.com>
References: <20210524193032.3015-1-anusha.srivatsa@intel.com>
 <20210524193032.3015-5-anusha.srivatsa@intel.com>
 <f86309fef7fa7dd19cee5d29b8a9f3304ec885ef.camel@intel.com>
In-Reply-To: <f86309fef7fa7dd19cee5d29b8a9f3304ec885ef.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
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



> -----Original Message-----
> From: Souza, Jose <jose.souza@intel.com>
> Sent: Monday, May 24, 2021 2:59 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/dmc: Introduce
> DMC_FW_MAIN
> 
> On Mon, 2021-05-24 at 12:30 -0700, Anusha Srivatsa wrote:
> > This is a prep patch for Pipe DMC plugging.
> >
> > Add dmc_info struct in intel_dmc to have all common fields shared
> > between all DMC's in the package.
> > Add DMC_FW_MAIN(dmc_id 0) to refer to the blob.
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 44
> > +++++++++++-------------  drivers/gpu/drm/i915/display/intel_dmc.h |
> > 20 ++++++++---
> >  2 files changed, 35 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index f9a0f194f9cf..16bfbca6c1ed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -239,7 +239,7 @@ struct stepping_info {
> >
> >  bool intel_dmc_has_payload(struct drm_i915_private *i915)  {
> > -	return i915->dmc.dmc_payload;
> > +	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
> >  }
> >
> >  static const struct stepping_info skl_stepping_info[] = { @@ -316,7
> > +316,8 @@ static void gen9_set_dc_state_debugmask(struct
> drm_i915_private *dev_priv)
> >   */
> >  void intel_dmc_load_program(struct drm_i915_private *dev_priv)  {
> > -	u32 *payload = dev_priv->dmc.dmc_payload;
> > +	struct intel_dmc *dmc = &dev_priv->dmc;
> > +	struct dmc_fw_info *dmc_info = &dmc-
> >dmc_info[DMC_FW_MAIN];
> >  	u32 i, fw_size;
> >
> >  	if (!HAS_DMC(dev_priv)) {
> > @@ -325,26 +326,26 @@ void intel_dmc_load_program(struct
> drm_i915_private *dev_priv)
> >  		return;
> >  	}
> >
> > -	if (!intel_dmc_has_payload(dev_priv)) {
> > +	if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
> >  		drm_err(&dev_priv->drm,
> >  			"Tried to program CSR with empty payload\n");
> >  		return;
> >  	}
> >
> > -	fw_size = dev_priv->dmc.dmc_fw_size;
> > +	fw_size = dmc_info->dmc_fw_size;
> >  	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
> >
> >  	preempt_disable();
> >
> >  	for (i = 0; i < fw_size; i++)
> >  		intel_uncore_write_fw(&dev_priv->uncore,
> DMC_PROGRAM(i),
> > -				      payload[i]);
> > +				      dmc_info->payload[i]);
> >
> >  	preempt_enable();
> >
> > -	for (i = 0; i < dev_priv->dmc.mmio_count; i++) {
> > -		intel_de_write(dev_priv, dev_priv->dmc.mmioaddr[i],
> > -			       dev_priv->dmc.mmiodata[i]);
> > +	for (i = 0; i < dmc_info->mmio_count; i++) {
> > +		intel_de_write(dev_priv, dmc_info->mmioaddr[i],
> > +			       dmc_info->mmiodata[i]);
> >  	}
> >
> >  	dev_priv->dmc.dc_state = 0;
> > @@ -401,13 +402,14 @@ static u32 parse_dmc_fw_header(struct
> intel_dmc *dmc,
> >  			       size_t rem_size)
> >  {
> >  	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915),
> > dmc);
> > +	struct dmc_fw_info *dmc_info = &dmc-
> >dmc_info[DMC_FW_MAIN];
> >  	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
> >  	const u32 *mmioaddr, *mmiodata;
> >  	u32 mmio_count, mmio_count_max;
> >  	u8 *payload;
> >
> > -	BUILD_BUG_ON(ARRAY_SIZE(dmc->mmioaddr) <
> DMC_V3_MAX_MMIO_COUNT ||
> > -		     ARRAY_SIZE(dmc->mmioaddr) <
> DMC_V1_MAX_MMIO_COUNT);
> > +	BUILD_BUG_ON(ARRAY_SIZE(dmc_info->mmioaddr) <
> DMC_V3_MAX_MMIO_COUNT ||
> > +		     ARRAY_SIZE(dmc_info->mmioaddr) <
> DMC_V1_MAX_MMIO_COUNT);
> >
> >  	/*
> >  	 * Check if we can access common fields, we will checkc again below
> > @@ -463,16 +465,10 @@ static u32 parse_dmc_fw_header(struct
> intel_dmc *dmc,
> >  	}
> >
> >  	for (i = 0; i < mmio_count; i++) {
> > -		if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
> > -		    mmioaddr[i] > DMC_MMIO_END_RANGE) {
> > -			drm_err(&i915->drm, "DMC firmware has wrong
> mmio address 0x%x\n",
> > -				mmioaddr[i]);
> > -			return 0;
> > -		}
> 
> Why the checks above were dropped?

The DMC_MMIO_START_RANGE And DMC_MMIO_END_RANGE were hardcoded values. But starting from gen12, they can be different for different platforms. The best way to grab them is from the blob itself. The above check does not make sense in that scenario.

> > -		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
> > -		dmc->mmiodata[i] = mmiodata[i];
> > +		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
> > +		dmc_info->mmiodata[i] = mmiodata[i];
> >  	}
> > -	dmc->mmio_count = mmio_count;
> > +	dmc_info->mmio_count = mmio_count;
> >
> >  	rem_size -= header_len_bytes;
> >
> > @@ -485,16 +481,16 @@ static u32 parse_dmc_fw_header(struct
> intel_dmc *dmc,
> >  		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n",
> payload_size);
> >  		return 0;
> >  	}
> > -	dmc->dmc_fw_size = dmc_header->fw_size;
> > +	dmc_info->dmc_fw_size = dmc_header->fw_size;
> 
> Did not read the next patches but the if possible would be better to rename
> dmc_info to dmc_main_info or dmc_pipe_info when possible.

dmc_info here will be referring to both main_dmc and pipe_dmc and hence named generic. The patches after this patch make more sense in that aspect.

> >
> > -	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
> > -	if (!dmc->dmc_payload) {
> > +	dmc_info->payload = kmalloc(payload_size, GFP_KERNEL);
> > +	if (!dmc_info->payload) {
> >  		drm_err(&i915->drm, "Memory allocation failed for dmc
> payload\n");
> >  		return 0;
> >  	}
> >
> >  	payload = (u8 *)(dmc_header) + header_len_bytes;
> > -	memcpy(dmc->dmc_payload, payload, payload_size);
> > +	memcpy(dmc_info->payload, payload, payload_size);
> >
> >  	return header_len_bytes + payload_size;
> >
> > @@ -829,5 +825,5 @@ void intel_dmc_ucode_fini(struct drm_i915_private
> *dev_priv)
> >  	intel_dmc_ucode_suspend(dev_priv);
> >  	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
> >
> > -	kfree(dev_priv->dmc.dmc_payload);
> > +	kfree(dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h
> > b/drivers/gpu/drm/i915/display/intel_dmc.h
> > index 4c22f567b61b..b747cc9bf6a7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > @@ -16,17 +16,27 @@ struct drm_i915_private;
> >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> >
> > +enum {
> > +	DMC_FW_MAIN = 0,
> > +	DMC_FW_MAX
> > +};
> > +
> >  struct intel_dmc {
> >  	struct work_struct work;
> >  	const char *fw_path;
> >  	u32 required_version;
> >  	u32 max_fw_size; /* bytes */
> > -	u32 *dmc_payload;
> > -	u32 dmc_fw_size; /* dwords */
> >  	u32 version;
> > -	u32 mmio_count;
> > -	i915_reg_t mmioaddr[20];
> > -	u32 mmiodata[20];
> > +	struct dmc_fw_info {
> > +		u32 mmio_count;
> > +		i915_reg_t mmioaddr[20];
> > +		u32 mmiodata[20];
> > +		u32 dmc_offset;
> > +		u32 start_mmioaddr;
> 
> dmc_offset and start_mmioaddr are added but not used here. I guess it will
> in the next patches so please add it only when used.

Sure. Checking this again and make the change.

Thanks for the feedback.
Anusha
> > +		u32 dmc_fw_size; /*dwords */
> > +		u32 *payload;
> > +	} dmc_info[DMC_FW_MAX];
> > +
> >  	u32 dc_state;
> >  	u32 target_dc_state;
> >  	u32 allowed_dc_mask;

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
