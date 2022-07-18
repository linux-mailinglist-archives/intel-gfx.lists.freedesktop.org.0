Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5325783A4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 15:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6266B0F7F;
	Mon, 18 Jul 2022 13:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D460DB0F7E;
 Mon, 18 Jul 2022 13:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658150656; x=1689686656;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qqcHWk/lAUf+5mgRAPx2mVBoNbfUdleZV6DkpswyZto=;
 b=RjO7RR1VrM7epYWK2dQETnTHrxGzZXw2yDocb/Q06dlualy3qtJ7MHoH
 dzRnW9u/DmYRZHJ7aJiJ+H4NVTOVvnjsQuKND4KRvbNASYuTxEqeSLNGB
 2KzLn11m+ntq7qfAg618AxdXd2U8313PaZg3fiYIh0LDwstCY0FBsNiDw
 yHMqYharsZOAGVSu2ECKoC4qyLbcW/v8rmkkyn87jHviW+um3fiRxxPk0
 npMDUanORgXTMOAMtLlLA06S+M0eJO+lzQqxi06MRjRpYTZg/kkdxhInV
 L+asQX7/jL6Zdeb6CWHcBqZLBGFlDG8eS/r6bTEocOXPbK++OOTVdFjeX Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="286235290"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="286235290"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 06:24:07 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="686733003"
Received: from smyint-mobl1.amr.corp.intel.com (HELO [10.212.107.15])
 ([10.212.107.15])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 06:24:04 -0700
Message-ID: <f4e26591-a680-6557-c91c-63f6061bfd2d@linux.intel.com>
Date: Mon, 18 Jul 2022 14:24:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <cover.1657800199.git.mchehab@kernel.org>
 <44ec6a01ef2e82184abbb075b9c8a09297fa120c.1657800199.git.mchehab@kernel.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <44ec6a01ef2e82184abbb075b9c8a09297fa120c.1657800199.git.mchehab@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 03/21] drm/i915/gt: Invalidate TLB of the
 OA unit at TLB invalidations
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@redhat.com>, stable@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/07/2022 13:06, Mauro Carvalho Chehab wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> Ensure that the TLB of the OA unit is also invalidated
> on gen12 HW, as just invalidating the TLB of an engine is not
> enough.
> 
> Cc: stable@vger.kernel.org
> Fixes: 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing store")
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Acked-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
> 
> To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
> See [PATCH v2 00/21] at: https://lore.kernel.org/all/cover.1657800199.git.mchehab@kernel.org/
> 
>   drivers/gpu/drm/i915/gt/intel_gt.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index c4d43da84d8e..1d84418e8676 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -11,6 +11,7 @@
>   #include "pxp/intel_pxp.h"
>   
>   #include "i915_drv.h"
> +#include "i915_perf_oa_regs.h"
>   #include "intel_context.h"
>   #include "intel_engine_pm.h"
>   #include "intel_engine_regs.h"
> @@ -969,6 +970,15 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>   		awake |= engine->mask;
>   	}
>   
> +	/* Wa_2207587034:tgl,dg1,rkl,adl-s,adl-p */
> +	if (awake &&
> +	    (IS_TIGERLAKE(i915) ||
> +	     IS_DG1(i915) ||
> +	     IS_ROCKETLAKE(i915) ||
> +	     IS_ALDERLAKE_S(i915) ||
> +	     IS_ALDERLAKE_P(i915)))
> +		intel_uncore_write_fw(uncore, GEN12_OA_TLB_INV_CR, 1);
> +
>   	spin_unlock_irq(&uncore->lock);
>   
>   	for_each_engine_masked(engine, gt, awake, tmp) {
