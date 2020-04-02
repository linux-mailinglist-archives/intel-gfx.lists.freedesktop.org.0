Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B830D19CD0D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 00:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 651956E183;
	Thu,  2 Apr 2020 22:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09CF6E183
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 22:49:57 +0000 (UTC)
IronPort-SDR: dXc3t2QkGl943pKh9AqXrJH2IIkgTIGmY4Hj5RzGKa2WV0dx0qLz6eHr4VBu1wX/Ee5xUPHLSH
 eUuMcaqQHfCQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 15:49:56 -0700
IronPort-SDR: VQoOqHHumkS2NLwaLgb3UDXoV8PM4FifZVsqN2uo8FFaXjsV4xIGoRaQC86Ya4ZhaIykmwi1Wg
 RAddAJi6gOhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,337,1580803200"; d="scan'208";a="268178241"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga002.jf.intel.com with SMTP; 02 Apr 2020 15:49:56 -0700
Date: Thu, 2 Apr 2020 15:49:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <20200402224956.GE1610335@mdroper-desk1.amr.corp.intel.com>
References: <20200326234955.16155-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326234955.16155-1-swathi.dhanavanthri@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Make Wa_14010229206 permanent
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

On Thu, Mar 26, 2020 at 04:49:55PM -0700, Swathi Dhanavanthri wrote:
> This workaround now applies to all steppings, not just A0.
> Wa_1409085225 is a temporary A0-only W/A however it is
> identical to Wa_14010229206 and hence the combined workaround
> is made permanent.
> Bspec: 52890
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e96cc7fa0936..c3c42cf614a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1380,12 +1380,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			    GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
>  
> -		/*
> -		 * Wa_1409085225:tgl
> -		 * Wa_14010229206:tgl
> -		 */
> -		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> -
>  		/* Wa_1408615072:tgl */
>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>  			    VSUNIT_CLKGATE_DIS_TGL);
> @@ -1403,6 +1397,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
>  			     FF_DOP_CLOCK_GATE_DISABLE);

There should be a blank line here, but I can add that while applying.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Looks like CI results are back and clean now, so applied to dinq.
Thanks for the patch.


Matt

> +		/*
> +		 * Wa_1409085225:tgl
> +		 * Wa_14010229206:tgl
> +		 */
> +		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
>  	}
>  
>  	if (IS_GEN(i915, 11)) {
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
