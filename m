Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4D5183BEC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 23:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059196E112;
	Thu, 12 Mar 2020 22:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CC86E112
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 22:07:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="266529736"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 12 Mar 2020 15:07:41 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.253]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.155]) with mapi id 14.03.0439.000;
 Thu, 12 Mar 2020 15:07:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 4/6] drm/i915: Add Wa_1406306137:icl,ehl
Thread-Index: AQHV98Fk8bd/1PqAtU6KPRuLlsTXKqhF+28A
Date: Thu, 12 Mar 2020 22:07:39 +0000
Message-ID: <0d02038c35e6bf5bbccccc56f2d000151f6f952e.camel@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
 <20200311162300.1838847-5-matthew.d.roper@intel.com>
In-Reply-To: <20200311162300.1838847-5-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <3749CC705884774CB3FDC2C66317D474@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915: Add Wa_1406306137:icl,ehl
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

On Wed, 2020-03-11 at 09:22 -0700, Matt Roper wrote:
> v2:
>  - Move to context workarounds.  ROW_CHICKEN4 is part of the context
>    image on gen11 (although it isn't on gen12).
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3bbd89294279..2318b55b9722 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -581,6 +581,9 @@ static void icl_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  	wa_write_masked_or(wal, IVB_FBC_RT_BASE_UPPER,
>  			   0, /* write-only register; skip validation
> */
>  			   0xFFFFFFFF);
> +
> +	/* Wa_1406306137:icl,ehl */
> +	wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);

The pre-gen12 definition of this registers don't have a masked access
at least here on this on BSpec 11492

>  }
>  
>  static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index 92ae96cf5b64..b6941da3b588 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9151,6 +9151,7 @@ enum {
>  
>  #define GEN9_ROW_CHICKEN4		_MMIO(0xe48c)
>  #define   GEN12_DISABLE_TDL_PUSH	REG_BIT(9)
> +#define   GEN11_DIS_PICK_2ND_EU		REG_BIT(7)
>  
>  #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
>  #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
