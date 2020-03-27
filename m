Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB74195EED
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 20:45:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6CE6EA79;
	Fri, 27 Mar 2020 19:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE2E16EA73
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 19:45:30 +0000 (UTC)
IronPort-SDR: lCqsAPW3F+sod/smG6ivGp1ESY6e/nCJbd+XXM6rfE76f8TqL3/z4dGuq+9QBZpPDFA8d3HrRc
 i72748ORmHMQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 12:45:30 -0700
IronPort-SDR: mYpKskuTT0RFdkPJinngfRYe9ewGtMoGyvy8ZFTccZ0YyDwMYi1GWz+X+tsOxhfee32kKW/1wX
 6x8YoZOsOCZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="421209555"
Received: from rantogno-mobl4.jf.intel.com (HELO
 rantogno-mobl4.amr.corp.intel.com) ([10.54.72.142])
 by orsmga005.jf.intel.com with SMTP; 27 Mar 2020 12:45:30 -0700
Date: Fri, 27 Mar 2020 12:45:30 -0700
From: Rafael Antognolli <rafael.antognolli@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <20200327194530.wm3dlgseis7dfxp6@rantogno-mobl4.amr.corp.intel.com>
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

FYI, this patch fixes some corruption I was seeing.

Tested-by: Rafael Antognolli <rafael.antognolli@intel.com>

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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
