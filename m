Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F04D78B71A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 20:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99B010E32A;
	Mon, 28 Aug 2023 18:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FBAB10E329
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 18:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693246602; x=1724782602;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=b6umVKDIIZXmDYmGAxrf3XBl1cDllTRCw6OxWDO3228=;
 b=DFk3oUmd5VTsnlCMPPa+n9aHFP8sbhLP3JrvVLpnyP5ZTL21HJfBEh/O
 bAyDr0SDaWQsu5VE9PLM2xkuq/V0nbDSsgd+vbuQOBfBIFTOshsLYqhdz
 z4+57eYsH9qlXfQb6Un5suoKnQKGtO7KBCz9gV1hrlVjHEHxRypxAvk/t
 L+/uHKf0ud/I9vyFZl/JYRvyocpryX5Q25JfDNkesP89bPwsAXnUX4am3
 VRliUGHxz4c/YPWli9ynQQuC4o+y3J8e8K8oIGiincJfS5pMRJinkElye
 3rj1aeh8jGRVg8+8qSRC9Ndne2JdKp09FUViTi1Td9O+NrPpMEwN077vO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="372584287"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="372584287"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 11:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="773354339"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="773354339"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.213.195])
 ([10.251.213.195])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 11:16:37 -0700
Message-ID: <ff521acf-c1a8-3708-1c64-9bad2d4d9c09@linux.intel.com>
Date: Mon, 28 Aug 2023 20:16:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14016712196
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/28/2023 8:34 AM, Tejas Upadhyay wrote:
> Now this workaround is permanent workaround on MTL and DG2,
> earlier we used to apply on MTL A0 step only.
> VLK-45480

Please remove the internal VLK reference. Otherwise this is

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

>
> Fixes: d922b80b1010 ("drm/i915/gt: Add workaround 14016712196")
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 6187b25b67ab..0143445dba83 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
>   static int mtl_dummy_pipe_control(struct i915_request *rq)
>   {
>   	/* Wa_14016712196 */
> -	if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> -	    IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 71)) ||
> +	    IS_DG2(rq->i915)) {
>   		u32 *cs;
>   
>   		/* dummy PIPE_CONTROL + depth flush */
> @@ -810,8 +810,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   		     PIPE_CONTROL_FLUSH_ENABLE);
>   
>   	/* Wa_14016712196 */
> -	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> -	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
>   		/* dummy PIPE_CONTROL + depth flush */
>   		cs = gen12_emit_pipe_control(cs, 0,
>   					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
