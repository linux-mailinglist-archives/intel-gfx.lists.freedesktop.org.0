Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E892691B23E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 00:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A2910EB81;
	Thu, 27 Jun 2024 22:33:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GVFEZYeO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D400410EB81
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2024 22:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719527599; x=1751063599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RRF7u89Ed4TlRcSYiRujseyjzTjlDutHXRwe3C6TGoI=;
 b=GVFEZYeOMNAyJDJ6jeCcpr5znhLXwivE8TT6RNwuOKpneuEIow9Ys+nq
 xqrFw08H0mvnVKCflLcrSqwEgmRisEasmLoVwGpo/2qRmiw2o7bqdDac7
 Y7vOdRdcHuYjzTW2HY6yfUDaxvlUbWwMf1vs2k9XG3iUEwNam3/5AS++r
 83vwStEC9WE6is5YF5fTj2FB8OlB1WmeHKqGSOR2PO+oZ++qLjpppBw9h
 G5OBIM7Hu4GfoI7hI3XHNBnoNnGW7gmz1HxFWBVWRN4YQTQg6MBGZJhvU
 q8hFdGkyc2bI9rkgtUomXwaTfOXpln8tdT9rkhfQjQP6C9sYNsh/txhle g==;
X-CSE-ConnectionGUID: PT/hS716RYi0fdjGhLhrUg==
X-CSE-MsgGUID: /nxb59cWQ/Cr8ByQbaDYPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="39208163"
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; d="scan'208";a="39208163"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 15:33:18 -0700
X-CSE-ConnectionGUID: ufcynymCRkC9c6Kq8KS9lw==
X-CSE-MsgGUID: j+MlIsAxTTuQ8SQyaIu3wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; d="scan'208";a="49720124"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.203])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 15:33:17 -0700
Date: Fri, 28 Jun 2024 00:33:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915: Disable compression tricks on JSL
Message-ID: <Zn3oqMm-oAIS55ot@ashyti-mobl2.lan>
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
 <20240624150538.24102-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240624150538.24102-2-ville.syrjala@linux.intel.com>
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

Hi Ville,

On Mon, Jun 24, 2024 at 06:05:34PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Bspec asks us to disable some compression trick on JSL. While the
> bspec description is pretty vague it looks like this is some extra
> trick for 10bpc+ CCS which presumably the ICL derived display engine
> doesn't support.
> 
> Note that we aren't currently exposing 10bpc CCS scanout support,
> but once that gets added this presumably becomes an issue.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index e42b3a5d4e63..af53c40e6c21 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -432,6 +432,7 @@
>  #define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
>  
>  #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
> +#define   DISABLE_REPACKING_FOR_COMPRESSION	REG_BIT(15) /* jsl+ */

I know that REG_BIT() is the correct one, but for conformity I
would still use (1 << 15), otherwise we would have a mess of
styles.

Besides, you are breaking the order here.

>  #define   RC_OP_FLUSH_ENABLE			(1 << 0)
>  #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
>  #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..a424b442493f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2286,6 +2286,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>  	}
>  
> +	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
> +		/*
> +		 * "Disable Repacking for Compression (masked R/W access)
> +		 *  before rendering compressed surfaces for display."
> +		 */
> +		wa_masked_en(wal, CACHE_MODE_0_GEN7,
> +			     DISABLE_REPACKING_FOR_COMPRESSION);

It is vague, indeed, but the description says that repacking
provides a boost in performance and "improvement in Lossless
Compression Algo" (whatever that means, I'm sailing in unknown
waters here :-) )

How did you get here?

Andi

> +	}
> +
>  	if (GRAPHICS_VER(i915) == 11) {
>  		/* This is not an Wa. Enable for better image quality */
>  		wa_masked_en(wal,
> -- 
> 2.44.2
