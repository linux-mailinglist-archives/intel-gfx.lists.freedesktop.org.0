Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BB54896F4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 12:06:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDF414A4E4;
	Mon, 10 Jan 2022 11:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11CF14A4E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 11:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641812814; x=1673348814;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2V0xccEfwrs13+0nBcOtD55fEeBRmatlfpd45VZZAts=;
 b=VKZ87qFqsXgXwmoTTLWyR4Noi7Tfhsglb4mODTfokjDW0Wu1Mph5Kne/
 DAN9kUJMU6lipHdELGRPMBPuNHieWV2EdpDqMEdugchFdiHY5taycact9
 lHBvbXR+t69pQqDfbbdfsMAnhh5KCPs/jCe6D0ghQ+15s5y4CC1B6rYeV
 n9L9PnFsUHO1EOcaiJaS8CqHw8XsWgKmCt1ofXM4goX5IKnFM6zAnnhpC
 p427H+n5Dz1fJ5SGbVpm+sunp+G6NTZ6t82/6L4ZS8vSUTRcUaea31OJ4
 s9RH3oRDI399b80soH8vEgFvx9aUbgsY2bbwS/X2sHV1Zh8fE/1ApBrEt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="267529650"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="267529650"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:06:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="528230148"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:06:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220108044055.3123418-3-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
 <20220108044055.3123418-3-matthew.d.roper@intel.com>
Date: Mon, 10 Jan 2022 13:06:49 +0200
Message-ID: <87pmozalyu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915: Parameterize PWRCTX_MAXCNT
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

On Fri, 07 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> Rather than having separate definitions for each engine, create a single
> parameterized macro that takes the engine base offset.  This will also
> ensure we get to the proper offset if we ever need to use these
> registers on newer platforms (where the media engine offsets have
> changed).
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 8 ++++----
>  drivers/gpu/drm/i915/i915_reg.h     | 6 +-----
>  2 files changed, 5 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index c3155ee58689..45891e6f0b98 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -449,10 +449,10 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
>  		enable_rc6 = false;
>  	}
>  
> -	if (!((intel_uncore_read(uncore, PWRCTX_MAXCNT_RCSUNIT) & IDLE_TIME_MASK) > 1 &&
> -	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VCSUNIT0) & IDLE_TIME_MASK) > 1 &&
> -	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_BCSUNIT) & IDLE_TIME_MASK) > 1 &&
> -	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VECSUNIT) & IDLE_TIME_MASK) > 1)) {
> +	if (!((intel_uncore_read(uncore, PWRCTX_MAXCNT(RENDER_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
> +	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(GEN6_BSD_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
> +	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(BLT_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
> +	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(VEBOX_RING_BASE)) & IDLE_TIME_MASK) > 1)) {
>  		drm_dbg(&i915->drm,
>  			"Engine Idle wait time not set properly.\n");
>  		enable_rc6 = false;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 86e459010465..23330faecf07 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9297,11 +9297,7 @@ enum {
>  #define	   RC6_CTX_IN_DRAM			(1 << 0)
>  #define  RC6_CTX_BASE				_MMIO(0xD48)
>  #define    RC6_CTX_BASE_MASK			0xFFFFFFF0
> -#define  PWRCTX_MAXCNT_RCSUNIT			_MMIO(0x2054)
> -#define  PWRCTX_MAXCNT_VCSUNIT0			_MMIO(0x12054)
> -#define  PWRCTX_MAXCNT_BCSUNIT			_MMIO(0x22054)
> -#define  PWRCTX_MAXCNT_VECSUNIT			_MMIO(0x1A054)
> -#define  PWRCTX_MAXCNT_VCSUNIT1			_MMIO(0x1C054)
> +#define  PWRCTX_MAXCNT(base)			_MMIO((base) + 0x54)
>  #define    IDLE_TIME_MASK			0xFFFFF
>  #define  FORCEWAKE				_MMIO(0xA18C)
>  #define  FORCEWAKE_VLV				_MMIO(0x1300b0)

-- 
Jani Nikula, Intel Open Source Graphics Center
