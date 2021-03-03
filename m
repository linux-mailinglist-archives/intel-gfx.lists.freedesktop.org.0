Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2B732AF51
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 04:21:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC4B6E11A;
	Wed,  3 Mar 2021 03:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991E76E11A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 03:21:09 +0000 (UTC)
IronPort-SDR: 6JuVaYFKvn/3PcP3lj9I/4QkJ/5iBJldlqPxxV/8K7htIXfTHsCcHtpg8iEq8uXrx/lCP73QyK
 OJXhBAlKl5oA==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187143772"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="187143772"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:21:08 -0800
IronPort-SDR: 5X0HYmWMjmSSehp62/PeYCmkYoSKh5RPmKAZeSbP+odMbJXFh4fwlJkGEDtyKi1o0zhi1uIYm5
 dT1cGl7wrWeA==
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="369202978"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:21:08 -0800
Date: Tue, 2 Mar 2021 19:21:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210303032106.GE2690983@mdroper-desk1.amr.corp.intel.com>
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
 <20210303010728.3605269-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303010728.3605269-2-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/icl: add Wa_22010271021 for
 all gen11
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 02, 2021 at 05:07:26PM -0800, Lucas De Marchi wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> 
> Wa_22010271021 does not apply only to EHL, but to all gen11 platforms.

It also applies to a bunch of gen12 platforms; we already apply the same
workaround in an earlier block of the same function too to handle all of
them.  It's fine to keep the gen11 and gen12 copies separate and prevent
even more complicated if/else chains in this function that's already
overly-complicated, but you should probably just drop the ":gen11"
suffix on the code comment and you may want to tweak the commit message
here to indicate that we already have this handled properly for all the
gen12 platforms.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Bspec: 33450, 52887
> 
> Cc: Clinton Taylor <clinton.a.taylor@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index f6d9b849aa62..9e6e405aabac 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1820,11 +1820,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			    GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
>  
> -		/* Wa_22010271021:ehl */
> -		if (IS_JSL_EHL(i915))
> -			wa_masked_en(wal,
> -				     GEN9_CS_DEBUG_MODE1,
> -				     FF_DOP_CLOCK_GATE_DISABLE);
> +		/* Wa_22010271021:gen11 */
> +		wa_masked_en(wal,
> +			     GEN9_CS_DEBUG_MODE1,
> +			     FF_DOP_CLOCK_GATE_DISABLE);
>  	}
>  
>  	if (IS_GEN_RANGE(i915, 9, 12)) {
> -- 
> 2.30.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
