Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B385AA50367
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 16:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F8210E7BF;
	Wed,  5 Mar 2025 15:26:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSohtU2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C04A10E715
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 15:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741188396; x=1772724396;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jLmIsUaK31FV4i/Xs2GmOjF6uhzdtHra7C57WrLNSgw=;
 b=eSohtU2GPPsHjZGza14WaV5L2swzyEusklAx5fuPtMKjjrU/D/QOx1dH
 2rggqeCChMC/e8CjHs45wbGXjtp5wMoKrEz4vTHBgKnYXMDYkzIPUKvKX
 vRzNU+Dn/pLHFU/OjZWc/TC7ktIQwq4Jtj7sStlaEyKY4wxOoiIqynqKy
 c85PKs+xADFaZgJZGMRGYa66sn4pdQHKSeZ2c1NLYLivUUqT0rwk9WtFp
 sov8QVKTE/WghrTOUXdHKAL00xjZy0iDN3L9SwC7Fm5eDF2K1sKp2EbQl
 e0M6ypk1hjpZmm0v9LEBwOyS+ynHfdtsRkeXN0zZK3AmDBdOzmQ26Xp4/ Q==;
X-CSE-ConnectionGUID: GNbMpiu8RHi3Gz1/g3O+Dw==
X-CSE-MsgGUID: 9pTj6n0xQI6jtD0huAArHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59567451"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="59567451"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 07:26:36 -0800
X-CSE-ConnectionGUID: FWoF5QXhRmWX4HN2Wbnzlw==
X-CSE-MsgGUID: Lyc1kxYVSlOiEei3E6nvmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123928059"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 05 Mar 2025 07:26:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Mar 2025 17:26:32 +0200
Date: Wed, 5 Mar 2025 17:26:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 vidya.srinivas@intel.com, matthew.d.roper@intel.com
Subject: Re: [RFC PATCH] Revert "drm/i915: Disable compression tricks on JSL"
Message-ID: <Z8htKL3L5ICwXzNb@intel.com>
References: <z6xndjwwwnck67qcv2355v5qejq64qldziqg7saint3eqe6fo2@6sx7xyh5juvc>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <z6xndjwwwnck67qcv2355v5qejq64qldziqg7saint3eqe6fo2@6sx7xyh5juvc>
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

On Wed, Mar 05, 2025 at 02:49:46PM +0000, Sebastian Brzezinka wrote:
> This reverts commit 0ddae025ab6cefa9aba757da3cd1d27908d70b0e.
> 
> According to bspec 14181, CACHE_MODE_0 is a register that's under userspace
> control, and DISABLE_REPACKING_FOR_COMPRESSION workaround should be already
> in all recent Mesa releases. So, there is no need to include it in kernel.

igt doesn't have it.

> 
> Also, this workaround·sporadically fails to load:
> ```
> ERROR GT0: engine workaround lost on application! (reg[7000]=0x0,
> relevant bits were 0x0 vs expected 0x8000)
> ```

If it somehow fails to load from the kernel why would it
work from userspace?

Hmm, apparently CACHE_MODE_0 needs the mcr steering stuff.
Does that fix the verification fail?

> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 -
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 ---------
>  2 files changed, 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 7421ed18d8d1..52ddfa9f3ad3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -440,7 +440,6 @@
>  #define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
>  
>  #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
> -#define   DISABLE_REPACKING_FOR_COMPRESSION	REG_BIT(15) /* jsl+ */
>  #define   RC_OP_FLUSH_ENABLE			(1 << 0)
>  #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
>  #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 116683ebe074..51839f270d57 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2306,15 +2306,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>  	}
>  
> -	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
> -		/*
> -		 * "Disable Repacking for Compression (masked R/W access)
> -		 *  before rendering compressed surfaces for display."
> -		 */
> -		wa_masked_en(wal, CACHE_MODE_0_GEN7,
> -			     DISABLE_REPACKING_FOR_COMPRESSION);
> -	}
> -
>  	if (GRAPHICS_VER(i915) == 11) {
>  		/* This is not an Wa. Enable for better image quality */
>  		wa_masked_en(wal,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
