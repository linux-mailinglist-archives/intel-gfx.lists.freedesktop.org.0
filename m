Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F522430A7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 23:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996E36E127;
	Wed, 12 Aug 2020 21:53:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBCA6E127
 for <Intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 21:53:51 +0000 (UTC)
IronPort-SDR: ZnszVuMR1XWnJ2i3iKOldrxwt8kLFlCwLVogGO8osRaDlRdbn2GjuUZvpYgZeUmRGFFvQcBYQY
 q3ttQCDtYFKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9711"; a="172131123"
X-IronPort-AV: E=Sophos;i="5.76,305,1592895600"; d="scan'208";a="172131123"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2020 14:53:50 -0700
IronPort-SDR: gzD+H+OcwzqwC4G/lwsq4Pbs2lR9NED/qskvu4XjdWqWJxPz6KnT4ptBFnQ8LGOwz/C4a2YIsL
 SJZmc7ecyYyA==
X-IronPort-AV: E=Sophos;i="5.76,305,1592895600"; d="scan'208";a="469977446"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2020 14:53:50 -0700
Date: Wed, 12 Aug 2020 14:53:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <20200812215349.GD2903088@mdroper-desk1.amr.corp.intel.com>
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805232920.15085-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Implement WA_1406941453
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 05, 2020 at 04:29:20PM -0700, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Enable HW Default flip for small PL.
> 
> bspec: 52890
> bspec: 53508
> bspec: 53273
> 
> v2: rebase to drm-tip
> Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index cef1c122696f..cb02813c5e92 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -639,6 +639,9 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	       FF_MODE2_GS_TIMER_MASK | FF_MODE2_TDS_TIMER_MASK,
>  	       FF_MODE2_GS_TIMER_224  | FF_MODE2_TDS_TIMER_128,
>  	       0);
> +
> +	/* Wa_1406941453:gen12 */
> +	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE, ENABLE_SMALLPL);

Is this register part of the engine context on gen12?  I see it in the
context for ICL (bspec 18907), but not for TGL (46255).  So I think this
should either be a GT or engine workaround, not a context workaround,
right?

>  }
>  
>  static void
> @@ -1522,6 +1525,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>  		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
>  				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
>  				  RING_FORCE_TO_NONPRIV_RANGE_4);
> +
> +		/* Wa_1406941453:gen12 */
> +		whitelist_reg(w, GEN10_SAMPLER_MODE);

Do we need to whitelist this?  If we're applying the workaround in the
kernel then the UMD shouldn't need to worry about it if they don't
otherwise have access or need to change the register value.


Matt

>  		break;
>  
>  	case VIDEO_DECODE_CLASS:
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2b403df03404..494b2e1e358e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9314,6 +9314,7 @@ enum {
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
>  
>  #define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
> +#define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  
>  /* IVYBRIDGE DPF */
> -- 
> 2.27.0
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
