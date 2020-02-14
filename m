Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A89CC15EEC1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 18:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7876E852;
	Fri, 14 Feb 2020 17:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3A06FB64
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 17:42:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 09:42:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="281889221"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by FMSMGA003.fm.intel.com with SMTP; 14 Feb 2020 09:42:42 -0800
Date: Fri, 14 Feb 2020 09:42:42 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <20200214174242.GP2014153@mdroper-desk1.amr.corp.intel.com>
References: <20200212165707.11143-1-mika.kuoppala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212165707.11143-1-mika.kuoppala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use engine wa list for
 Wa_1607090982
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

On Wed, Feb 12, 2020 at 06:57:07PM +0200, Mika Kuoppala wrote:
> This is in mcr range of register, thus we can only verify
> it through mmio. Use engine wa list with mcr range verification
> skip.
> 
> Fixes: 0db1a5f8706a ("drm/i915: Implement Wa_1607090982")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

The headline of this patch is out of sync with the actual workaround
number being used in the code below and in the bspec (same as the patch
that this Fixes).  The bspec name for this is Wa_1606931601.

It wasn't originally obvious since the workaround numbers don't match,
but Anusha already has a patch in flight for this workaround here:
https://patchwork.freedesktop.org/series/72433/#rev5

The main difference is that it looks like your patch is adding the
workaround to the "A0 only" section of the engine workarounds function,
whereas Anusha's is adding it for all steppings, which I think is what
the bspec calls for.  Do you have additional information that this
should be A0-specific, or was that just an oversight?


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 62b43f538a56..ba86511f1ef9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -598,9 +598,6 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
>  	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
>  			    FF_MODE2_TDS_TIMER_MASK);
> -
> -	/* Wa_1606931601:tgl */
> -	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
>  }
>  
>  static void
> @@ -1360,6 +1357,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal,
>  			    GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> +
> +		/* Wa_1606931601:tgl */
> +		wa_masked_en(wal,
> +			     GEN7_ROW_CHICKEN2,
> +			     GEN12_DISABLE_EARLY_READ);
>  	}
>  
>  	if (IS_GEN(i915, 11)) {
> -- 
> 2.17.1
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
