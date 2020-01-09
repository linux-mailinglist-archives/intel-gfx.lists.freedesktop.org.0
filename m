Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C08ED136317
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27256E974;
	Thu,  9 Jan 2020 22:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185A66E974
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 22:11:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 14:11:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="224003823"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with ESMTP; 09 Jan 2020 14:11:49 -0800
Date: Thu, 9 Jan 2020 14:11:49 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20200109221149.GJ2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200109220226.10661-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109220226.10661-1-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1409825376 to tgl
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

On Thu, Jan 09, 2020 at 02:02:26PM -0800, Radhakrishna Sripada wrote:
> Workaround database indicates we should disable VRH clockgating
> in pre-production hardware.

Maybe also add a

    Bspec: 52890
    Bspec: 49424

for reference?

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 3 +++
>  drivers/gpu/drm/i915/intel_pm.c | 5 +++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 6cc55c103f67..5215df17e7bd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4124,6 +4124,9 @@ enum {
>  #define   PWM2_GATING_DIS		(1 << 14)
>  #define   PWM1_GATING_DIS		(1 << 13)
>  
> +#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
> +#define   TGL_VRH_GATING_DIS		(1 << 31)

For new registers (or registers which are receiving noticeable updates),
I think we're trying to slowly transition over to REG_BIT(31) notation.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +
>  #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
>  #define   BXT_GMBUS_GATING_DIS		(1 << 14)
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 148ac455dfa7..0d71fc19d0ee 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6630,6 +6630,11 @@ static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  	I915_WRITE(POWERGATE_ENABLE,
>  		   I915_READ(POWERGATE_ENABLE) | vd_pg_enable);
> +
> +	/* Wa_1409825376:tgl (pre-prod)*/
> +	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> +		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
> +			   TGL_VRH_GATING_DIS);
>  }
>  
>  static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> -- 
> 2.20.1
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
