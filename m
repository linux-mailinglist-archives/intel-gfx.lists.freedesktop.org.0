Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB8B207B3B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 20:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A636E32B;
	Wed, 24 Jun 2020 18:11:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA0A6E32B
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 18:11:50 +0000 (UTC)
IronPort-SDR: sDwOsGgufhO5kgv2tLpk0r+isY/YEn/R1yU94iGDo1NxH2yOoIVi8WingAD6SVjcF8oWoB4OpH
 AG45IxXE95Ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="162672657"
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="162672657"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 11:11:49 -0700
IronPort-SDR: fI/NVucb7oWKEZwheAEMsgMt8uFqmDoe6dBRgdy3SrDpVGIADD2Wo7eYMQSupcqLDpY7PjBXly
 kAdJ/EGmQYSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="354212286"
Received: from vashok-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.252.132.244])
 by orsmga001.jf.intel.com with SMTP; 24 Jun 2020 11:11:49 -0700
Date: Wed, 24 Jun 2020 11:11:49 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: clinton.a.taylor@intel.com, Intel-gfx@lists.freedesktop.org
Message-ID: <20200624181149.GA25763@msatwood-mobl>
References: <20200611233108.19205-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611233108.19205-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Implement WA_1406941453
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 11, 2020 at 04:31:08PM -0700, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Enable HW Default flip for small PL.
> 
> bspec: 52890
> bspec: 53508
> bspec: 53273
> 
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 2da366821dda..0b9091c05e06 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -628,6 +628,9 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
>  			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
>  			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
> +
> +	/* Wa_1406941453:gen12 */
> +	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE, ENABLE_SMALLPL);
>  }
>  
>  static void
> @@ -1500,6 +1503,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>  		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
>  				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
>  				  RING_FORCE_TO_NONPRIV_RANGE_4);
> +
> +		/* Wa_1406941453:gen12 */
> +		whitelist_reg(w, GEN10_SAMPLER_MODE);
>  		break;
>  
>  	case VIDEO_DECODE_CLASS:
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 19e1fed198c3..fbb095a94b3a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9223,6 +9223,7 @@ enum {
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
>  
>  #define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
> +#define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  
>  /* IVYBRIDGE DPF */
> -- 
> 2.26.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
