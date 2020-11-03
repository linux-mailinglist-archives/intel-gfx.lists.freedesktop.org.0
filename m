Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4650A2A574B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 22:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286FE6E8D5;
	Tue,  3 Nov 2020 21:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489ED6E8D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 21:41:26 +0000 (UTC)
IronPort-SDR: CsoTENQugIXBCcU81fo8PFsXZSmGmxJ/XqypZCpeJpHs3Ub1Je9eSExHZ+WSBJJxQ7Pnp0zXMA
 9sTIM5cZckyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="165624162"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="165624162"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 13:41:25 -0800
IronPort-SDR: y+1TSE/ob+sWh8OwbaqZRFrlfsUgQBvvtIilsYupHjYJpaX3ecOk6P2MV7u0xvbmzk+FzImVvq
 FN1YCc27wxbQ==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="538643862"
Received: from yuchechi-mobl.amr.corp.intel.com (HELO [10.254.64.186])
 ([10.254.64.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 13:41:25 -0800
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201103015935.3398-1-swathi.dhanavanthri@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <16656777-a233-a92f-a438-b94ac17afc1a@intel.com>
Date: Tue, 3 Nov 2020 13:41:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201103015935.3398-1-swathi.dhanavanthri@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl, rkl,
 dg1: Apply WA_1406941453 to TGL, RKL and DG1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/2/20 5:59 PM, Swathi Dhanavanthri wrote:
> This workaround is applicable only for tgl,rkl and dg1.
>
> Bspec: 52890, 53273, 53508.
>
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 +++++-------
>   1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index fed9503a7c4e..45c082070bd9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1768,6 +1768,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   		 */
>   		wa_write_or(wal, GEN7_FF_THREAD_MODE,
>   			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> +
> +		/* Wa_1406941453:tgl,rkl,dg1 */
> +		wa_masked_en(wal,
> +			     GEN10_SAMPLER_MODE,
> +			     ENABLE_SMALLPL);
>   	}
>   
>   	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> @@ -1806,13 +1811,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   			     FF_DOP_CLOCK_GATE_DISABLE);
>   	}
>   
> -	if (IS_GEN(i915, 12)) {
> -		/* Wa_1406941453:gen12 */
> -		wa_masked_en(wal,
> -			     GEN10_SAMPLER_MODE,
> -			     ENABLE_SMALLPL);
> -	}
> -
>   	if (IS_GEN(i915, 11)) {
>   		/* This is not an Wa. Enable for better image quality */
>   		wa_masked_en(wal,

Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>

-Clint


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
