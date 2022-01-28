Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6FE49FE7B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 17:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B789A10E802;
	Fri, 28 Jan 2022 16:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA77010E6A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643388873; x=1674924873;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=E67UHPgkGPtR/GBW+MXTs/DsrN2H9n/0diES4IGeZNg=;
 b=R+XugDSw+YZdDZrMAI+AI1EsdG4P7NSw1aN3AVHmAsEolqjKUTniiSNi
 GJHIX6kHcy77AQoJBWQk4DRoVTJcn0UaYR1pmDJevruR+/1SNUwV4ijhJ
 HtJDrfq/zvsPiAcQs/isd7WEp2IZmwJestCH2HXIDf+LCwSGTlzPuKSTK
 qrW34jk/mf+P7lMoEwWSSTJ2nGRgTotudUjjuKJcJ2yuCCtMz0MeaOwLA
 uj+o8oyXqZVZkRSH6UOzOEJ92bD0MAH5WrE23CI90Pr/0aiT34P1lZYB4
 UPA+OvxZS6+ybhCLInEg8PfN7LaWnYsSP07TPvdyT5lDp/5IpvHJ7Fg3+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="246928610"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="246928610"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:54:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="564250321"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:54:33 -0800
Date: Fri, 28 Jan 2022 08:54:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
Message-ID: <YfQfxw++pYfC/5Hm@mdroper-desk1.amr.corp.intel.com>
References: <20220127194855.3963296-1-matthew.d.roper@intel.com>
 <bf725668ee794a309d6c6ebbd88c9388@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf725668ee794a309d6c6ebbd88c9388@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015227452
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 28, 2022 at 12:32:14AM -0800, Dhanavanthri, Swathi wrote:
> Reviewed-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

Applied to drm-intel-gt-next.  Thanks for the review.

I'll follow up with a patch to make that entire function use the local
'i915' variable rather than 'engine->i915' consistently throughout that
function, as suggested by Tvrtko.


Matt

> 
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt Roper
> Sent: Thursday, January 27, 2022 11:49 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015227452
> 
> Note that the bspec doesn't list the bit we're programming here (bit 11) as being present on DG2, but we've confirmed with the hardware team that this is a documentation mistake and the bit does indeed exist on all Xe_HP-based platforms.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 748b2daf043f..065dc1c2bb71 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2045,6 +2045,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)  {
>  	struct drm_i915_private *i915 = engine->i915;
>  
> +	if (IS_DG2(engine->i915)) {
> +		/* Wa_14015227452:dg2 */
> +		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
> +	}
> +
>  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
>  		/* Wa_14013392000:dg2_g11 */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE); diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index 2e4dd9db63fe..38c23dd36300 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8927,6 +8927,7 @@ enum {
>  
>  #define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
>  #define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
> +#define   XEHP_DIS_BBL_SYSPIPE				REG_BIT(11)
>  #define   GEN12_DISABLE_TDL_PUSH			REG_BIT(9)
>  #define   GEN11_DIS_PICK_2ND_EU				REG_BIT(7)
>  #define   GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX	REG_BIT(4)
> --
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
