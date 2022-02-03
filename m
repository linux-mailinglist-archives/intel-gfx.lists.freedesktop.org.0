Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 583014A8C50
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 20:15:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DE910EA40;
	Thu,  3 Feb 2022 19:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6B110E799
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 19:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643915739; x=1675451739;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UzZSwtiEYEB7Jfm6ci2IpYwhyyR1xjmK61p/KQNPCzA=;
 b=mwCzTN0KjG4HAz6K8V/9RKShSj3RbPxws4pYQWZsUbMhtPBTW4WZ3Lab
 VZxyETMQIdB+Q2iNQctW9KyoSz/o08RSR7To1uNn13DbybChKG/l7rvLv
 IBd3+P8XPwd0QyzDnwQnWk2NPOBwp5EehMXqlHYUCUiqTEF7Y85WREQCz
 m81ZVThnyfU3B9z4Cqo4W97l+2LpJqLOW8N2ak4XioZeq+SS7Y5LLmXpL
 bkweGoTM2xdi3DCdSTnzkZeol/fb00lxUzSKMk+Dqh3IXU5fwATDedKkL
 kjGj624lxeOjb54AOOtaNucwj56Y9B9d5vdCHCA3Bc3npkCjCzUssBBxh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248445963"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248445963"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 11:15:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="524049711"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 11:15:38 -0800
Date: Thu, 3 Feb 2022 11:09:39 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220203190939.GA4485@jons-linux-dev-box>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-10-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126104822.3653079-10-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 09/10] drm/i915/guc: Follow legacy
 register names
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 02:48:21AM -0800, Alan Previn wrote:
> Before we print the GuC provided register dumps, modify the
> register tables to use string names as per the legacy error
> capture execlist codes.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

I'd just squash this to the patches early in the series where these are
initially defined.

Matt 

> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 70 +++++++++----------
>  1 file changed, 35 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 2f5dc413dddc..506496058daf 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -22,7 +22,7 @@
>   *       from the engine-mmio-base
>   */
>  #define COMMON_BASE_GLOBAL() \
> -	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}
> +	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}
>  
>  #define COMMON_GEN9BASE_GLOBAL() \
>  	{GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0"}, \
> @@ -34,43 +34,43 @@
>  #define COMMON_GEN12BASE_GLOBAL() \
>  	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
>  	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
> -	{GEN12_AUX_ERR_DBG,        0,      0, "GEN12_AUX_ERR_DBG"}, \
> -	{GEN12_GAM_DONE,           0,      0, "GEN12_GAM_DONE"}, \
> -	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
> +	{GEN12_AUX_ERR_DBG,        0,      0, "AUX_ERR_DBG"}, \
> +	{GEN12_GAM_DONE,           0,      0, "GAM_DONE"}, \
> +	{GEN12_RING_FAULT_REG,     0,      0, "FAULT_REG"}
>  
>  #define COMMON_BASE_ENGINE_INSTANCE() \
> -	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
> -	{RING_ESR(0),              0,      0, "RING_ESR"}, \
> -	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LOW32"}, \
> -	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UP32"}, \
> -	{RING_IPEIR(0),            0,      0, "RING_IPEIR"}, \
> -	{RING_IPEHR(0),            0,      0, "RING_IPEHR"}, \
> -	{RING_INSTPS(0),           0,      0, "RING_INSTPS"}, \
> +	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
> +	{RING_ESR(0),              0,      0, "ESR"}, \
> +	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
> +	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UDW"}, \
> +	{RING_IPEIR(0),            0,      0, "IPEIR"}, \
> +	{RING_IPEHR(0),            0,      0, "IPEHR"}, \
> +	{RING_INSTPS(0),           0,      0, "INSTPS"}, \
>  	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
>  	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
> -	{RING_BBSTATE(0),          0,      0, "RING_BBSTATE"}, \
> +	{RING_BBSTATE(0),          0,      0, "BB_STATE"}, \
>  	{CCID(0),                  0,      0, "CCID"}, \
> -	{RING_ACTHD(0),            0,      0, "RING_ACTHD_LOW32"}, \
> -	{RING_ACTHD_UDW(0),        0,      0, "RING_ACTHD_UP32"}, \
> -	{RING_INSTPM(0),           0,      0, "RING_INSTPM"}, \
> +	{RING_ACTHD(0),            0,      0, "ACTHD_LDW"}, \
> +	{RING_ACTHD_UDW(0),        0,      0, "ACTHD_UDW"}, \
> +	{RING_INSTPM(0),           0,      0, "INSTPM"}, \
> +	{RING_INSTDONE(0),         0,      0, "INSTDONE"}, \
>  	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
> -	{RING_START(0),            0,      0, "RING_START"}, \
> -	{RING_HEAD(0),             0,      0, "RING_HEAD"}, \
> -	{RING_TAIL(0),             0,      0, "RING_TAIL"}, \
> -	{RING_CTL(0),              0,      0, "RING_CTL"}, \
> -	{RING_MI_MODE(0),          0,      0, "RING_MI_MODE"}, \
> +	{RING_START(0),            0,      0, "START"}, \
> +	{RING_HEAD(0),             0,      0, "HEAD"}, \
> +	{RING_TAIL(0),             0,      0, "TAIL"}, \
> +	{RING_CTL(0),              0,      0, "CTL"}, \
> +	{RING_MI_MODE(0),          0,      0, "MODE"}, \
>  	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
> -	{RING_INSTDONE(0),         0,      0, "RING_INSTDONE"}, \
> -	{RING_HWS_PGA(0),          0,      0, "RING_HWS_PGA"}, \
> -	{RING_MODE_GEN7(0),        0,      0, "RING_MODE_GEN7"}, \
> -	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "GEN8_RING_PDP0_LDW"}, \
> -	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "GEN8_RING_PDP0_UDW"}, \
> -	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "GEN8_RING_PDP1_LDW"}, \
> -	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "GEN8_RING_PDP1_UDW"}, \
> -	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "GEN8_RING_PDP2_LDW"}, \
> -	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "GEN8_RING_PDP2_UDW"}, \
> -	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "GEN8_RING_PDP3_LDW"}, \
> -	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "GEN8_RING_PDP3_UDW"}
> +	{RING_HWS_PGA(0),          0,      0, "HWS"}, \
> +	{RING_MODE_GEN7(0),        0,      0, "GFX_MODE"}, \
> +	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "PDP0_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "PDP0_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "PDP1_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "PDP1_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "PDP2_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "PDP2_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "PDP3_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "PDP3_UDW"}
>  
>  #define COMMON_BASE_HAS_EU() \
>  	{EIR,                      0,      0, "EIR"}
> @@ -83,10 +83,10 @@
>  	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
>  
>  #define COMMON_GEN12BASE_VEC() \
> -	{GEN12_SFC_DONE(0),        0,      0, "GEN12_SFC_DONE0"}, \
> -	{GEN12_SFC_DONE(1),        0,      0, "GEN12_SFC_DONE1"}, \
> -	{GEN12_SFC_DONE(2),        0,      0, "GEN12_SFC_DONE2"}, \
> -	{GEN12_SFC_DONE(3),        0,      0, "GEN12_SFC_DONE3"}
> +	{GEN12_SFC_DONE(0),        0,      0, "SFC_DONE[0]"}, \
> +	{GEN12_SFC_DONE(1),        0,      0, "SFC_DONE[1]"}, \
> +	{GEN12_SFC_DONE(2),        0,      0, "SFC_DONE[2]"}, \
> +	{GEN12_SFC_DONE(3),        0,      0, "SFC_DONE[3]"}
>  
>  /* XE_LPD - Global */
>  static struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
> -- 
> 2.25.1
> 
