Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEF622D070
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA386E994;
	Fri, 24 Jul 2020 21:21:06 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6506E994
 for <Intel-GFX@lists.freedesktop.org>; Fri, 24 Jul 2020 21:21:04 +0000 (UTC)
IronPort-SDR: qp66F54kssEU9Agj8zK7PCQSarht5Tevz3nUe2e9y/7BjhjmwTyM9L8w/u2aX5sDqWJZENs9Xb
 REN2Vreor75A==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="150770772"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="150770772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:21:04 -0700
IronPort-SDR: 72CRl8xTW+RUE05AHqWUJ75PG//03ETIe4soaXzsJyD4niVNl9IYnJppTVvucNRi0FYIeqstXr
 XL+EwoghTUbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="363484283"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.229.237])
 ([10.212.229.237])
 by orsmga001.jf.intel.com with ESMTP; 24 Jul 2020 14:21:03 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200710213246.222179-1-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b23c6e84-7629-a257-fb55-303db76c7ef3@intel.com>
Date: Fri, 24 Jul 2020 14:21:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200710213246.222179-1-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct location of Wa_1408615072
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

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

On 7/10/2020 2:32 PM, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> The above workaround was added as an engine workaround not a GT
> workaround. Moved it to the correct location.
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 5726cd0a37e0..a6548a77439c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1191,6 +1191,12 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>   		wa_write_or(wal,
>   			    SLICE_UNIT_LEVEL_CLKGATE,
>   			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> +
> +	/* Wa_1408615072:tgl[a0] */
> +	/* Empirical testing shows this register is unaffected by engine reset. */
> +	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
> +		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +			    VSUNIT_CLKGATE_DIS_TGL);
>   }
>   
>   static void
> @@ -1648,10 +1654,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   		wa_write_or(wal,
>   			    GEN7_SARCHKMD,
>   			    GEN7_DISABLE_SAMPLER_PREFETCH);
> -
> -		/* Wa_1408615072:tgl */
> -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -			    VSUNIT_CLKGATE_DIS_TGL);
>   	}
>   
>   	if (IS_TIGERLAKE(i915)) {

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
