Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B1112ADD5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 19:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DCA89C25;
	Thu, 26 Dec 2019 18:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4368A89C1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 18:10:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 10:10:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,360,1571727600"; d="scan'208";a="392405901"
Received: from aelgham-mobl1.ger.corp.intel.com (HELO [10.252.49.252])
 ([10.252.49.252])
 by orsmga005.jf.intel.com with ESMTP; 26 Dec 2019 10:10:22 -0800
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191226174636.244584-1-matthew.d.roper@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <5e4b8127-61a6-4f3d-1b85-8c81b96ac543@intel.com>
Date: Thu, 26 Dec 2019 20:10:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191226174636.244584-1-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_1407352427:icl,ehl
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 26/12/2019 19:46, Matt Roper wrote:
> The workaround database now indicates we need to disable psdunit clock
> gating as well.
>
> Bspec: 32354
> Bspec: 33450
> Bspec: 33451
> Suggested-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


I have the same question about applying this to stable kernels with ICL 
support :)


-Lionel


> ---
>   drivers/gpu/drm/i915/i915_reg.h | 3 +++
>   drivers/gpu/drm/i915/intel_pm.c | 4 ++++
>   2 files changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index bbfedeb00b7f..b98734378c9a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4179,6 +4179,9 @@ enum {
>   #define UNSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9434)
>   #define  VFUNIT_CLKGATE_DIS		(1 << 20)
>   
> +#define UNSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x94e4)
> +#define   PSDUNIT_CLKGATE_DIS		REG_BIT(5)
> +
>   #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
>   #define   CGPSF_CLKGATE_DIS		(1 << 3)
>   
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 31ec82337e4f..8bc8f0836368 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6590,6 +6590,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>   	/* WaEnable32PlaneMode:icl */
>   	I915_WRITE(GEN9_CSFE_CHICKEN1_RCS,
>   		   _MASKED_BIT_ENABLE(GEN11_ENABLE_32_PLANE_MODE));
> +
> +	/* Wa_1407352427:icl,ehl */
> +	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +			 0, PSDUNIT_CLKGATE_DIS);
>   }
>   
>   static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
