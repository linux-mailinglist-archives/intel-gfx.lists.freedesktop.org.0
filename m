Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1EA16376B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 00:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B116E426;
	Tue, 18 Feb 2020 23:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B896E426
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 23:44:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 15:44:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="258728730"
Received: from rantogno-mobl4.jf.intel.com (HELO
 rantogno-mobl4.amr.corp.intel.com) ([10.54.72.142])
 by fmsmga004.fm.intel.com with SMTP; 18 Feb 2020 15:44:49 -0800
Date: Tue, 18 Feb 2020 15:44:49 -0800
From: Rafael Antognolli <rafael.antognolli@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200218234449.w6zhjgzkfgjt6kg7@rantogno-mobl4.amr.corp.intel.com>
References: <20200218194710.2808-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218194710.2808-1-matthew.s.atwood@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt/tgl: implement Wa_1409085225
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

On Tue, Feb 18, 2020 at 02:47:10PM -0500, Matt Atwood wrote:
> Disable Push Constant buffer addition for A0, which can cause FIFO
> underruns.
> 
> Fix a minor white space issue while we're here.
> 
> Bspec: 52890
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_reg.h             |  3 +++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 887e0dc701f7..9bbd28aa9bde 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -580,6 +580,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  				     struct i915_wa_list *wal)
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
> @@ -598,6 +600,14 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
>  	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
>  			    FF_MODE2_TDS_TIMER_MASK);
> +
> +	/* Wa_1409085225:tgl
> +	 *
> +	 * Push Constant Buffer can case FIFO underruns on A0
> +	 */
> +	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))

Is this really only applicable to A stepping?

> +		WA_SET_BIT_MASKED(GEN9_ROW_CHICKEN4,
> +				  GEN12_DISABLE_TDL_PUSH);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b09c1d6dc0aa..a75a27ed63ce 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9153,6 +9153,9 @@ enum {
>  #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
>  #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
>  
> +#define GEN9_ROW_CHICKEN4		_MMIO(0x48c)

s/0x48c/0xe48c/ ?

> +#define  GEN12_DISABLE_TDL_PUSH		(1 << 9)
> +
>  #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
>  #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
>  
> -- 
> 2.21.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
