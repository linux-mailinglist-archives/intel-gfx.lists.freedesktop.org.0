Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1464165298
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 23:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9AD6E881;
	Wed, 19 Feb 2020 22:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52CC46E881
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 22:38:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 14:38:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="224651716"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga007.jf.intel.com with SMTP; 19 Feb 2020 14:38:39 -0800
Date: Wed, 19 Feb 2020 14:38:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200219223839.GG2733348@mdroper-desk1.amr.corp.intel.com>
References: <20200219190529.10502-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219190529.10502-1-matthew.s.atwood@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: add Wa_1409085225,
 Wa_14010229206
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

On Wed, Feb 19, 2020 at 02:05:29PM -0500, Matt Atwood wrote:
> Disable Push Constant buffer addition, which can cause FIFO
> underruns.
> 
> Fix a minor white space issue while we're here.
> 
> v2: typos, add additional Wa reference
> 
> Bspec: 52890
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 3 +++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 887e0dc701f7..0681e64be741 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -580,6 +580,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  				     struct i915_wa_list *wal)

According to bspec page 46255, this register isn't part of the TGL
context image, so ctx_workarounds_init isn't the right place to handle
this.  The next question is whether this is a general GT workaround or a
specific engine workaround...in this case, 0xE48C falls in one of the
render engine forcewake ranges (0xE000-0xE8FF -- see bspec page 52078)
so rcs_engine_wa_init() is where we'd actually want to take care of
this.  That will ensure that the workaround gets re-applied when we
reset the render engine without doing a full GPU reset.


>  {
> +	struct drm_i915_private *i915 = engine->i915;
>  	u32 val;
>  
>  	/* Wa_1409142259:tgl */
> @@ -590,6 +591,7 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	val = intel_uncore_read(engine->uncore, FF_MODE2);
>  	val &= ~FF_MODE2_TDS_TIMER_MASK;
>  	val |= FF_MODE2_TDS_TIMER_128;
> +
>  	/*
>  	 * FIXME: FF_MODE2 register is not readable till TGL B0. We can
>  	 * enable verification of WA from the later steppings, which enables
> @@ -598,6 +600,13 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
>  	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
>  			    FF_MODE2_TDS_TIMER_MASK);
> +
> +	/*
> +	 * Wa_1409085225:tgl
> +	 * Wa_14010229206:tgl
> +	 * Push Constant Buffer can cause FIFO underruns on tgl

The description in the bspec says that it can cause an overflow rather
than an underrun.

Actually, I'm not sure whether it's worth even mentioning this here
since the things that's overflowing isn't something that our kernel
driver has any direct interaction with.  I.e., this FIFO is completely
different than the display FIFO that underruns when we have watermark
issues.


> +	 */
> +	WA_SET_BIT_MASKED(GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b09c1d6dc0aa..70cbe576fdfa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9153,6 +9153,9 @@ enum {
>  #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
>  #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
>  
> +#define GEN9_ROW_CHICKEN4		_MMIO(0xe48c)
> +#define  GEN12_DISABLE_TDL_PUSH		(1 << 9)

Even though many of the registers in this area of the file use the old
form, the preferred style for new registers is to use REG_BIT(9).  See
the comments at the top of the file for details.


Matt

> +
>  #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
>  #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
>  
> -- 
> 2.21.1
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
