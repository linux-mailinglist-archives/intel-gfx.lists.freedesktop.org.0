Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E515A4ED0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 16:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108C410F13C;
	Mon, 29 Aug 2022 14:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1936E10F13C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 14:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661782078; x=1693318078;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=nYeJtdTnhtDmSMubtSQAS7MJgOFN7EZozqn9PrGPaKM=;
 b=BL1GvgqF/mLk15LKeLMVdee7NRda/5TdtK6ZUJJwOiBf60u6qCSrrdgA
 cfvSQKZZda0v6ePCUVgkAXuZ5neUbuE7II/N9IU0QiV2hcZM1KT18OF38
 XfAExq9n+3F7hUxir9DGW6y9MGSmMbPCNZ5Tzi+l79o3TdC809hQh+0yb
 VIY+234ebZhoWee8GxVipdoqT9FIic25Yj9Eh6ztp0nv/JdDBG9tR7zx1
 vPm6cSl8P9eFbvK6w1srVJEPn6vOl17Tc8BP1puZMjBSQwb4UMHvDhn8P
 oqI1DaFk+LPPZvkBydTjKqQOWyNua7jiG2IZF626+1huKtOPQP1imo3nU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275302985"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="275302985"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 07:04:14 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="640946976"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 07:04:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220823204155.8178-15-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-15-umesh.nerlige.ramappa@intel.com>
Date: Mon, 29 Aug 2022 17:04:06 +0300
Message-ID: <8735dff8o9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 14/19] drm/i915/perf: Add Wa_1608133521:dg2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 Aug 2022, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
> DG2 introduces 64 bit counters and OA reports that have 64 bit values
> for fields in the report header - report_id, timestamp, context_id and
> gpu ticks. i915 uses report_id, timestamp and context_id to check for
> valid reports.
>
> In some DG2 variants, only the lower dwords for timestamp, report_id and
> context_id are accessible. Add workaround for such reports.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index a28f07923d8f..a858ce57e465 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -310,7 +310,7 @@ static u32 i915_oa_max_sample_rate = 100000;
>   * be used as a mask to align the OA tail pointer. In some of the
>   * formats, R is used to denote reserved field.
>   */
> -static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
> +static struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {

Can't do this. This is shared between devices, and once you make it
mutable and change it, you'll change it for *all* devices.

Your options are having const data for all variants you need, or you
make a device specific copy and modify. The former is generally better
if you usually don't need to modify it.

BR,
Jani.


>  	[I915_OA_FORMAT_A13]	    = { 0, 64 },
>  	[I915_OA_FORMAT_A29]	    = { 1, 128 },
>  	[I915_OA_FORMAT_A13_B8_C8]  = { 2, 128 },
> @@ -4746,6 +4746,13 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>  		/* Wa_16010703925:dg2 */
>  		clear_bit(I915_OAR_FORMAT_A36u64_B8_C8, perf->format_mask);
>   	}
> +
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_FOREVER)) {
> +		/* Wa_1608133521:dg2 */
> +		oa_formats[I915_OAR_FORMAT_A36u64_B8_C8].header = HDR_32_BIT;
> +		oa_formats[I915_OA_FORMAT_A38u64_R2u64_B8_C8].header = HDR_32_BIT;
> +	}
>  }
>  
>  static void i915_perf_init_info(struct drm_i915_private *i915)

-- 
Jani Nikula, Intel Open Source Graphics Center
