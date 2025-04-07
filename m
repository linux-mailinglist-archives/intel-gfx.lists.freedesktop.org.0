Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8DEA7E683
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 18:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C7A10E513;
	Mon,  7 Apr 2025 16:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fgZqdBq6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C2C10E511;
 Mon,  7 Apr 2025 16:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744043462; x=1775579462;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xpv0axtL17bteMLxZfmq+ZDNeNruWEZlqJC4tChqyJk=;
 b=fgZqdBq6u+ZQERdn+CFRcDveu43HWs/+I5oUrMWrSo9JgqQsuNDLyoNe
 mUmK6dH9uqhXxZ2AXTKEFf8NRV0WGpQNQZBGxIathBBAvZhxNG/xJQ1ZU
 tCZlCHEzo48U1ZfSLtjyRVDtrzoxXRCOMow+Rr0Qy1b32/3mB/BS0UM+S
 RezLLARAS07AEbyhPZGo5CMwLsKdt4xQZ5WKfnTYx3wa1SmlZciMJVlFa
 +fB+yr3dSCQnlywMEedKumKZ4UroMQr4HGMtHX6LZn76n6LcDln5pOKbo
 3ZP94Ko36y7oj28ZOw9khLAVxWVsKb4E1JpYXUpsKWgQVE/VMV8dwrsdw w==;
X-CSE-ConnectionGUID: rYblgylPQD26SR0A+Hdiwg==
X-CSE-MsgGUID: +azKvdZFRzCqryIKNROXVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45454585"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45454585"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 09:31:01 -0700
X-CSE-ConnectionGUID: Zsts0Z1MTm6LwE0DKnQIUA==
X-CSE-MsgGUID: kWBLEkJ3TcytrUD6uc1J7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="133208836"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Apr 2025 09:30:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Apr 2025 19:30:57 +0300
Date: Mon, 7 Apr 2025 19:30:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 06/11] drm/i915/dsb: Add support for GOSUB interrupt
Message-ID: <Z_P9wdRcMKAb1sDs@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-7-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250407142359.1398410-7-chaitanya.kumar.borah@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Apr 07, 2025 at 07:53:54PM +0530, Chaitanya Kumar Borah wrote:
> DSB raises an interrupt when there is a nested GOSUB command or
> illegal Head/Tail. Add support to log such errors in the DSB
> interrupt handler.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c      | 5 ++++-
>  drivers/gpu/drm/i915/display/intel_dsb_regs.h | 2 ++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index bffa02a0442c..da58f1c821c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -787,7 +787,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
>  
>  	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
>  			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
> -			  dsb_error_int_en(display) | DSB_PROG_INT_EN);
> +			  dsb_error_int_en(display) | DSB_PROG_INT_EN | DSB_GOSUB_INT_EN);

You need to add that to dsb_error_int_{en,status}(), with the
appropriate platform checks to avoid the interrupt handler getting
confused on platforms that don't have GOSUB.

>  
>  	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
>  			  intel_dsb_head(dsb));
> @@ -980,4 +980,7 @@ void intel_dsb_irq_handler(struct intel_display *display,
>  	if (errors & DSB_POLL_ERR_INT_STATUS)
>  		drm_err(display->drm, "[CRTC:%d:%s] DSB %d poll error\n",
>  			crtc->base.base.id, crtc->base.name, dsb_id);
> +	if (errors & DSB_GOSUB_INT_STATUS)
> +		drm_err(display->drm, "[CRTC:%d:%s] DSB %d gosub int error\n",

Maybe something like:
"... GOSUB programming error"

> +			crtc->base.base.id, crtc->base.name, dsb_id);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
> index cb6e0e5624a6..230104f36145 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
> @@ -51,11 +51,13 @@
>  #define   DSB_RESET_SM_STATE_MASK	REG_GENMASK(5, 4)
>  #define   DSB_RUN_SM_STATE_MASK		REG_GENMASK(2, 0)
>  #define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
> +#define   DSB_GOSUB_INT_EN		REG_BIT(21) /* ptl+ */
>  #define   DSB_ATS_FAULT_INT_EN		REG_BIT(20) /* mtl+ */
>  #define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
>  #define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
>  #define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
>  #define   DSB_PROG_INT_EN		REG_BIT(16)
> +#define   DSB_GOSUB_INT_STATUS		REG_BIT(5) /* ptl+ */
>  #define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4) /* mtl+ */
>  #define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
>  #define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
