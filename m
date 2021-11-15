Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0263A45116D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 20:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EC86E15F;
	Mon, 15 Nov 2021 19:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78DE6EAA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 19:05:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="220398418"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="220398418"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 11:05:21 -0800
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="535609549"
Received: from rakeshr1-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.37.176])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 11:05:20 -0800
Date: Mon, 15 Nov 2021 14:05:19 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YZKvb9fzFFXvav0p@intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211112193813.8224-10-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Clean up FPGA_DBG/CLAIM_ER
 bits
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

On Fri, Nov 12, 2021 at 09:38:13PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Use REG_BIT() & co. for FPGA_DBG/CLAIM_ER bits.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0ceb88828d93..a4d6bd380012 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2821,12 +2821,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define GEN12_AUX_ERR_DBG		_MMIO(0x43f4)
>  
>  #define FPGA_DBG		_MMIO(0x42300)
> -#define   FPGA_DBG_RM_NOCLAIM	(1 << 31)
> +#define   FPGA_DBG_RM_NOCLAIM	REG_BIT(31)
>  
>  #define CLAIM_ER		_MMIO(VLV_DISPLAY_BASE + 0x2028)
> -#define   CLAIM_ER_CLR		(1 << 31)
> -#define   CLAIM_ER_OVERFLOW	(1 << 16)
> -#define   CLAIM_ER_CTR_MASK	0xffff
> +#define   CLAIM_ER_CLR		REG_BIT(31)
> +#define   CLAIM_ER_OVERFLOW	REG_BIT(16)
> +#define   CLAIM_ER_CTR_MASK	REG_GENMASK(15, 0)
>  
>  #define DERRMR		_MMIO(0x44050)
>  /* Note that HBLANK events are reserved on bdw+ */
> -- 
> 2.32.0
> 
